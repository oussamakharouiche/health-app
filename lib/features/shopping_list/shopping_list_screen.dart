import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;
import 'package:intl/intl.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';

/// View and check off shopping lists. Manage pantry inventory.
class ShoppingListScreen extends ConsumerStatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  ConsumerState<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends ConsumerState<ShoppingListScreen> {
  String? _selectedListId;

  @override
  Widget build(BuildContext context) {
    final listsAsync = ref.watch(_shoppingListsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
        actions: [
          IconButton(
            icon: const Icon(Icons.kitchen),
            tooltip: 'Pantry',
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PantryScreen())),
          ),
        ],
      ),
      body: listsAsync.when(
        data: (lists) {
          if (lists.isEmpty) {
            return const Center(child: Text('No shopping lists yet.\nGenerate one from the Meal Planner.'));
          }
          final active = _selectedListId != null
              ? lists.where((l) => l.id == _selectedListId).firstOrNull
              : lists.first;
          if (active == null) return const Center(child: Text('No list selected'));
          _selectedListId ??= active.id;

          return Column(
            children: [
              // List selector
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: lists.map((l) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(l.name),
                      selected: _selectedListId == l.id,
                      onSelected: (_) => setState(() => _selectedListId = l.id),
                    ),
                  )).toList(),
                ),
              ),
              // Items grouped by category
              Expanded(
                child: ref.watch(_shoppingItemsProvider(_selectedListId!)).when(
                  data: (items) => _buildGroupedList(items),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (e, _) => Center(child: Text('Error: $e')),
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Widget _buildGroupedList(List<ShoppingItem> items) {
    if (items.isEmpty) return const Center(child: Text('List is empty'));
    final grouped = <String, List<ShoppingItem>>{};
    for (final item in items) {
      final cat = item.category ?? 'Other';
      grouped.putIfAbsent(cat, () => []).add(item);
    }

    return ListView(
      children: grouped.entries.map((entry) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
              child: Text(entry.key, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            ),
            ...entry.value.map((item) => CheckboxListTile(
              title: Text(item.name, style: TextStyle(
                decoration: item.isChecked ? TextDecoration.lineThrough : null,
                color: item.isChecked ? Colors.grey : null,
              )),
              subtitle: Text(item.amount ?? ''),
              value: item.isChecked,
              onChanged: (v) async {
                final db = ref.read(databaseProvider);
                final checked = v ?? false;
                await (db.update(db.shoppingItems)..where((t) => t.id.equals(item.id)))
                    .write(ShoppingItemsCompanion(isChecked: drift.Value(checked)));
                // Auto-add to pantry when checked
                if (checked && item.ingredientId != null) {
                  // Extract grams from amount string like "400g"
                  double? grams;
                  final amount = item.amount ?? '';
                  final match = RegExp(r'(\d+)g').firstMatch(amount);
                  if (match != null) grams = double.tryParse(match.group(1)!);

                  final existing = await (db.select(db.pantryItems)
                        ..where((t) => t.ingredientId.equals(item.ingredientId!)))
                      .getSingleOrNull();
                  if (existing != null) {
                    // Update quantity
                    final newQty = (existing.quantityGramsEst ?? 0) + (grams ?? 100);
                    await (db.update(db.pantryItems)..where((t) => t.id.equals(existing.id)))
                        .write(PantryItemsCompanion(
                          quantityGramsEst: drift.Value(newQty),
                          quantityText: drift.Value('${newQty.round()}g'),
                          updatedAt: drift.Value(DateTime.now()),
                        ));
                  } else {
                    // Insert new pantry item
                    final allIngredients = await db.select(db.ingredients).get();
                    final ing = allIngredients.where((i) => i.id == item.ingredientId!).firstOrNull;
                    await db.into(db.pantryItems).insert(
                      PantryItemsCompanion(
                        id: drift.Value('pantry-${DateTime.now().microsecondsSinceEpoch}'),
                        ingredientId: drift.Value(item.ingredientId),
                        name: drift.Value(ing?.name ?? item.name),
                        quantityGramsEst: drift.Value(grams ?? 100),
                        quantityText: drift.Value('${(grams ?? 100).round()}g'),
                        category: drift.Value(item.category),
                        purchasedAt: drift.Value(DateTime.now()),
                        updatedAt: drift.Value(DateTime.now()),
                      ),
                      mode: drift.InsertMode.insertOrReplace,
                    );
                  }
                }
                ref.invalidate(_shoppingItemsProvider(_selectedListId!));
              },
            )),
          ],
        );
      }).toList(),
    );
  }
}

/// Simple pantry CRUD.
class PantryScreen extends ConsumerStatefulWidget {
  const PantryScreen({super.key});
  @override
  ConsumerState<PantryScreen> createState() => _PantryScreenState();
}

