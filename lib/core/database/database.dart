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
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          // Add columns introduced in v3 and v4 without dropping data.
          if (from < 3) {
            await m.addColumn(pantryItems, pantryItems.purchasedAt);
          }
          if (from < 4) {
            await m.addColumn(pantryItems, pantryItems.expiryDate);
            await m.addColumn(pantryItems, pantryItems.storageLocation);
          }
        },
      );
}
