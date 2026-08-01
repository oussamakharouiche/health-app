import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  Ingredients,
  NutritionData,
  FodmapData,
  Recipes,
  RecipeIngredients,
  FoodLogs,
  Supplements,
  SupplementLogs,
  Workouts,
  WorkoutSets,
  WorkoutTemplates,
  Exercises,
  Habits,
  HabitLogs,
  SymptomLogs,
  BodyMeasurements,
  PantryItems,
  ShoppingLists,
  ShoppingItems,
  LlmCache,
  Settings,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          if (from < 2) {
            await m.createAll();
          }
        },
      );
}

QueryExecutor _openConnection() {
  return driftDatabase(name: 'health_app');
}
