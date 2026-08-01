/// Calculates cumulative FODMAP load per meal to detect stacking.
class FodmapCalculator {
  /// Returns a score 0-8 representing total FODMAP load.
  /// Each FODMAP sub-type contributes 0-2 points based on its level
  /// multiplied by the serving ratio (actual grams / safe serving grams).
  static double calculateLoad({
    required int oligos,
    required int fructose,
    required int polyols,
    required int lactose,
    required double amountGrams,
    required double safeServingGrams,
  }) {
    if (safeServingGrams <= 0) return 0;
    final ratio = amountGrams / safeServingGrams;
    return (oligos + fructose + polyols + lactose) * ratio;
  }

  /// Returns the overall FODMAP level for a cumulative load.
  static String classifyLoad(double load) {
    if (load <= 2) return 'low';
    if (load <= 4) return 'moderate';
    return 'high';
  }
}
