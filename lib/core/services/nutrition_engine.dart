import '../database/database.dart';

/// Aggregates nutrition data from food logs and compares against targets.
class NutritionEngine {
  /// Sums all nutrient values from food log entries.
  static DailyNutritionSummary calculateDaily({
    required List<FoodLog> entries,
    required Map<String, NutritionDataTableData> nutritionMap,
  }) {
    double energyKcal = 0, proteinG = 0, fatG = 0, carbsG = 0, fiberG = 0;
    double saturatedFatG = 0, sugarsG = 0;
    double calciumMg = 0, ironMg = 0, magnesiumMg = 0, phosphorusMg = 0;
    double potassiumMg = 0, sodiumMg = 0, zincMg = 0, copperMg = 0;
    double manganeseMg = 0, seleniumUg = 0, iodineUg = 0;
    double vitaminAUg = 0, vitaminB1Mg = 0, vitaminB2Mg = 0, vitaminB3Mg = 0;
    double vitaminB5Mg = 0, vitaminB6Mg = 0, vitaminB9Ug = 0, vitaminB12Ug = 0;
    double vitaminCMg = 0, vitaminDUg = 0, vitaminEMg = 0, vitaminKUg = 0;

    for (final entry in entries) {
      final nutrition = nutritionMap[entry.ingredientId];
      if (nutrition == null) continue;

      final factor = entry.amountGrams / 100;

      energyKcal += (nutrition.energyKcal ?? 0) * factor;
      proteinG += (nutrition.proteinG ?? 0) * factor;
      fatG += (nutrition.fatTotalG ?? 0) * factor;
      carbsG += (nutrition.carbsG ?? 0) * factor;
      fiberG += (nutrition.fiberG ?? 0) * factor;
      saturatedFatG += (nutrition.fatSaturatedG ?? 0) * factor;
      sugarsG += (nutrition.sugarsG ?? 0) * factor;

      calciumMg += (nutrition.calciumMg ?? 0) * factor;
      ironMg += (nutrition.ironMg ?? 0) * factor;
      magnesiumMg += (nutrition.magnesiumMg ?? 0) * factor;
      phosphorusMg += (nutrition.phosphorusMg ?? 0) * factor;
      potassiumMg += (nutrition.potassiumMg ?? 0) * factor;
      sodiumMg += (nutrition.sodiumMg ?? 0) * factor;
      zincMg += (nutrition.zincMg ?? 0) * factor;
      copperMg += (nutrition.copperMg ?? 0) * factor;
      manganeseMg += (nutrition.manganeseMg ?? 0) * factor;
      seleniumUg += (nutrition.seleniumUg ?? 0) * factor;
      iodineUg += (nutrition.iodineUg ?? 0) * factor;

      vitaminAUg += (nutrition.vitaminAUg ?? 0) * factor;
      vitaminB1Mg += (nutrition.vitaminB1Mg ?? 0) * factor;
      vitaminB2Mg += (nutrition.vitaminB2Mg ?? 0) * factor;
      vitaminB3Mg += (nutrition.vitaminB3Mg ?? 0) * factor;
      vitaminB5Mg += (nutrition.vitaminB5Mg ?? 0) * factor;
      vitaminB6Mg += (nutrition.vitaminB6Mg ?? 0) * factor;
      vitaminB9Ug += (nutrition.vitaminB9Ug ?? 0) * factor;
      vitaminB12Ug += (nutrition.vitaminB12Ug ?? 0) * factor;
      vitaminCMg += (nutrition.vitaminCMg ?? 0) * factor;
      vitaminDUg += (nutrition.vitaminDUg ?? 0) * factor;
      vitaminEMg += (nutrition.vitaminEMg ?? 0) * factor;
      vitaminKUg += (nutrition.vitaminKUg ?? 0) * factor;
    }

    return DailyNutritionSummary(
      energyKcal: energyKcal, proteinG: proteinG, fatG: fatG,
      carbsG: carbsG, fiberG: fiberG, saturatedFatG: saturatedFatG,
      sugarsG: sugarsG, calciumMg: calciumMg, ironMg: ironMg,
      magnesiumMg: magnesiumMg, phosphorusMg: phosphorusMg,
      potassiumMg: potassiumMg, sodiumMg: sodiumMg, zincMg: zincMg,
      copperMg: copperMg, manganeseMg: manganeseMg,
      seleniumUg: seleniumUg, iodineUg: iodineUg,
      vitaminAUg: vitaminAUg, vitaminB1Mg: vitaminB1Mg,
      vitaminB2Mg: vitaminB2Mg, vitaminB3Mg: vitaminB3Mg,
      vitaminB5Mg: vitaminB5Mg, vitaminB6Mg: vitaminB6Mg,
      vitaminB9Ug: vitaminB9Ug, vitaminB12Ug: vitaminB12Ug,
      vitaminCMg: vitaminCMg, vitaminDUg: vitaminDUg,
      vitaminEMg: vitaminEMg, vitaminKUg: vitaminKUg,
    );
  }

