import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/database/database.dart';
import '../../core/services/database_provider.dart';
import 'recipe_detail_screen.dart';

/// Browse all recipes grouped by meal type, filterable by tags, with search.
class RecipeDatabaseScreen extends ConsumerStatefulWidget {
  const RecipeDatabaseScreen({super.key});

  @override
  ConsumerState<RecipeDatabaseScreen> createState() => _RecipeDatabaseScreenState();
}

class _RecipeDatabaseScreenState extends ConsumerState<RecipeDatabaseScreen> {
  String _search = '';
  String? _mealTypeFilter;
  final Set<String> _tagFilters = {};

  static const _allTags = [
    'high-protein', 'low-fodmap', 'quick-breakfast',
    'meal-prep', 'microwave-friendly', 'vegetarian', 'batch-cook',
  ];

  static const _mealTypes = ['breakfast', 'lunch', 'dinner', 'snack'];

  @override
  Widget build(BuildContext context) {
    final recipesAsync = ref.watch(_allRecipesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
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
                hintText: 'Search recipes by name or ingredient...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
              onChanged: (v) => setState(() => _search = v),
            ),
          ),
          _buildMealTypeChips(),
          const SizedBox(height: 4),
          _buildTagsRow(),
          const SizedBox(height: 8),
          Expanded(
            child: recipesAsync.when(
              data: (recipes) => _buildRecipeList(recipes),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMealTypeChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _chip('All', _mealTypeFilter == null, () => setState(() => _mealTypeFilter = null)),
          const SizedBox(width: 8),
          for (final t in _mealTypes) ...[
            _chip(t.capitalize(), _mealTypeFilter == t, () => setState(() => _mealTypeFilter = _mealTypeFilter == t ? null : t)),
            const SizedBox(width: 8),
          ],
        ],
      ),
    );
  }

  Widget _buildTagsRow() {
    final activeTags = _tagFilters.toSet();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: _allTags.map((tag) {
          final active = activeTags.contains(tag);
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FilterChip(
              label: Text(tag.displayName(), style: const TextStyle(fontSize: 12)),
              selected: active,
              onSelected: (v) {
                setState(() {
                  if (v) { activeTags.add(tag); } else { activeTags.remove(tag); }
                });
              },
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _chip(String label, bool selected, VoidCallback onTap) {
    return FilterChip(label: Text(label), selected: selected, onSelected: (_) => onTap());
  }

  List<Recipe> _filter(List<Recipe> recipes) {
    return recipes.where((r) {
      if (_search.isNotEmpty) {
        final t = _search.toLowerCase();
        if (!r.name.toLowerCase().contains(t) && (r.description?.toLowerCase().contains(t) != true)) return false;
      }
      if (_mealTypeFilter != null) {
        final tags = _parseTags(r.tags);
        if (!tags.contains(_mealTypeFilter)) return false;
      }
      if (_tagFilters.isNotEmpty) {
        final tags = _parseTags(r.tags);
        if (!_tagFilters.any((f) => tags.contains(f))) return false;
      }
      return true;
    }).toList();
  }

  Widget _buildRecipeList(List<Recipe> recipes) {
    final filtered = _filter(recipes);
    if (filtered.isEmpty) {
      return const Center(child: Text('No recipes match your filters'));
    }
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: filtered.length,
      itemBuilder: (context, index) {
        final recipe = filtered[index];
        final tags = _parseTags(recipe.tags);
        final fodmapTag = tags.contains('low-fodmap');
        final proteinTag = tags.contains('high-protein');
        final mealTypes = tags.where((t) => _mealTypes.contains(t)).toList();

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => RecipeDetailScreen(recipeId: recipe.id)),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: _mealColor(mealTypes.isNotEmpty ? mealTypes.first : null),
                    child: Icon(_mealIcon(mealTypes.isNotEmpty ? mealTypes.first : null), color: Colors.white, size: 22),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(recipe.name, style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(height: 4),
                        Text(
                          '${recipe.prepTimeMin != null ? '${recipe.prepTimeMin! + (recipe.cookTimeMin ?? 0)} min' : ''}'
                          '${recipe.description != null ? ' · ${recipe.description}' : ''}',
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 4,
                          children: [
                            if (mealTypes.isNotEmpty)
                              _miniChip(mealTypes.first, _mealColor(mealTypes.first)),
                            if (fodmapTag)
                              _miniChip('low FODMAP', Colors.green),
                            if (proteinTag)
                              _miniChip('high protein', Colors.blue),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _miniChip(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withAlpha(25),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(label, style: TextStyle(fontSize: 10, color: color, fontWeight: FontWeight.w500)),
    );
  }

  Color _mealColor(String? type) {
    switch (type) {
      case 'breakfast': return Colors.orange;
      case 'lunch': return Colors.blue;
      case 'dinner': return Colors.purple;
      case 'snack': return Colors.teal;
      default: return Colors.grey;
    }
  }

  IconData _mealIcon(String? type) {
    switch (type) {
      case 'breakfast': return Icons.wb_sunny;
      case 'lunch': return Icons.wb_cloudy;
      case 'dinner': return Icons.nightlight_round;
      case 'snack': return Icons.cookie;
      default: return Icons.restaurant;
    }
  }

  List<String> _parseTags(String? tagsJson) {
    if (tagsJson == null || tagsJson.isEmpty) return [];
    try {
      return (RegExp(r'"(.*?)"').allMatches(tagsJson).map((m) => m.group(1)!).toList());
    } catch (_) {
      return [];
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
              Text('Filter by Tags', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: _allTags.map((tag) {
                  final active = _tagFilters.contains(tag);
                  return FilterChip(
                    label: Text(tag.displayName()),
                    selected: active,
                    onSelected: (v) {
                      setState(() {
                        if (v) { _tagFilters.add(tag); } else { _tagFilters.remove(tag); }
                      });
                      Navigator.pop(ctx);
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  setState(() => _tagFilters.clear());
                  Navigator.pop(ctx);
                },
                child: const Text('Clear all filters'),
              ),
            ],
          ),
        );
      },
    );
  }
}

extension _StringExt on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
  String displayName() => replaceAll('-', ' ');
}

final _allRecipesProvider = FutureProvider<List<Recipe>>((ref) async {
  final db = ref.watch(databaseProvider);
  return db.select(db.recipes).get();
});
