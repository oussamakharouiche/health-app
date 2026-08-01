import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Standalone reference catalog: browse all ingredients with FODMAP profile,
/// nutritional data, and full-text search.
class FoodDatabaseScreen extends ConsumerWidget {
  const FoodDatabaseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Database'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // TODO: filter bottom sheet
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: SearchBar(
              hintText: 'Search 3,500+ ingredients...',
              leading: const Icon(Icons.search),
              trailing: [
                IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // FODMAP level quick filters
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                FilterChip(
                  label: const Text('All'),
                  selected: true,
                  onSelected: (_) {},
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text('Low FODMAP'),
                  selected: false,
                  onSelected: (_) {},
                  avatar: const Icon(Icons.circle, color: Colors.green, size: 12),
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text('Moderate'),
                  selected: false,
                  onSelected: (_) {},
                  avatar: const Icon(Icons.circle, color: Colors.orange, size: 12),
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text('High'),
                  selected: false,
                  onSelected: (_) {},
                  avatar: const Icon(Icons.circle, color: Colors.red, size: 12),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Results placeholder
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.food_bank),
                  title: Text('Ingredient #${index + 1}'),
                  subtitle: const Text('Category · kcal · protein'),
                  trailing: const Icon(Icons.circle, color: Colors.green, size: 12),
                  onTap: () {
                    // TODO: navigate to food detail
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