class _PantryScreenState extends ConsumerState<PantryScreen> {
  @override
  Widget build(BuildContext context) {
    final itemsAsync = ref.watch(_pantryProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Pantry')),
      body: itemsAsync.when(
        data: (items) {
          if (items.isEmpty) return const Center(child: Text('Pantry is empty.\nAdd staples you always have at home.'));
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (_, i) {
              final item = items[i];
              final daysAgo = item.purchasedAt != null
                  ? DateTime.now().difference(item.purchasedAt!).inDays
                  : null;
              return ListTile(
                title: Text(item.name),
                subtitle: Text([
                  item.quantityText ?? '${item.quantityGramsEst?.round() ?? 0}g',
                  if (daysAgo != null) 'bought $daysAgo days ago',
                ].join(' · ')),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  if (item.isStaple) const Icon(Icons.star, size: 16, color: Colors.amber),
                  IconButton(icon: const Icon(Icons.delete, size: 18), onPressed: () async {
                    final db = ref.read(databaseProvider);
                    await (db.delete(db.pantryItems)..where((t) => t.id.equals(item.id))).go();
                    ref.invalidate(_pantryProvider);
                  }),
                ]),
                onTap: () => _editItem(context, item),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addItem(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _addItem(BuildContext context) async {
    final nameCtrl = TextEditingController();
    final qtyCtrl = TextEditingController();
    DateTime purchaseDate = DateTime.now();

    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDlgState) => AlertDialog(
          title: const Text('Add pantry item'),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Name', border: OutlineInputBorder())),
            const SizedBox(height: 8),
            TextField(controller: qtyCtrl, decoration: const InputDecoration(labelText: 'Quantity (e.g. 500g)', border: OutlineInputBorder())),
            const SizedBox(height: 8),
            ListTile(
              dense: true,
              leading: const Icon(Icons.calendar_today, size: 20),
              title: Text('Purchased: ${DateFormat('MMM d').format(purchaseDate)}'),
              onTap: () async {
                final picked = await showDatePicker(context: ctx, initialDate: purchaseDate, firstDate: DateTime(2020), lastDate: DateTime.now());
                if (picked != null) setDlgState(() => purchaseDate = picked);
              },
            ),
          ]),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
            FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Add')),
          ],
        ),
      ),
    );
    if (result == true && nameCtrl.text.isNotEmpty) {
      final db = ref.read(databaseProvider);
      await db.into(db.pantryItems).insert(
        PantryItemsCompanion(
          id: drift.Value(DateTime.now().microsecondsSinceEpoch.toString()),
          name: drift.Value(nameCtrl.text.trim()),
          quantityText: drift.Value(qtyCtrl.text.trim().isEmpty ? null : qtyCtrl.text.trim()),
          isStaple: const drift.Value(false),
          purchasedAt: drift.Value(purchaseDate),
          updatedAt: drift.Value(DateTime.now()),
        ),
        mode: drift.InsertMode.insertOrReplace,
      );
      ref.invalidate(_pantryProvider);
    }
    nameCtrl.dispose();
    qtyCtrl.dispose();
  }

  Future<void> _editItem(BuildContext context, PantryItem item) async {
    final qtyCtrl = TextEditingController(text: item.quantityText ?? '');
    await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Edit ${item.name}'),
        content: TextField(controller: qtyCtrl, decoration: const InputDecoration(labelText: 'Quantity', border: OutlineInputBorder())),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          FilledButton(onPressed: () async {
            final db = ref.read(databaseProvider);
            await (db.update(db.pantryItems)..where((t) => t.id.equals(item.id))).write(
              PantryItemsCompanion(quantityText: drift.Value(qtyCtrl.text.trim()), updatedAt: drift.Value(DateTime.now())),
            );
            ref.invalidate(_pantryProvider);
            if (mounted) Navigator.pop(ctx);
          }, child: const Text('Save')),
        ],
      ),
    );
  }
}

final _shoppingListsProvider = FutureProvider<List<ShoppingList>>((ref) async {
  final db = ref.watch(databaseProvider);
  return db.select(db.shoppingLists).get();
});

final _shoppingItemsProvider = FutureProvider.autoDispose.family<List<ShoppingItem>, String>((ref, listId) async {
  final db = ref.watch(databaseProvider);
  final query = db.select(db.shoppingItems)..where((t) => t.listId.equals(listId));
  final items = await query.get();
  items.sort((a, b) => (a.sortOrder ?? 0).compareTo(b.sortOrder ?? 0));
  return items;
});

final _pantryProvider = FutureProvider<List<PantryItem>>((ref) async {
  final db = ref.watch(databaseProvider);
  return db.select(db.pantryItems).get();
});
