import 'package:drift/drift.dart';

// ─── Ingredients ─────────────────────────────────────────────────────────────

class Ingredients extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get nameFr => text().nullable()();
  TextColumn get category => text().nullable()();
  TextColumn get brand => text().nullable()();
  TextColumn get barcode => text().nullable()();
  BoolColumn get isCustom => boolean().withDefault(const Constant(false))();
  TextColumn get source => text().nullable()(); // usda, ciqual, open_food_facts, custom, llm_enriched
  TextColumn get sourceId => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Nutrition Data (per 100g) ──────────────────────────────────────────────

class NutritionDataTable extends Table {
  TextColumn get ingredientId => text().references(Ingredients, #id)();
  RealColumn get energyKcal => real().nullable()();
  RealColumn get energyKj => real().nullable()();
  RealColumn get proteinG => real().nullable()();
  RealColumn get fatTotalG => real().nullable()();
  RealColumn get fatSaturatedG => real().nullable()();
  RealColumn get fatMonoG => real().nullable()();
  RealColumn get fatPolyG => real().nullable()();
  RealColumn get carbsG => real().nullable()();
  RealColumn get sugarsG => real().nullable()();
  RealColumn get fiberG => real().nullable()();
  RealColumn get starchG => real().nullable()();
  RealColumn get waterG => real().nullable()();
  RealColumn get alcoholG => real().nullable()();
  // Minerals
  RealColumn get calciumMg => real().nullable()();
  RealColumn get ironMg => real().nullable()();
  RealColumn get magnesiumMg => real().nullable()();
  RealColumn get phosphorusMg => real().nullable()();
  RealColumn get potassiumMg => real().nullable()();
  RealColumn get sodiumMg => real().nullable()();
  RealColumn get zincMg => real().nullable()();
  RealColumn get copperMg => real().nullable()();
  RealColumn get manganeseMg => real().nullable()();
  RealColumn get seleniumUg => real().nullable()();
  RealColumn get iodineUg => real().nullable()();
  // Vitamins
  RealColumn get vitaminAUg => real().nullable()();
  RealColumn get vitaminB1Mg => real().nullable()();
  RealColumn get vitaminB2Mg => real().nullable()();
  RealColumn get vitaminB3Mg => real().nullable()();
  RealColumn get vitaminB5Mg => real().nullable()();
  RealColumn get vitaminB6Mg => real().nullable()();
  RealColumn get vitaminB9Ug => real().nullable()();
  RealColumn get vitaminB12Ug => real().nullable()();
  RealColumn get vitaminCMg => real().nullable()();
  RealColumn get vitaminDUg => real().nullable()();
  RealColumn get vitaminEMg => real().nullable()();
  RealColumn get vitaminKUg => real().nullable()();

  @override
  Set<Column> get primaryKey => {ingredientId};
}

// ─── FODMAP Data ─────────────────────────────────────────────────────────────

class FodmapDataTable extends Table {
  TextColumn get ingredientId => text().references(Ingredients, #id)();
  TextColumn get fodmapLevel => text()(); // validated in app layer: 'low', 'moderate', 'high'
  IntColumn get oligos => integer().withDefault(const Constant(0))();
  IntColumn get fructose => integer().withDefault(const Constant(0))();
  IntColumn get polyols => integer().withDefault(const Constant(0))();
  IntColumn get lactose => integer().withDefault(const Constant(0))();
  TextColumn get servingDescription => text().nullable()();
  RealColumn get servingGrams => real().nullable()();
  TextColumn get fodmapGroups => text().nullable()(); // JSON array
  TextColumn get notes => text().nullable()();
  TextColumn get source => text().nullable()();
  DateTimeColumn get lastVerified => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {ingredientId};
}

// ─── Recipes ─────────────────────────────────────────────────────────────────

class Recipes extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get instructions => text().nullable()();
  IntColumn get prepTimeMin => integer().nullable()();
  IntColumn get cookTimeMin => integer().nullable()();
  RealColumn get defaultServings => real().withDefault(const Constant(1))();
  TextColumn get tags => text().nullable()(); // JSON array
  BoolColumn get isMealPrep => boolean().withDefault(const Constant(false))();
  BoolColumn get isQuickBreakfast => boolean().withDefault(const Constant(false))();
  TextColumn get imagePath => text().nullable()();
  TextColumn get sourceUrl => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class RecipeIngredients extends Table {
  TextColumn get id => text()();
  TextColumn get recipeId => text().references(Recipes, #id)();
  TextColumn get ingredientId => text().references(Ingredients, #id)();
  RealColumn get amountGrams => real()();
  TextColumn get amountDisplay => text().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Food Log ────────────────────────────────────────────────────────────────

class FoodLogs extends Table {
  TextColumn get id => text()();
  DateTimeColumn get date => dateTime()();
  TextColumn get mealType => text()(); // breakfast, lunch, dinner, snack_1, snack_2
  TextColumn get recipeId => text().references(Recipes, #id).nullable()();
  TextColumn get ingredientId => text().references(Ingredients, #id).nullable()();
  RealColumn get amountGrams => real()();
  RealColumn get fodmapLoadScore => real().nullable()();
  TextColumn get notes => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Supplements ─────────────────────────────────────────────────────────────

class Supplements extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get brand => text().nullable()();
  RealColumn get dosagePerUnit => real().nullable()();
  TextColumn get unit => text().nullable()(); // mg, ug, IU, g
  TextColumn get nutrientsProvided => text().nullable()(); // JSON
  TextColumn get scheduleTime => text().nullable()(); // morning, noon, evening, bedtime
  BoolColumn get withFood => boolean().withDefault(const Constant(true))();
  IntColumn get stockCurrent => integer().nullable()();
  IntColumn get stockWarningAt => integer().withDefault(const Constant(5))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}

class SupplementLogs extends Table {
  TextColumn get id => text()();
  TextColumn get supplementId => text().references(Supplements, #id)();
  DateTimeColumn get date => dateTime()();
  TextColumn get time => text().nullable()();
  IntColumn get taken => integer().withDefault(const Constant(0))(); // 0=missed, 1=taken, 2=skipped
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Workouts ────────────────────────────────────────────────────────────────

class Workouts extends Table {
  TextColumn get id => text()();
  DateTimeColumn get date => dateTime()();
  TextColumn get templateId => text()
      .references(WorkoutTemplates, #id).nullable()();
  TextColumn get name => text().nullable()();
  IntColumn get durationMin => integer().nullable()();
  RealColumn get caloriesEst => real().nullable()();
  RealColumn get rpeAvg => real().nullable()();
  TextColumn get notes => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

class WorkoutSets extends Table {
  TextColumn get id => text()();
  TextColumn get workoutId => text().references(Workouts, #id)();
  TextColumn get exerciseId => text().references(Exercises, #id)();
  IntColumn get setNumber => integer()();
  IntColumn get reps => integer().nullable()();
  RealColumn get weightKg => real().nullable()();
  RealColumn get rpe => real().nullable()();
  BoolColumn get isWarmup => boolean().withDefault(const Constant(false))();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class WorkoutTemplates extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  TextColumn get exercises => text().nullable()(); // JSON

  @override
  Set<Column> get primaryKey => {id};
}

class Exercises extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get category => text().nullable()();
  TextColumn get primaryMuscles => text().nullable()(); // JSON
  TextColumn get secondaryMuscles => text().nullable()(); // JSON
  TextColumn get equipment => text().nullable()(); // JSON
  RealColumn get metValue => real().nullable()();
  TextColumn get description => text().nullable()();
  BoolColumn get isCustom => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Habits ──────────────────────────────────────────────────────────────────

class Habits extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get type => text()(); // quit_addiction, moderation, build_habit
  TextColumn get targetType => text()();
  RealColumn get targetValue => real().nullable()();
  TextColumn get unit => text().nullable()();
  DateTimeColumn get startDate => dateTime()();
  RealColumn get moneySavedPerDay => real().nullable()();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}

class HabitLogs extends Table {
  TextColumn get id => text()();
  TextColumn get habitId => text().references(Habits, #id)();
  DateTimeColumn get date => dateTime()();
  TextColumn get status => text()(); // clean, relapse, intentional_use
  RealColumn get amount => real().nullable()();
  TextColumn get trigger => text().nullable()();
  IntColumn get severity => integer().nullable()(); // 1-10
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Symptoms ────────────────────────────────────────────────────────────────

class SymptomLogs extends Table {
  TextColumn get id => text()();
  DateTimeColumn get date => dateTime()();
  TextColumn get symptomType => text()();
  IntColumn get severity => integer().nullable()(); // 0-10
  IntColumn get bristolStoolType => integer().nullable()(); // 1-7
  TextColumn get suspectedTriggerFood => text().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Body Measurements ───────────────────────────────────────────────────────

class BodyMeasurements extends Table {
  TextColumn get id => text()();
  DateTimeColumn get date => dateTime()();
  RealColumn get weightKg => real().nullable()();
  RealColumn get bodyFatPct => real().nullable()();
  RealColumn get waistCm => real().nullable()();
  RealColumn get chestCm => real().nullable()();
  RealColumn get armsCm => real().nullable()();
  RealColumn get thighsCm => real().nullable()();
  RealColumn get hipsCm => real().nullable()();
  RealColumn get neckCm => real().nullable()();
  TextColumn get notes => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Pantry ──────────────────────────────────────────────────────────────────

class PantryItems extends Table {
  TextColumn get id => text()();
  TextColumn get ingredientId => text().references(Ingredients, #id).nullable()();
  TextColumn get name => text()();
  TextColumn get quantityText => text().nullable()();
  RealColumn get quantityGramsEst => real().nullable()();
  BoolColumn get isStaple => boolean().withDefault(const Constant(false))();
  TextColumn get lowStockThreshold => text().nullable()();
  TextColumn get category => text().nullable()();
  DateTimeColumn get purchasedAt => dateTime().nullable()();
  DateTimeColumn get expiryDate => dateTime().nullable()();
  TextColumn get storageLocation => text().nullable()(); // fridge, freezer, room_temp
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Shopping Lists ──────────────────────────────────────────────────────────

class ShoppingLists extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get weekStart => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  @override
  Set<Column> get primaryKey => {id};
}

class ShoppingItems extends Table {
  TextColumn get id => text()();
  TextColumn get listId => text().references(ShoppingLists, #id)();
  TextColumn get ingredientId => text().references(Ingredients, #id).nullable()();
  TextColumn get name => text()();
  TextColumn get amount => text().nullable()();
  TextColumn get category => text().nullable()();
  BoolColumn get isChecked => boolean().withDefault(const Constant(false))();
  TextColumn get fodmapLevel => text().nullable()();
  BoolColumn get isFromMealPlan => boolean().withDefault(const Constant(true))();
  TextColumn get notes => text().nullable()();
  IntColumn get sortOrder => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── LLM Cache ───────────────────────────────────────────────────────────────

class LlmCache extends Table {
  TextColumn get id => text()();
  TextColumn get cacheKey => text()();
  TextColumn get provider => text()();
  TextColumn get model => text()();
  TextColumn get promptHash => text()();
  TextColumn get responseJson => text()();
  IntColumn get tokensUsed => integer().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get expiresAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ─── Settings ────────────────────────────────────────────────────────────────

class Settings extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {key};
}
