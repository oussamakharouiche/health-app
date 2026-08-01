import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';

/// Full detail view for a single ingredient: FODMAP profile, nutrition, serving.
class FoodDetailScreen extends ConsumerWidget {
  final String ingredientId;
  const FoodDetailScreen({super.key, required this.ingredientId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(_ingredientDetailProvider(ingredientId));

    return Scaffold(
      appBar: AppBar(title: const Text('Food Detail')),
      body: detailAsync.when(
        data: (data) => data != null ? _buildDetail(context, data) : const Center(child: Text('Not found')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Widget _buildDetail(BuildContext context, _IngredientDetail data) {
    final ingredient = data.ingredient;
    final nutrition = data.nutrition;
    final fodmap = data.fodmap;
    final level = fodmap?.fodmapLevel ?? 'unknown';
    final color = level == 'low' ? Colors.green : level == 'moderate' ? Colors.orange : Colors.red;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            CircleAvatar(radius: 28, backgroundColor: color.withAlpha(30), child: Icon(Icons.food_bank, color: color, size: 28)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(ingredient.name, style: Theme.of(context).textTheme.headlineSmall),
                Text(ingredient.category ?? '', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
              ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(color: color.withAlpha(25), borderRadius: BorderRadius.circular(8), border: Border.all(color: color.withAlpha(100))),
              child: Text(level.toUpperCase(), style: TextStyle(color: color, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        const SizedBox(height: 24),
        if (fodmap != null) ...[
          Text('FODMAP Profile', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          _fodmapBar('Oligos (Fructans/GOS)', fodmap.oligos),
          _fodmapBar('Fructose', fodmap.fructose),
          _fodmapBar('Polyols (Sorbitol/Mannitol)', fodmap.polyols),
          _fodmapBar('Lactose', fodmap.lactose),
          if (fodmap.servingDescription != null)
            Padding(padding: const EdgeInsets.only(top: 8), child: Text('Safe serving: ${fodmap.servingDescription}', style: const TextStyle(color: Colors.grey))),
          if (fodmap.notes != null)
            Padding(padding: const EdgeInsets.only(top: 4), child: Text(fodmap.notes!, style: TextStyle(color: Colors.orange.shade700, fontStyle: FontStyle.italic))),
          const SizedBox(height: 24),
        ],
        if (nutrition != null) ...[
          Text('Nutrition (per 100g)', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          _nutritionGrid(nutrition),
        ],
      ],
    );
  }

  Widget _fodmapBar(String label, int value) {
    final colors = [Colors.green, Colors.orange, Colors.red];
    final labels = ['LOW', 'MODERATE', 'HIGH'];
    final color = colors[value.clamp(0, 2)];
    final text = labels[value.clamp(0, 2)];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(children: [
        SizedBox(width: 140, child: Text(label, style: const TextStyle(fontSize: 13))),
        Expanded(child: ClipRRect(borderRadius: BorderRadius.circular(4), child: LinearProgressIndicator(value: (value + 1) / 3, color: color, backgroundColor: Colors.grey.shade200, minHeight: 8))),
        const SizedBox(width: 8),
        SizedBox(width: 70, child: Text(text, style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.bold))),
      ]),
    );
  }

  Widget _nutritionGrid(NutritionDataTableData n) {
    final items = [
      _Pair('Energy', '${n.energyKcal?.round() ?? 0} kcal'),
      _Pair('Protein', '${n.proteinG?.toStringAsFixed(1) ?? 0} g'),
      _Pair('Fat', '${n.fatTotalG?.toStringAsFixed(1) ?? 0} g'),
      _Pair('Saturated', '${n.fatSaturatedG?.toStringAsFixed(1) ?? 0} g'),
      _Pair('Carbs', '${n.carbsG?.toStringAsFixed(1) ?? 0} g'),
      _Pair('Sugars', '${n.sugarsG?.toStringAsFixed(1) ?? 0} g'),
      _Pair('Fiber', '${n.fiberG?.toStringAsFixed(1) ?? 0} g'),
      _Pair('Calcium', '${n.calciumMg?.round() ?? 0} mg'),
      _Pair('Iron', '${n.ironMg?.toStringAsFixed(1) ?? 0} mg'),
      _Pair('Magnesium', '${n.magnesiumMg?.round() ?? 0} mg'),
      _Pair('Zinc', '${n.zincMg?.toStringAsFixed(1) ?? 0} mg'),
      _Pair('Vitamin C', '${n.vitaminCMg?.round() ?? 0} mg'),
      _Pair('Vitamin D', '${n.vitaminDUg?.toStringAsFixed(1) ?? 0} ug'),
      _Pair('Vitamin B12', '${n.vitaminB12Ug?.toStringAsFixed(1) ?? 0} ug'),
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3.5, crossAxisSpacing: 8, mainAxisSpacing: 4),
      itemCount: items.length,
      itemBuilder: (_, i) => Row(children: [
        Expanded(child: Text(items[i].label, style: const TextStyle(color: Colors.grey, fontSize: 13))),
        Text(items[i].value, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
      ]),
    );
  }
}

class _Pair { final String label; final String value; const _Pair(this.label, this.value); }
class _IngredientDetail { final Ingredient ingredient; final NutritionDataTableData? nutrition; final FodmapDataTableData? fodmap; const _IngredientDetail({required this.ingredient, this.nutrition, this.fodmap}); }

final _ingredientDetailProvider = FutureProvider.autoDispose.family<_IngredientDetail?, String>((ref, id) async {
  final db = ref.watch(databaseProvider);
  final ingredients = await db.select(db.ingredients).get();
  final ing = ingredients.where((i) => i.id == id).firstOrNull;
  if (ing == null) return null;

  final nutritionRows = await db.select(db.nutritionDataTable).get();
  final fodmapRows = await db.select(db.fodmapDataTable).get();

  return _IngredientDetail(
    ingredient: ing,
    nutrition: nutritionRows.where((n) => n.ingredientId == id).firstOrNull,
    fodmap: fodmapRows.where((f) => f.ingredientId == id).firstOrNull,
  );
});
