import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/food_database/food_database_screen.dart';
import '../../features/recipe_database/recipe_database_screen.dart';
import '../../features/food_diary/food_diary_screen.dart';
import '../../features/meal_planner/meal_planner_screen.dart';
import '../../features/shopping_list/shopping_list_screen.dart';
import '../../features/workout_logger/workout_screen.dart';
import '../../features/insights/insights_screen.dart';
import '../../features/ai_assistant/ai_assistant_screen.dart';
import '../../features/settings/settings_screen.dart';
import '../widgets/app_shell.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/food-database',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppShell(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(path: '/food-database', builder: (_, __) => const FoodDatabaseScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/recipes', builder: (_, __) => const RecipeDatabaseScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/food-diary', builder: (_, __) => const FoodDiaryScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/meal-planner', builder: (_, __) => const MealPlannerScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/shopping-list', builder: (_, __) => const ShoppingListScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/workouts', builder: (_, __) => const WorkoutScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: '/insights', builder: (_, __) => const InsightsScreen()),
          ]),
        ],
      ),
      GoRoute(path: '/ai-assistant', builder: (_, __) => const AIAssistantScreen()),
      GoRoute(path: '/settings', builder: (_, __) => const SettingsScreen()),
    ],
  );
});
