import '../database/database.dart';
import 'nutrition_engine.dart';

/// Manages food diary entries: CRUD, daily/weekly aggregates.
class FoodLogService {
  final AppDatabase _db;

  FoodLogService(this._db);

  /// Returns all entries for a given date.
  Future<List<FoodLog>> entriesForDate(DateTime date) async {
    final allEntries = await _db.select(_db.foodLogs).get();
    return allEntries.where((e) {
      return e.date.year == date.year &&
          e.date.month == date.month &&
          e.date.day == date.day;
    }).toList();
  }

  /// Removes an entry from the food log.
  Future<void> removeEntry(String id) async {
    final stmt = _db.delete(_db.foodLogs)
      ..where((t) => t.id.equals(id));
    await stmt.go();
  }

  /// Returns the daily nutrition summary for a given date.
  Future<DailyNutritionSummary> dailySummary(DateTime date) async {
    final entries = await entriesForDate(date);
    final ingredientIds = entries
        .where((e) => e.ingredientId != null)
        .map((e) => e.ingredientId!)
        .toSet()
        .toList();

    if (ingredientIds.isEmpty) return DailyNutritionSummary.empty();

    final nutritionRows = await _db.select(_db.nutritionDataTable).get();
    final nutritionMap = {for (final n in nutritionRows) n.ingredientId: n};

    return NutritionEngine.calculateDaily(
      entries: entries,
      nutritionMap: nutritionMap,
    );
  }

  /// Returns the weekly average nutrition.
  Future<DailyNutritionSummary> weeklyAverage(DateTime today) async {
    final summaries = <DailyNutritionSummary>[];
    for (var i = 0; i < 7; i++) {
      final date = today.subtract(Duration(days: i));
      summaries.add(await dailySummary(date));
    }
    return NutritionEngine.weeklyAverage(summaries);
  }
}
