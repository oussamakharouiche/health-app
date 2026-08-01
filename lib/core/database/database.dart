import 'package:drift/drift.dart';

import 'tables.dart';
import 'connect_stub.dart'
    if (dart.library.js_interop) 'connect_web.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  Ingredients,
  NutritionDataTable,
  FodmapDataTable,
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
  AppDatabase() : super(openConnection('health_app'));

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          if (from < 3) {
            await m.createAll();
          }
        },
      );
}