  static DailyNutritionSummary weeklyAverage(List<DailyNutritionSummary> dailies) {
    if (dailies.isEmpty) return DailyNutritionSummary.empty();
    final n = dailies.length;
    return DailyNutritionSummary(
      energyKcal: _avg(dailies.map((d) => d.energyKcal), n),
      proteinG: _avg(dailies.map((d) => d.proteinG), n),
      fatG: _avg(dailies.map((d) => d.fatG), n),
      carbsG: _avg(dailies.map((d) => d.carbsG), n),
      fiberG: _avg(dailies.map((d) => d.fiberG), n),
      saturatedFatG: _avg(dailies.map((d) => d.saturatedFatG), n),
      sugarsG: _avg(dailies.map((d) => d.sugarsG), n),
      calciumMg: _avg(dailies.map((d) => d.calciumMg), n),
      ironMg: _avg(dailies.map((d) => d.ironMg), n),
      magnesiumMg: _avg(dailies.map((d) => d.magnesiumMg), n),
      phosphorusMg: _avg(dailies.map((d) => d.phosphorusMg), n),
      potassiumMg: _avg(dailies.map((d) => d.potassiumMg), n),
      sodiumMg: _avg(dailies.map((d) => d.sodiumMg), n),
      zincMg: _avg(dailies.map((d) => d.zincMg), n),
      copperMg: _avg(dailies.map((d) => d.copperMg), n),
      manganeseMg: _avg(dailies.map((d) => d.manganeseMg), n),
      seleniumUg: _avg(dailies.map((d) => d.seleniumUg), n),
      iodineUg: _avg(dailies.map((d) => d.iodineUg), n),
      vitaminAUg: _avg(dailies.map((d) => d.vitaminAUg), n),
      vitaminB1Mg: _avg(dailies.map((d) => d.vitaminB1Mg), n),
      vitaminB2Mg: _avg(dailies.map((d) => d.vitaminB2Mg), n),
      vitaminB3Mg: _avg(dailies.map((d) => d.vitaminB3Mg), n),
      vitaminB5Mg: _avg(dailies.map((d) => d.vitaminB5Mg), n),
      vitaminB6Mg: _avg(dailies.map((d) => d.vitaminB6Mg), n),
      vitaminB9Ug: _avg(dailies.map((d) => d.vitaminB9Ug), n),
      vitaminB12Ug: _avg(dailies.map((d) => d.vitaminB12Ug), n),
      vitaminCMg: _avg(dailies.map((d) => d.vitaminCMg), n),
      vitaminDUg: _avg(dailies.map((d) => d.vitaminDUg), n),
      vitaminEMg: _avg(dailies.map((d) => d.vitaminEMg), n),
      vitaminKUg: _avg(dailies.map((d) => d.vitaminKUg), n),
    );
  }

  static double _avg(Iterable<double> values, int count) {
    return values.fold(0.0, (a, b) => a + b) / count;
  }
}

class DailyNutritionSummary {
  final double energyKcal, proteinG, fatG, carbsG, fiberG;
  final double saturatedFatG, sugarsG;
  final double calciumMg, ironMg, magnesiumMg, phosphorusMg;
  final double potassiumMg, sodiumMg, zincMg, copperMg;
  final double manganeseMg, seleniumUg, iodineUg;
  final double vitaminAUg, vitaminB1Mg, vitaminB2Mg, vitaminB3Mg;
  final double vitaminB5Mg, vitaminB6Mg, vitaminB9Ug, vitaminB12Ug;
  final double vitaminCMg, vitaminDUg, vitaminEMg, vitaminKUg;

  const DailyNutritionSummary({
    this.energyKcal = 0, this.proteinG = 0, this.fatG = 0, this.carbsG = 0,
    this.fiberG = 0, this.saturatedFatG = 0, this.sugarsG = 0,
    this.calciumMg = 0, this.ironMg = 0, this.magnesiumMg = 0, this.phosphorusMg = 0,
    this.potassiumMg = 0, this.sodiumMg = 0, this.zincMg = 0, this.copperMg = 0,
    this.manganeseMg = 0, this.seleniumUg = 0, this.iodineUg = 0,
    this.vitaminAUg = 0, this.vitaminB1Mg = 0, this.vitaminB2Mg = 0, this.vitaminB3Mg = 0,
    this.vitaminB5Mg = 0, this.vitaminB6Mg = 0, this.vitaminB9Ug = 0, this.vitaminB12Ug = 0,
    this.vitaminCMg = 0, this.vitaminDUg = 0, this.vitaminEMg = 0, this.vitaminKUg = 0,
  });

  factory DailyNutritionSummary.empty() => const DailyNutritionSummary();
}
