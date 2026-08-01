import 'dart:convert';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';
import '../../core/services/llm_provider.dart';
import '../../core/services/llm_service.dart';

/// Weekly meal planner: assign recipes to days, toggle work schedule, LLM generation.
class MealPlannerScreen extends ConsumerStatefulWidget {
  const MealPlannerScreen({super.key});

  @override
  ConsumerState<MealPlannerScreen> createState() => _MealPlannerScreenState();
}

class _MealPlannerScreenState extends ConsumerState<MealPlannerScreen> {
  DateTime _weekStart = _findMonday(DateTime.now());
  final _mealTypes = ['breakfast', 'lunch', 'dinner', 'snack'];
  final Map<String, Map<String, String?>> _plan = {}; // day -> mealType -> recipeId

  @override
  Widget build(BuildContext context) {
    final recipesAsync = ref.watch(_allRecipesForPlannerProvider);
    final days = List.generate(7, (i) => _weekStart.add(Duration(days: i)));

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Plan — ${DateFormat('MMM d').format(_weekStart)}'),
        actions: [
          IconButton(icon: const Icon(Icons.chevron_left), onPressed: () => setState(() => _weekStart = _weekStart.subtract(const Duration(days: 7)))),
          IconButton(icon: const Icon(Icons.chevron_right), onPressed: () => setState(() => _weekStart = _weekStart.add(const Duration(days: 7)))),
        ],
      ),
      body: recipesAsync.when(
        data: (recipes) => ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 7,
          itemBuilder: (_, i) => _buildDayCard(context, days[i], recipes),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            heroTag: 'generate',
            tooltip: 'AI Generate',
            onPressed: () => _generateWithAI(),
            child: const Icon(Icons.auto_awesome),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'shop',
            tooltip: 'Generate Shopping List',
            onPressed: () {
              final r = ref.read(_allRecipesForPlannerProvider).valueOrNull ?? [];
              _generateShoppingList(r);
            },
            child: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }

