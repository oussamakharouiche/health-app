import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';
import '../../core/services/llm_provider.dart';
import '../../core/services/llm_service.dart';
import '../settings/llm_settings_screen.dart';
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
            icon: const Icon(Icons.smart_toy_outlined),
            tooltip: 'AI Lookup',
            onPressed: () => _showAILookupDialog(context),
          ),
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

  void _showAILookupDialog(BuildContext context) {
    final llmService = ref.read(llmServiceProvider);
    if (llmService == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Configure your API key first'),
          action: SnackBarAction(
            label: 'Settings',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const LLMSettingsScreen()),
              );
            },
          ),
        ),
      );
      return;
    }

    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('AI Food Lookup'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter a food name to look up its nutrition and FODMAP profile.'),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'e.g. quinoa, tempeh, gochujang...',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          FilledButton(
            onPressed: () async {
              Navigator.pop(ctx);
              _enrichIngredient(llmService, controller.text);
            },
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }

  Future<void> _enrichIngredient(LLMService llmService, String foodName) async {
    if (foodName.trim().isEmpty) return;

    // Show loading
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Looking up "$foodName"...'), duration: const Duration(seconds: 10)),
    );

    try {
      final result = await llmService.chatStructured(
        systemPrompt: 'You are a nutritional database. Given a food name, return its full nutritional composition per 100g (energy, protein, fat, saturated fat, carbs, sugars, fiber, all minerals, all vitamins) AND its FODMAP profile.',
        userPrompt: 'What is the full nutritional composition and FODMAP profile of "$foodName"? Return as JSON.',
        jsonSchema: {
          'type': 'object',
          'required': ['name', 'category', 'nutrition', 'fodmap'],
          'properties': {
            'name': {'type': 'string'},
            'category': {'type': 'string'},
            'nutrition': {
              'type': 'object',
              'properties': {
                'energy_kcal': {'type': 'number'},
                'protein_g': {'type': 'number'},
                'fat_total_g': {'type': 'number'},
                'fat_saturated_g': {'type': 'number'},
                'carbs_g': {'type': 'number'},
                'sugars_g': {'type': 'number'},
                'fiber_g': {'type': 'number'},
                'calcium_mg': {'type': 'number'},
                'iron_mg': {'type': 'number'},
                'magnesium_mg': {'type': 'number'},
                'phosphorus_mg': {'type': 'number'},
                'potassium_mg': {'type': 'number'},
                'sodium_mg': {'type': 'number'},
                'zinc_mg': {'type': 'number'},
                'selenium_ug': {'type': 'number'},
                'vitamin_c_mg': {'type': 'number'},
                'vitamin_d_ug': {'type': 'number'},
                'vitamin_b12_ug': {'type': 'number'},
              },
            },
            'fodmap': {
              'type': 'object',
              'properties': {
                'level': {'type': 'string', 'enum': ['low', 'moderate', 'high']},
                'oligos': {'type': 'integer'},
                'fructose': {'type': 'integer'},
                'polyols': {'type': 'integer'},
                'lactose': {'type': 'integer'},
                'serving_description': {'type': 'string'},
                'serving_grams': {'type': 'number'},
                'notes': {'type': 'string'},
              },
            },
          },
        },
      );

      final db = ref.read(databaseProvider);
      final id = 'ai-${DateTime.now().microsecondsSinceEpoch}';

      final nut = result['nutrition'] as Map<String, dynamic>;
      final fod = result['fodmap'] as Map<String, dynamic>;

      await db.into(db.ingredients).insert(
        IngredientsCompanion(
          id: drift.Value(id),
          name: drift.Value(result['name'] as String? ?? foodName),
          category: drift.Value(result['category'] as String?),
          source: const drift.Value('llm_enriched'),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );

      await db.into(db.nutritionDataTable).insert(
        NutritionDataTableCompanion(
          ingredientId: drift.Value(id),
          energyKcal: drift.Value((nut['energy_kcal'] as num?)?.toDouble()),
          proteinG: drift.Value((nut['protein_g'] as num?)?.toDouble()),
          fatTotalG: drift.Value((nut['fat_total_g'] as num?)?.toDouble()),
          fatSaturatedG: drift.Value((nut['fat_saturated_g'] as num?)?.toDouble()),
          carbsG: drift.Value((nut['carbs_g'] as num?)?.toDouble()),
          sugarsG: drift.Value((nut['sugars_g'] as num?)?.toDouble()),
          fiberG: drift.Value((nut['fiber_g'] as num?)?.toDouble()),
          calciumMg: drift.Value((nut['calcium_mg'] as num?)?.toDouble()),
          ironMg: drift.Value((nut['iron_mg'] as num?)?.toDouble()),
          magnesiumMg: drift.Value((nut['magnesium_mg'] as num?)?.toDouble()),
          phosphorusMg: drift.Value((nut['phosphorus_mg'] as num?)?.toDouble()),
          potassiumMg: drift.Value((nut['potassium_mg'] as num?)?.toDouble()),
          sodiumMg: drift.Value((nut['sodium_mg'] as num?)?.toDouble()),
          zincMg: drift.Value((nut['zinc_mg'] as num?)?.toDouble()),
          seleniumUg: drift.Value((nut['selenium_ug'] as num?)?.toDouble()),
          vitaminCMg: drift.Value((nut['vitamin_c_mg'] as num?)?.toDouble()),
          vitaminDUg: drift.Value((nut['vitamin_d_ug'] as num?)?.toDouble()),
          vitaminB12Ug: drift.Value((nut['vitamin_b12_ug'] as num?)?.toDouble()),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );

      await db.into(db.fodmapDataTable).insert(
        FodmapDataTableCompanion(
          ingredientId: drift.Value(id),
          fodmapLevel: drift.Value(fod['level'] as String? ?? 'unknown'),
          oligos: drift.Value((fod['oligos'] as num?)?.toInt() ?? 0),
          fructose: drift.Value((fod['fructose'] as num?)?.toInt() ?? 0),
          polyols: drift.Value((fod['polyols'] as num?)?.toInt() ?? 0),
          lactose: drift.Value((fod['lactose'] as num?)?.toInt() ?? 0),
          servingDescription: drift.Value(fod['serving_description'] as String?),
          servingGrams: drift.Value((fod['serving_grams'] as num?)?.toDouble()),
          notes: drift.Value(fod['notes'] as String?),
          source: const drift.Value('llm_enriched'),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );

      if (mounted) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Added "$foodName" to database!'), backgroundColor: Colors.green),
        );
        ref.invalidate(_allIngredientsProvider);
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
