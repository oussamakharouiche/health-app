import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';
import 'food_detail_screen.dart';

/// Browse all ingredients with FODMAP traffic lights, nutrition, search, filters.
class FoodDatabaseScreen extends ConsumerStatefulWidget {
  const FoodDatabaseScreen({super.key});

  @override
  ConsumerState<FoodDatabaseScreen> createState() => _FoodDatabaseScreenState();
}

class _FoodDatabaseScreenState extends ConsumerState<FoodDatabaseScreen> {
  String _search = '';
  String? _fodmapFilter;
  String? _categoryFilter;

  @override
  Widget build(BuildContext context) {
    final allIngredientsAsync = ref.watch(_allIngredientsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Database'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: _showFilterSheet,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search ingredients...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              onChanged: (value) => setState(() => _search = value),
            ),
          ),
          _buildQuickFilters(),
          const SizedBox(height: 8),
          Expanded(
            child: allIngredientsAsync.when(
              data: (items) => _buildFilteredResults(items),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickFilters() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _filterChip('All', null),
          const SizedBox(width: 8),
          _filterChip('Low FODMAP', 'low'),
          const SizedBox(width: 8),
          _filterChip('Moderate', 'moderate'),
          const SizedBox(width: 8),
          _filterChip('High', 'high'),
        ],
      ),
    );
  }

  Widget _filterChip(String label, String? value) {
    final selected = _fodmapFilter == value;
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) => setState(() => _fodmapFilter = selected ? null : value),
      avatar: value != null
          ? Icon(Icons.circle, size: 12,
              color: value == 'low' ? Colors.green : value == 'moderate' ? Colors.orange : Colors.red)
          : null,
    );
  }

  List<IngredientWithExtras> _applyFilters(List<IngredientWithExtras> items) {
    return items.where((item) {
      if (_search.isNotEmpty) {
        final term = _search.toLowerCase();
        if (!item.ingredient.name.toLowerCase().contains(term)) return false;
      }
      if (_fodmapFilter != null && item.fodmap?.fodmapLevel != _fodmapFilter) return false;
      if (_categoryFilter != null && item.ingredient.category != _categoryFilter) return false;
      return true;
    }).toList();
  }

  Widget _buildFilteredResults(List<IngredientWithExtras> items) {
    final filtered = _applyFilters(items);
    if (filtered.isEmpty) {
      return const Center(child: Text('No ingredients match your filters'));
    }
    return ListView.builder(
      itemCount: filtered.length,
      itemBuilder: (context, index) {
        final item = filtered[index];
        return _buildTile(item);
      },
    );
  }

  Widget _buildTile(IngredientWithExtras item) {
    final level = item.fodmap?.fodmapLevel ?? 'low';
    final color = level == 'low' ? Colors.green : level == 'moderate' ? Colors.orange : Colors.red;
    final kcal = item.nutrition?.energyKcal?.round() ?? 0;

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withAlpha(30),
        child: Icon(Icons.food_bank, color: color, size: 20),
      ),
      title: Text(item.ingredient.name),
      subtitle: Text('${item.ingredient.category ?? ""} · $kcal kcal · ${item.nutrition?.proteinG?.toStringAsFixed(1) ?? "0"}g protein'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: color.withAlpha(25),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: color.withAlpha(100)),
            ),
            child: Text(
              level == 'low' ? 'LOW' : level == 'moderate' ? 'MOD' : 'HIGH',
              style: TextStyle(fontSize: 10, color: color, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.chevron_right),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => FoodDetailScreen(ingredientId: item.ingredient.id),
          ),
        );
      },
    );
  }

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Filter by Category', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                children: [
                  'Meat & Poultry', 'Fish & Seafood', 'Eggs',
                  'Dairy & Alternatives', 'Grains & Pasta',
                  'Vegetables', 'Fruit', 'Nuts & Seeds', 'Fats & Oils',
                ].map((cat) {
                  final selected = _categoryFilter == cat;
                  return FilterChip(
                    label: Text(cat),
                    selected: selected,
                    onSelected: (_) {
                      setState(() => _categoryFilter = selected ? null : cat);
                      Navigator.pop(ctx);
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  setState(() => _categoryFilter = null);
                  Navigator.pop(ctx);
                },
                child: const Text('Clear filters'),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Simple data class for ingredient with its nutrition and FODMAP data.
class IngredientWithExtras {
  final Ingredient ingredient;
  final NutritionDataTableData? nutrition;
  final FodmapDataTableData? fodmap;

  const IngredientWithExtras({
    required this.ingredient,
    this.nutrition,
    this.fodmap,
  });
}

/// Loads all ingredients with nutrition and FODMAP data.
final _allIngredientsProvider = FutureProvider<List<IngredientWithExtras>>((ref) async {
  final db = ref.watch(databaseProvider);
  final ingredients = await db.select(db.ingredients).get();
  final nutritionRows = await db.select(db.nutritionDataTable).get();
  final fodmapRows = await db.select(db.fodmapDataTable).get();

  final nutritionMap = {for (final n in nutritionRows) n.ingredientId: n};
  final fodmapMap = {for (final f in fodmapRows) f.ingredientId: f};

  final result = ingredients.map((ing) {
    return IngredientWithExtras(
      ingredient: ing,
      nutrition: nutritionMap[ing.id],
      fodmap: fodmapMap[ing.id],
    );
  }).toList();

  result.sort((a, b) => a.ingredient.name.compareTo(b.ingredient.name));
  return result;
});
