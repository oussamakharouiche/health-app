import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';

/// Create or edit a recipe with ingredient linking.
class RecipeEditScreen extends ConsumerStatefulWidget {
  final Recipe? existing; // null = create new
  const RecipeEditScreen({super.key, this.existing});

  @override
  ConsumerState<RecipeEditScreen> createState() => _RecipeEditScreenState();
}

class _RecipeEditScreenState extends ConsumerState<RecipeEditScreen> {
  final _nameCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  final _instructionsCtrl = TextEditingController();
  final _prepCtrl = TextEditingController();
  final _cookCtrl = TextEditingController();
  final _servingsCtrl = TextEditingController(text: '2');
  final _tags = <String>{};
  final _ingredients = <_RecipeIngredientEntry>[];

  bool get _isEditing => widget.existing != null;

  static const _allTags = [
    'breakfast', 'lunch', 'dinner', 'snack',
    'high-protein', 'low-fodmap', 'quick-breakfast',
    'meal-prep', 'microwave-friendly', 'vegetarian', 'batch-cook',
  ];

  @override
  void initState() {
    super.initState();
    if (widget.existing != null) {
      final r = widget.existing!;
      _nameCtrl.text = r.name;
      _descCtrl.text = r.description ?? '';
      _instructionsCtrl.text = r.instructions ?? '';
      _prepCtrl.text = r.prepTimeMin?.toString() ?? '';
      _cookCtrl.text = r.cookTimeMin?.toString() ?? '';
      _servingsCtrl.text = r.defaultServings?.round().toString() ?? '2';
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose(); _descCtrl.dispose(); _instructionsCtrl.dispose();
    _prepCtrl.dispose(); _cookCtrl.dispose(); _servingsCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_isEditing ? 'Edit Recipe' : 'Create Recipe')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(controller: _nameCtrl, decoration: const InputDecoration(labelText: 'Recipe name', border: OutlineInputBorder())),
          const SizedBox(height: 12),
          TextField(controller: _descCtrl, decoration: const InputDecoration(labelText: 'Description (optional)', border: OutlineInputBorder()), maxLines: 2),
          const SizedBox(height: 12),
          Row(children: [
            Expanded(child: TextField(controller: _prepCtrl, decoration: const InputDecoration(labelText: 'Prep (min)', border: OutlineInputBorder()), keyboardType: TextInputType.number)),
            const SizedBox(width: 12),
            Expanded(child: TextField(controller: _cookCtrl, decoration: const InputDecoration(labelText: 'Cook (min)', border: OutlineInputBorder()), keyboardType: TextInputType.number)),
            const SizedBox(width: 12),
            Expanded(child: TextField(controller: _servingsCtrl, decoration: const InputDecoration(labelText: 'Servings', border: OutlineInputBorder()), keyboardType: TextInputType.number)),
          ]),
          const SizedBox(height: 16),
          Text('Tags', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          Wrap(spacing: 6, runSpacing: 6,
            children: _allTags.map((t) => FilterChip(
              label: Text(t.replaceAll('-', ' '), style: const TextStyle(fontSize: 12)),
              selected: _tags.contains(t),
              onSelected: (v) => setState(() => v ? _tags.add(t) : _tags.remove(t)),
            )).toList(),
          ),
          const SizedBox(height: 16),
          Row(children: [
            Text('Ingredients (${_ingredients.length})', style: Theme.of(context).textTheme.titleSmall),
            const Spacer(),
            IconButton(icon: const Icon(Icons.add_circle_outline), onPressed: _addIngredient, tooltip: 'Add ingredient'),
          ]),
          ..._ingredients.map(_buildIngredientRow),
          const SizedBox(height: 16),
          TextField(controller: _instructionsCtrl, decoration: const InputDecoration(labelText: 'Instructions', border: OutlineInputBorder()), maxLines: 6),
          const SizedBox(height: 24),
          FilledButton.icon(
            icon: const Icon(Icons.save),
            label: Text(_isEditing ? 'Save Changes' : 'Create Recipe'),
            onPressed: _save,
          ),
        ],
      ),
    );
  }

  Widget _buildIngredientRow(_RecipeIngredientEntry entry) {
    return ListTile(
      dense: true,
      leading: const Icon(Icons.food_bank, size: 20),
      title: Text(entry.name),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        SizedBox(width: 50, child: Text('${entry.grams}g', style: const TextStyle(fontSize: 12))),
        IconButton(icon: const Icon(Icons.delete, size: 18), onPressed: () => setState(() => _ingredients.remove(entry))),
      ]),
    );
  }

  Future<void> _addIngredient() async {
    final db = ref.read(databaseProvider);
    final ingredients = await db.select(db.ingredients).get();
    if (!mounted) return;

    final picked = await showDialog<Ingredient>(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: const Text('Pick ingredient'),
        children: ingredients.map((i) => SimpleDialogOption(onPressed: () => Navigator.pop(ctx, i), child: Text(i.name))).toList(),
      ),
    );
    if (picked == null) return;

    final gramsCtrl = TextEditingController(text: '100');
    final grams = await showDialog<double>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Amount for ${picked.name}'),
        content: TextField(controller: gramsCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(suffixText: 'grams', border: OutlineInputBorder())),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(ctx, double.tryParse(gramsCtrl.text) ?? 100), child: const Text('Add')),
        ],
      ),
    );
    if (grams != null) {
      setState(() => _ingredients.add(_RecipeIngredientEntry(ingredientId: picked.id, name: picked.name, grams: grams)));
    }
    gramsCtrl.dispose();
  }

  Future<void> _save() async {
    final name = _nameCtrl.text.trim();
    if (name.isEmpty) return;
    final db = ref.read(databaseProvider);
    final id = _isEditing ? widget.existing!.id : 'rec-${DateTime.now().microsecondsSinceEpoch}';
    final tagsJson = '[${_tags.map((t) => '"$t"').join(',')}]';

    await db.into(db.recipes).insert(
      RecipesCompanion(
        id: drift.Value(id),
        name: drift.Value(name),
        description: drift.Value(_descCtrl.text.trim().isEmpty ? null : _descCtrl.text.trim()),
        instructions: drift.Value(_instructionsCtrl.text.trim().isEmpty ? null : _instructionsCtrl.text.trim()),
        prepTimeMin: drift.Value(int.tryParse(_prepCtrl.text)),
        cookTimeMin: drift.Value(int.tryParse(_cookCtrl.text)),
        defaultServings: drift.Value(double.tryParse(_servingsCtrl.text) ?? 2),
        tags: drift.Value(tagsJson),
      ),
      mode: drift.InsertMode.insertOrReplace,
    );

    // Delete old ingredients if editing
    if (_isEditing) {
      await (db.delete(db.recipeIngredients)..where((t) => t.recipeId.equals(id))).go();
    }

    for (final ing in _ingredients) {
      await db.into(db.recipeIngredients).insert(
        RecipeIngredientsCompanion(
          id: drift.Value('${id}_${ing.ingredientId}'),
          recipeId: drift.Value(id),
          ingredientId: drift.Value(ing.ingredientId),
          amountGrams: drift.Value(ing.grams),
          amountDisplay: drift.Value('${ing.grams.toStringAsFixed(0)}g'),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Recipe saved!'), backgroundColor: Colors.green));
      Navigator.pop(context, true);
    }
  }
}

class _RecipeIngredientEntry {
  final String ingredientId;
  final String name;
  final double grams;
  const _RecipeIngredientEntry({required this.ingredientId, required this.name, required this.grams});
}
