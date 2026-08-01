import '../database/database.dart';
import '../utils/fodmap_calculator.dart';

/// Determines FODMAP status for foods and meals.
class FodmapEngine {
  static String trafficLight(String? fodmapLevel) {
    switch (fodmapLevel) {
      case 'low': return 'green';
      case 'moderate': return 'amber';
      case 'high': return 'red';
      default: return 'grey';
    }
  }

  static bool isEliminationSafe(String? fodmapLevel) {
    return fodmapLevel == 'low';
  }

  static double mealFodmapLoad({
    required List<FoodLog> entries,
    required Map<String, FodmapDataTableData> fodmapMap,
  }) {
    double totalLoad = 0;
    for (final entry in entries) {
      final fodmap = fodmapMap[entry.ingredientId];
      if (fodmap == null) continue;
      final safeGrams = fodmap.servingGrams ?? 100;
      totalLoad += FodmapCalculator.calculateLoad(
        oligos: fodmap.oligos,
        fructose: fodmap.fructose,
        polyols: fodmap.polyols,
        lactose: fodmap.lactose,
        amountGrams: entry.amountGrams,
        safeServingGrams: safeGrams,
      );
    }
    return totalLoad;
  }

  static String mealStatus(double load) {
    return FodmapCalculator.classifyLoad(load);
  }
}
