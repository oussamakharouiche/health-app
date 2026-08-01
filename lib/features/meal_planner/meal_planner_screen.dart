import 'dart:convert';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';
import '../../core/services/llm_provider.dart';
import '../../core/services/llm_service.dart';

/// Weekly meal planner with database persistence.
class MealPlannerScreen extends ConsumerStatefulWidget {
  const MealPlannerScreen({super.key});

  @override
  ConsumerState<MealPlannerScreen> createState() => _MealPlannerScreenState();
}

class _MealPlannerScreenState extends ConsumerState<MealPlannerScreen> {
  DateTime _weekStart = _findMonday(DateTime.now());
  static const _mealTypes = ['breakfast', 'lunch', 'dinner', 'snack'];
  final Map<String, Map<String, String?>> _plan = {};
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    _loadPlan();
  }

  Future<void> _loadPlan() async {
    final db = ref.read(databaseProvider);
    final row = await (db.select(db.settings)
          ..where((t) => t.key.equals(_planKey())))
        .getSingleOrNull();
    if (row != null) {
      try {
        final saved = jsonDecode(row.value) as Map<String, dynamic>;
        setState(() {
          for (final day in saved.keys) {
            _plan[day] = Map<String, String?>.from((saved[day] as Map).map((k, v) => MapEntry(k.toString(), v?.toString())));
          }
        });
      } catch (_) {}
    }
    _loaded = true;
  }

  Future<void> _savePlan() async {
    final db = ref.read(databaseProvider);
    await db.into(db.settings).insert(
      SettingsCompanion(
        key: drift.Value(_planKey()),
        value: drift.Value(jsonEncode(_plan)),
        updatedAt: drift.Value(DateTime.now()),
      ),
      mode: drift.InsertMode.insertOrReplace,
    );
  }

  String _planKey() => 'meal_plan_${DateFormat('yyyy-MM-dd').format(_weekStart)}';

  void _setMeal(String dateKey, String mealType, String? recipeId) {
    setState(() {
      _plan[dateKey] ??= {};
      _plan[dateKey]![mealType] = recipeId;
    });
    _savePlan();
  }

  @override
  Widget build(BuildContext context) {
    final recipesAsync = ref.watch(_allRecipesForPlannerProvider);
    final days = List.generate(7, (i) => _weekStart.add(Duration(days: i)));

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Plan — ${DateFormat('MMM d').format(_weekStart)}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () async {
              final newStart = _weekStart.subtract(const Duration(days: 7));
              setState(() => _weekStart = newStart);
              _plan.clear();
              await _loadPlan();
            },
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: () async {
              final newStart = _weekStart.add(const Duration(days: 7));
              setState(() => _weekStart = newStart);
              _plan.clear();
              await _loadPlan();
            },
          ),
        ],
      ),
      body: !_loaded
          ? const Center(child: CircularProgressIndicator())
          : recipesAsync.when(
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
    final isWeekend = day.weekday == DateTime.saturday || day.weekday == DateTime.sunday;

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
              if (isWeekend)
                const Icon(Icons.weekend, size: 16, color: Colors.purple),
              Icon(isWorkDay ? Icons.business : Icons.home, size: 16, color: isWorkDay ? Colors.blue : Colors.green),
              const SizedBox(width: 4),
              Text(isWeekend ? 'Weekend' : (isWorkDay ? 'Office' : 'Home'),
                  style: TextStyle(fontSize: 11, color: isWeekend ? Colors.purple : (isWorkDay ? Colors.blue : Colors.green))),
            ]),
            const SizedBox(height: 8),
            for (final meal in _mealTypes)
              _buildMealSlot(context, dateKey, meal, recipes, isWorkDay, isWeekend),
          ],
        ),
      ),
    );
  }

  Widget _buildMealSlot(BuildContext context, String dateKey, String mealType,
      List<Recipe> allRecipes, bool isWorkDay, bool isWeekend) {
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

    // On weekends, show all recipes (relaxed filtering)
    if (isWeekend) filtered = allRecipes;

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
              onPressed: () {
                _setMeal(dateKey, mealType, null);
              },
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
              _setMeal(dateKey, mealType, null);
              Navigator.pop(ctx);
            },
          ),
          ...recipes.map((r) => ListTile(
                leading: const Icon(Icons.restaurant),
                title: Text(r.name),
                subtitle: Text('${r.prepTimeMin ?? 0 + (r.cookTimeMin ?? 0)} min'),
                onTap: () {
                  _setMeal(dateKey, mealType, r.id);
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Configure API key in Settings first')),
      );
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Generating 7-day meal plan...'), duration: Duration(seconds: 60)),
    );

    try {
      final allRecipes = ref.read(_allRecipesForPlannerProvider).valueOrNull ?? [];
      final recipeList = allRecipes
          .map((r) => '- ${r.name} (${r.id}): ${_parseTags(r.tags).join(", ")}')
          .join('\n');

      // Fetch pantry items for waste-minimization
      final db = ref.read(databaseProvider);
      final pantryItems = await db.select(db.pantryItems).get();
      final pantryList = pantryItems.isNotEmpty
          ? pantryItems.map((p) {
              final daysAgo = p.purchasedAt != null
                  ? DateTime.now().difference(p.purchasedAt!).inDays
                  : null;
              return '- ${p.name} (${p.quantityText ?? "${p.quantityGramsEst?.round() ?? 0}g"})${daysAgo != null ? " — bought $daysAgo days ago" : ""}${daysAgo != null && daysAgo > 5 ? " ⚠️ USE SOON" : ""}';
            }).join('\n')
          : '(pantry is empty)';

      final response = await llmService.chat(
        systemPrompt: 'You are a meal planner. Given a list of available recipes, assign them to days and meal slots for a FULL 7-DAY WEEK (Monday through Sunday). '
            'Consider variety: do not repeat the same recipe too often. Vary breakfasts, lunches, and dinners. '
            'For weekends (Saturday, Sunday), you can be more relaxed (brunch-style breakfasts, more elaborate dinners). '
            'CRITICAL: You also have a pantry with ingredients listed below. Prioritize recipes that use ingredients marked "⚠️ USE SOON" or bought more than 5 days ago. '
            'This minimizes food waste. However, still ensure the overall plan meets nutritional balance and the user is on a LOW FODMAP diet. '
            'Return ONLY a JSON object with keys as "YYYY-MM-DD" dates and values as objects with meal types (breakfast, lunch, dinner, snack) mapping to recipe IDs. '
            'EVERY day must have at least breakfast, lunch, and dinner assigned.',
        userPrompt: 'Available recipes:\n$recipeList\n\nPantry ingredients (prioritize soon-to-expire items):\n$pantryList\n\n'
            'Week starting Monday: ${DateFormat("yyyy-MM-dd").format(_weekStart)}. '
            'Plan ALL 7 days (Mon-Sun). Only use the recipe IDs provided. Prioritize recipes that use pantry items marked ⚠️ USE SOON. Return valid JSON.',
      );

      final json = _extractJson(response.content);
      if (json != null && mounted) {
        setState(() {
          _plan.clear();
          for (final day in json.keys) {
            _plan[day] = Map<String, String?>.from(
                (json[day] as Map).map((k, v) => MapEntry(k.toString(), v?.toString())));
          }
        });
        await _savePlan();
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('7-day meal plan generated!'), backgroundColor: Colors.green),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  Future<void> _generateShoppingList(List<Recipe> allRecipes) async {
    final db = ref.read(databaseProvider);
    final Map<String, double> needed = {};

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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Plan some meals first!')),
      );
      return;
    }

    // Cross-reference with pantry
    final pantry = await db.select(db.pantryItems).get();
    for (final p in pantry) {
      if (p.ingredientId != null && needed.containsKey(p.ingredientId)) {
        final current = needed[p.ingredientId!] ?? 0;
        needed[p.ingredientId!] =
            (current - (p.quantityGramsEst ?? 0)).clamp(0.0, double.infinity).toDouble();
      }
    }

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
        SnackBar(
          content: const Text('Shopping list generated!'),
          backgroundColor: Colors.green,
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
    } catch (_) {
      return [];
    }
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
  return {'Monday', 'Tuesday', 'Thursday', 'Friday'};
});
