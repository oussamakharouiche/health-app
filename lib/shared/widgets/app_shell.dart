import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 900;

    if (isWide) {
      return _WideLayout(navigationShell: navigationShell);
    } else {
      return _NarrowLayout(navigationShell: navigationShell);
    }
  }
}

class _WideLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const _WideLayout({required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: navigationShell.currentIndex,
            labelType: NavigationRailLabelType.all,
            onDestinationSelected: (index) {
              navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              );
            },
            leading: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Icon(
                    Icons.favorite,
                    color: Theme.of(context).colorScheme.primary,
                    size: 32,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.smart_toy_outlined),
                  tooltip: 'AI Assistant',
                  onPressed: () => context.go('/ai-assistant'),
                ),
                IconButton(
                  icon: const Icon(Icons.settings_outlined),
                  tooltip: 'Settings',
                  onPressed: () => context.go('/settings'),
                ),
              ],
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.menu_book_outlined),
                selectedIcon: Icon(Icons.menu_book),
                label: Text('Food DB'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.set_meal_outlined),
                selectedIcon: Icon(Icons.set_meal),
                label: Text('Recipes'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.edit_note_outlined),
                selectedIcon: Icon(Icons.edit_note),
                label: Text('Diary'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.calendar_month_outlined),
                selectedIcon: Icon(Icons.calendar_month),
                label: Text('Plan'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                selectedIcon: Icon(Icons.shopping_cart),
                label: Text('Shop'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.fitness_center_outlined),
                selectedIcon: Icon(Icons.fitness_center),
                label: Text('Train'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.insights_outlined),
                selectedIcon: Icon(Icons.insights),
                label: Text('Stats'),
              ),
            ],
          ),
          const VerticalDivider(width: 1),
          Expanded(
            child: navigationShell,
          ),
        ],
      ),
    );
  }
}

class _NarrowLayout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const _NarrowLayout({required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      floatingActionButton: FloatingActionButton.small(
        heroTag: 'ai-assistant',
        onPressed: () => context.go('/ai-assistant'),
        child: const Icon(Icons.smart_toy_outlined),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Food',
          ),
          NavigationDestination(
            icon: Icon(Icons.set_meal_outlined),
            label: 'Recipes',
          ),
          NavigationDestination(
            icon: Icon(Icons.edit_note_outlined),
            label: 'Diary',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Plan',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}