  Widget _buildDayCard(BuildContext context, DateTime day, List<Recipe> recipes) {
    final dateKey = DateFormat('yyyy-MM-dd').format(day);
    final dayPlan = _plan[dateKey] ?? {};
    final weekday = DateFormat('EEEE').format(day);
    final isWorkDay = ref.watch(workScheduleProvider).contains(weekday);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(DateFormat('EEE d').format(day), style: Theme.of(context).textTheme.titleSmall),
              const Spacer(),
              Icon(isWorkDay ? Icons.business : Icons.home, size: 16, color: isWorkDay ? Colors.blue : Colors.green),
              const SizedBox(width: 4),
              Text(isWorkDay ? 'Office' : 'Home', style: TextStyle(fontSize: 11, color: isWorkDay ? Colors.blue : Colors.green)),
            ]),
            const SizedBox(height: 8),
            for (final meal in _mealTypes)
              _buildMealSlot(context, dateKey, meal, recipes, isWorkDay),
          ],
        ),
      ),
    );
  }

  Widget _buildMealSlot(BuildContext context, String dateKey, String mealType, List<Recipe> allRecipes, bool isWorkDay) {
    final recipeId = _plan[dateKey]?[mealType];
    Recipe? selected;
    if (recipeId != null) {
      selected = allRecipes.where((r) => r.id == recipeId).firstOrNull;
    }

    var filtered = allRecipes.where((r) {
      final tags = _parseTags(r.tags);
      if (mealType == 'breakfast' && !tags.contains('breakfast') && !tags.contains('snack')) return false;
      if (mealType == 'lunch' && isWorkDay && !tags.contains('microwave-friendly') && !tags.contains('meal-prep')) return false;
      return true;
    }).toList();

    return InkWell(
      onTap: () => _pickRecipe(context, dateKey, mealType, filtered),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(children: [
          SizedBox(width: 60, child: Text(mealType.capitalize(), style: const TextStyle(fontSize: 12, color: Colors.grey))),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: selected != null ? Theme.of(context).colorScheme.primaryContainer : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                selected?.name ?? 'Tap to pick',
                style: TextStyle(fontSize: 12, color: selected != null ? Theme.of(context).colorScheme.onPrimaryContainer : Colors.grey),
              ),
            ),
          ),
          if (selected != null)
            IconButton(
              icon: const Icon(Icons.close, size: 16),
              onPressed: () => setState(() {
                _plan[dateKey] ??= {};
                _plan[dateKey]![mealType] = null;
              }),
            ),
        ]),
      ),
    );
  }

  void _pickRecipe(BuildContext context, String dateKey, String mealType, List<Recipe> recipes) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Clear slot'),
            onTap: () {
              setState(() { _plan[dateKey] ??= {}; _plan[dateKey]![mealType] = null; });
              Navigator.pop(ctx);
            },
          ),
          ...recipes.map((r) => ListTile(
            leading: const Icon(Icons.restaurant),
            title: Text(r.name),
            subtitle: Text('${r.prepTimeMin ?? 0 + (r.cookTimeMin ?? 0)} min'),
            onTap: () {
              setState(() { _plan[dateKey] ??= {}; _plan[dateKey]![mealType] = r.id; });
              Navigator.pop(ctx);
            },
          )),
        ],
      ),
    );
  }

  Future<void> _generateWithAI() async {
    final llmService = ref.read(llmServiceProvider);
    if (llmService == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Configure API key in Settings first')));
      return;
    }
    setState(() {});
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Generating meal plan with AI...'), duration: Duration(seconds: 30)));

    try {
      final allRecipes = ref.read(_allRecipesForPlannerProvider).valueOrNull ?? [];
      final recipeList = allRecipes.map((r) => '- ${r.name} (${r.id}): ${_parseTags(r.tags).join(", ")}').join('\n');

      final response = await llmService.chat(
        systemPrompt: 'You are a meal planner. Given a list of available recipes, assign them to days and meal slots for a week. '
            'Consider variety: do not repeat the same recipe too often. '
            'Return ONLY a JSON object with keys as "YYYY-MM-DD" dates and values as objects with meal types (breakfast, lunch, dinner, snack) mapping to recipe IDs.',
        userPrompt: 'Available recipes:\n$recipeList\n\nWeek starting: ${DateFormat("yyyy-MM-dd").format(_weekStart)}. '
            'Plan Mon-Fri (5 days). Only use the recipe IDs provided. Return JSON.',
      );

      final json = _extractJson(response.content);
      if (json != null && mounted) {
        setState(() {
          for (final day in json.keys) {
            _plan[day] = Map<String, String?>.from((json[day] as Map).map((k, v) => MapEntry(k.toString(), v?.toString())));
          }
        });
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Meal plan generated!'), backgroundColor: Colors.green));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed: $e'), backgroundColor: Colors.red));
      }
    }
  }

  void _generateShoppingList(List<Recipe> allRecipes) async {
    final db = ref.read(databaseProvider);
    final Map<String, double> needed = {}; // ingredientId -> total grams

    for (final day in _plan.keys) {
      for (final mealId in _plan[day]!.values) {
        if (mealId == null) continue;
        final recipe = allRecipes.where((r) => r.id == mealId).firstOrNull;
        if (recipe == null) continue;

        final ingredients = await (db.select(db.recipeIngredients)
          ..where((t) => t.recipeId.equals(recipe.id))).get();

        for (final ri in ingredients) {
          needed[ri.ingredientId] = (needed[ri.ingredientId] ?? 0) + ri.amountGrams;
        }
      }
    }

    if (needed.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Plan some meals first!')));
      return;
    }

    // Cross-reference with pantry
    final pantry = await db.select(db.pantryItems).get();
    for (final p in pantry) {
      if (p.ingredientId != null && needed.containsKey(p.ingredientId)) {
        final current = needed[p.ingredientId!] ?? 0;
        needed[p.ingredientId!] = (current - (p.quantityGramsEst ?? 0)).clamp(0.0, double.infinity).toDouble();
      }
    }

    // Create shopping list
    final allIngredients = await db.select(db.ingredients).get();
    final ingMap = {for (final i in allIngredients) i.id: i};

    final listId = 'shop-${DateTime.now().microsecondsSinceEpoch}';
    await db.into(db.shoppingLists).insert(
      ShoppingListsCompanion(
        id: drift.Value(listId),
        name: drift.Value('Week ${DateFormat("MMM d").format(_weekStart)}'),
        weekStart: drift.Value(_weekStart),
        createdAt: drift.Value(DateTime.now()),
      ),
      mode: drift.InsertMode.insertOrReplace,
    );

    int order = 0;
    for (final entry in needed.entries) {
      if (entry.value <= 0) continue;
      final ing = ingMap[entry.key];
      if (ing == null) continue;

      await db.into(db.shoppingItems).insert(
        ShoppingItemsCompanion(
          id: drift.Value('${listId}_${entry.key}'),
          listId: drift.Value(listId),
          ingredientId: drift.Value(entry.key),
          name: drift.Value(ing.name),
          amount: drift.Value('${entry.value.toStringAsFixed(0)}g'),
          category: drift.Value(ing.category ?? 'Other'),
          isChecked: const drift.Value(false),
          isFromMealPlan: const drift.Value(true),
          sortOrder: drift.Value(order++),
        ),
        mode: drift.InsertMode.insertOrReplace,
      );
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: const Text('Shopping list generated!'), backgroundColor: Colors.green,
          action: SnackBarAction(label: 'View', onPressed: () => Navigator.of(context).pushNamed('/shopping-list')),
        ),
      );
    }
  }

  Map<String, dynamic>? _extractJson(String text) {
    try {
      final start = text.indexOf('{');
      final end = text.lastIndexOf('}');
      if (start >= 0 && end > start) {
        return Map<String, dynamic>.from(
          const JsonDecoder().convert(text.substring(start, end + 1)) as Map);
      }
    } catch (_) {}
    return null;
  }

  List<String> _parseTags(String? json) {
    if (json == null || json.isEmpty) return [];
    try {
      return RegExp(r'"(.*?)"').allMatches(json).map((m) => m.group(1)!).toList();
    } catch (_) { return []; }
  }

  static DateTime _findMonday(DateTime d) => d.subtract(Duration(days: d.weekday - 1));
}

extension _StringExt on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}

final _allRecipesForPlannerProvider = FutureProvider<List<Recipe>>((ref) async {
  final db = ref.watch(databaseProvider);
  return db.select(db.recipes).get();
});

final workScheduleProvider = StateProvider<Set<String>>((ref) {
  // Default: Monday, Tuesday, Thursday, Friday are office days
  return {'Monday', 'Tuesday', 'Thursday', 'Friday'};
});
