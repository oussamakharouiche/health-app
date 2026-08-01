import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';
import '../../core/services/nutrition_engine.dart';

/// Log meals and see today's nutrition summary.
class FoodDiaryScreen extends ConsumerStatefulWidget {
  const FoodDiaryScreen({super.key});

  @override
  ConsumerState<FoodDiaryScreen> createState() => _FoodDiaryScreenState();
}

class _FoodDiaryScreenState extends ConsumerState<FoodDiaryScreen> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final today = _selectedDate;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Diary'),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () async {
              final picked = await showDatePicker(
                context: context,
                initialDate: today,
                firstDate: today.subtract(const Duration(days: 365)),
                lastDate: today.add(const Duration(days: 1)),
              );
              if (picked != null) setState(() => _selectedDate = picked);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddMealSheet(context, today),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          // Date header
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                IconButton(icon: const Icon(Icons.chevron_left), onPressed: () => setState(() => _selectedDate = today.subtract(const Duration(days: 1)))),
                Expanded(child: Text(_formatDate(today), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium)),
                IconButton(icon: const Icon(Icons.chevron_right), onPressed: () => setState(() => _selectedDate = today.add(const Duration(days: 1)))),
              ],
            ),
          ),
          // Summary card
          ref.watch(_dailySummaryProvider(today)).when(
                data: (summary) => _buildSummaryCard(context, summary),
                loading: () => const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator())),
                error: (e, _) => const Padding(padding: EdgeInsets.all(24), child: Center(child: Text('Error loading summary'))),
              ),
          const Divider(),
          // Entry list
          Expanded(
            child: ref.watch(_todayEntriesProvider(today)).when(
                  data: (entries) => _buildEntryList(entries),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (e, _) => const Center(child: Text('Error loading entries')),
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(BuildContext context, DailyNutritionSummary s) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Today\'s Totals', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _macro('Calories', '${s.energyKcal.round()}', 'kcal'),
                _macro('Protein', s.proteinG.toStringAsFixed(1), 'g'),
                _macro('Carbs', s.carbsG.toStringAsFixed(1), 'g'),
                _macro('Fat', s.fatG.toStringAsFixed(1), 'g'),
                _macro('Fiber', s.fiberG.toStringAsFixed(1), 'g'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _macro(String label, String value, String unit) {
    return Column(children: [
      Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('$label ($unit)', style: const TextStyle(fontSize: 11, color: Colors.grey)),
    ]);
  }

  Widget _buildEntryList(List<FoodLog> entries) {
    if (entries.isEmpty) {
      return const Center(child: Text('No meals logged today.\nTap + to add your first meal.', textAlign: TextAlign.center));
    }
    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (context, index) {
        final entry = entries[index];
        return ListTile(
          leading: const Icon(Icons.restaurant),
          title: Text('${entry.amountGrams}g'),
          subtitle: Text(entry.mealType),
          trailing: IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () async {
              await ref.read(foodLogServiceProvider).removeEntry(entry.id);
              ref.invalidate(_todayEntriesProvider(_selectedDate));
              ref.invalidate(_dailySummaryProvider(_selectedDate));
            },
          ),
        );
      },
    );
  }

  void _showAddMealSheet(BuildContext context, DateTime date) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add Meal', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 16),
                ListTile(
                  leading: const Icon(Icons.search),
                  title: const Text('Search food database'),
                  subtitle: const Text('Browse all ingredients'),
                  onTap: () {
                    Navigator.pop(ctx);
                    _pickFood(context, date);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.restaurant_menu),
                  title: const Text('Pick from recipes'),
                  subtitle: const Text('Coming soon'),
                  enabled: false,
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _pickFood(BuildContext context, DateTime date) async {
    // Navigate to food database picker
    final db = ref.read(databaseProvider);
    final ingredients = await db.select(db.ingredients).get();
    if (!context.mounted) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => _FoodPickerScreen(
          ingredients: ingredients,
          onSelected: (ingredient) async {
            // Insert into food log
            await db.into(db.foodLogs).insert(
              FoodLogsCompanion(
                id: drift.Value(DateTime.now().microsecondsSinceEpoch.toString()),
                date: drift.Value(date),
                mealType: const drift.Value('snack_1'),
                ingredientId: drift.Value(ingredient.id),
                amountGrams: const drift.Value(100),
                createdAt: drift.Value(DateTime.now()),
              ),
            );
            ref.invalidate(_todayEntriesProvider(_selectedDate));
            ref.invalidate(_dailySummaryProvider(_selectedDate));
          },
        ),
      ),
    );
  }

  String _formatDate(DateTime d) {
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }
}

/// Simple food picker that shows all ingredients and lets the user tap one.
class _FoodPickerScreen extends StatelessWidget {
  final List<Ingredient> ingredients;
  final void Function(Ingredient) onSelected;

  const _FoodPickerScreen({required this.ingredients, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick Food')),
      body: ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          final ing = ingredients[index];
          return ListTile(
            leading: const Icon(Icons.food_bank),
            title: Text(ing.name),
            subtitle: Text(ing.category ?? ''),
            onTap: () {
              onSelected(ing);
              Navigator.pop(context);
              Navigator.pop(context); // also close the bottom sheet
            },
          );
        },
      ),
    );
  }
}

final _todayEntriesProvider = FutureProvider.autoDispose.family<List<FoodLog>, DateTime>((ref, date) async {
  final service = ref.watch(foodLogServiceProvider);
  return service.entriesForDate(date);
});

final _dailySummaryProvider = FutureProvider.autoDispose.family<DailyNutritionSummary, DateTime>((ref, date) async {
  final service = ref.watch(foodLogServiceProvider);
  return service.dailySummary(date);
});
