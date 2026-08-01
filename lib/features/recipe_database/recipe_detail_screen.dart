import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';

/// Full detail view for a recipe: ingredients, nutrition, instructions, tags.
class RecipeDetailScreen extends ConsumerWidget {
  final String recipeId;
  const RecipeDetailScreen({super.key, required this.recipeId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(_recipeDetailProvider(recipeId));

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: detailAsync.when(
        data: (data) => data != null ? _buildContent(context, data) : const Center(child: Text('Not found')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Widget _buildContent(BuildContext context, _RecipeDetail data) {
    final recipe = data.recipe;
    final tags = _parseTags(recipe.tags);
    final totalTime = (recipe.prepTimeMin ?? 0) + (recipe.cookTimeMin ?? 0);
    final servings = recipe.defaultServings;

    // Calculate per-serving nutrition from ingredients
    double kcal = 0, protein = 0, fat = 0, carbs = 0, fiber = 0;
    for (final ri in data.ingredients) {
      final nut = data.nutritionMap[ri.ingredientId];
      if (nut == null) continue;
      final factor = ri.amountGrams / 100 / (servings > 0 ? servings : 1);
      kcal += (nut.energyKcal ?? 0) * factor;
      protein += (nut.proteinG ?? 0) * factor;
      fat += (nut.fatTotalG ?? 0) * factor;
      carbs += (nut.carbsG ?? 0) * factor;
      fiber += (nut.fiberG ?? 0) * factor;
    }

    // Determine FODMAP safety
    final allLowFodmap = data.ingredients.every((ri) {
      final f = data.fodmapMap[ri.ingredientId];
      return f?.fodmapLevel == 'low';
    });

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Header
        Text(recipe.name, style: Theme.of(context).textTheme.headlineSmall),
        if (recipe.description != null) ...[
          const SizedBox(height: 4),
          Text(recipe.description!, style: const TextStyle(color: Colors.grey)),
        ],
        const SizedBox(height: 16),

        // Stats row
        Row(
          children: [
            _statCard(context, '$totalTime', 'min', Icons.timer),
            const SizedBox(width: 8),
            _statCard(context, '${servings?.round() ?? 1}', 'servings', Icons.people),
            const SizedBox(width: 8),
            _statCard(context, '${kcal.round()}', 'kcal', Icons.local_fire_department),
          ],
        ),
        const SizedBox(height: 12),

        // Macro pills
        Wrap(
          spacing: 8,
          children: [
            _macroPill('Protein', '${protein.toStringAsFixed(1)}g', Colors.blue),
            _macroPill('Fat', '${fat.toStringAsFixed(1)}g', Colors.orange),
            _macroPill('Carbs', '${carbs.toStringAsFixed(1)}g', Colors.amber),
            _macroPill('Fiber', '${fiber.toStringAsFixed(1)}g', Colors.green),
          ],
        ),
        const SizedBox(height: 12),

        // Tags + FODMAP badge
        Wrap(
          spacing: 6,
          children: [
            if (allLowFodmap)
              _tagBadge('Low FODMAP', Colors.green)
            else
              _tagBadge('Check FODMAP', Colors.orange),
            for (final t in tags)
              if (t != 'low-fodmap')
                _tagBadge(t.replaceAll('-', ' '), Colors.grey),
          ],
        ),

        const SizedBox(height: 24),
        const Divider(),
        const SizedBox(height: 8),

        // Ingredients
        Text('Ingredients', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        for (final ri in data.ingredients) ...[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                const Icon(Icons.check_circle_outline, size: 18, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    data.ingredientNames[ri.ingredientId] ?? 'Unknown',
                  ),
                ),
                Text(
                  ri.amountDisplay ?? '${ri.amountGrams}g',
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
        ],

        const SizedBox(height: 24),
        const Divider(),
        const SizedBox(height: 8),

        // Instructions
        Text('Instructions', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        if (recipe.instructions != null)
          Text(recipe.instructions!, style: const TextStyle(fontSize: 14, height: 1.6)),
      ],
    );
  }

  Widget _statCard(BuildContext context, String value, String unit, IconData icon) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 4),
              Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(unit, style: const TextStyle(fontSize: 11, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _macroPill(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withAlpha(80)),
      ),
      child: Text('$label: $value', style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w500)),
    );
  }

  Widget _tagBadge(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.withAlpha(80)),
      ),
      child: Text(label, style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w500)),
    );
  }

  List<String> _parseTags(String? json) {
    if (json == null || json.isEmpty) return [];
    try {
      return RegExp(r'"(.*?)"').allMatches(json).map((m) => m.group(1)!).toList();
    } catch (_) {
      return [];
    }
  }
}

class _RecipeDetail {
  final Recipe recipe;
  final List<RecipeIngredient> ingredients;
  final Map<String, String> ingredientNames;
  final Map<String, NutritionDataTableData> nutritionMap;
  final Map<String, FodmapDataTableData> fodmapMap;

  const _RecipeDetail({
    required this.recipe,
    required this.ingredients,
    required this.ingredientNames,
    required this.nutritionMap,
    required this.fodmapMap,
  });
}

final _recipeDetailProvider = FutureProvider.autoDispose.family<_RecipeDetail?, String>((ref, id) async {
  final db = ref.watch(databaseProvider);

  final recipes = await db.select(db.recipes).get();
  final recipe = recipes.where((r) => r.id == id).firstOrNull;
  if (recipe == null) return null;

  final allRecipeIngredients = await db.select(db.recipeIngredients).get();
  final myIngredients = allRecipeIngredients.where((ri) => ri.recipeId == id).toList();

  final ingredientIds = myIngredients.map((ri) => ri.ingredientId).toSet().toList();
  final allIngredients = await db.select(db.ingredients).get();
  final ingredientNames = {for (final i in allIngredients) i.id: i.name};

  final allNutrition = await db.select(db.nutritionDataTable).get();
  final nutritionMap = {for (final n in allNutrition) n.ingredientId: n};

  final allFodmap = await db.select(db.fodmapDataTable).get();
  final fodmapMap = {for (final f in allFodmap) f.ingredientId: f};

  return _RecipeDetail(
    recipe: recipe,
    ingredients: myIngredients,
    ingredientNames: ingredientNames,
    nutritionMap: nutritionMap,
    fodmapMap: fodmapMap,
  );
});
