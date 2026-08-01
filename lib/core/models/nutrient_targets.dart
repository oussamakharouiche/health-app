/// ANSES 2021 / EFSA / EU NRV nutrient reference values for an adult male.
/// These are the default targets; users can customize in Settings.
class NutrientTargets {
  // Macronutrients
  final double energyKcal;
  final double proteinG;
  final double fatMinG;
  final double fatMaxG;
  final double saturatedFatMaxG;
  final double carbsMinG;
  final double carbsMaxG;
  final double addedSugarMaxG;
  final double fiberG;
  final double waterL;

  // Vitamins
  final double vitaminAUg;
  final double vitaminB1Mg;
  final double vitaminB2Mg;
  final double vitaminB3Mg;
  final double vitaminB5Mg;
  final double vitaminB6Mg;
  final double vitaminB9Ug;
  final double vitaminB12Ug;
  final double vitaminCMg;
  final double vitaminDUg;
  final double vitaminEMg;
  final double vitaminKUg;

  // Minerals
  final double calciumMg;
  final double ironMg;
  final double magnesiumMg;
  final double phosphorusMg;
  final double potassiumMg;
  final double sodiumMaxMg;
  final double zincMg;
  final double copperMg;
  final double manganeseMg;
  final double seleniumUg;
  final double iodineUg;

  const NutrientTargets({
    // Defaults for adult male, ~2500 kcal (ANSES 2021 / EFSA)
    this.energyKcal = 2500,
    this.proteinG = 80, // 0.83g/kg for 80kg; athletes should increase to 1.6-2.0
    this.fatMinG = 56, // 20% of 2500 kcal
    this.fatMaxG = 97, // 35% of 2500 kcal
    this.saturatedFatMaxG = 28, // <10% of energy
    this.carbsMinG = 281, // 45% of 2500 kcal
    this.carbsMaxG = 375, // 60% of 2500 kcal
    this.addedSugarMaxG = 63, // <10% energy; WHO recommends <5% = 31g
    this.fiberG = 30, // ANSES AI
    this.waterL = 2.5, // EFSA AI for adult male
    // Vitamins (ANSES 2021 PRI unless noted)
    this.vitaminAUg = 750, // ANSES PRI
    this.vitaminB1Mg = 1.1, // ~0.1 mg/MJ at 2500 kcal
    this.vitaminB2Mg = 1.6, // ANSES PRI
    this.vitaminB3Mg = 16.8, // ~1.6 mg NE/MJ at 2500 kcal
    this.vitaminB5Mg = 6, // ANSES AI
    this.vitaminB6Mg = 1.7, // ANSES PRI
    this.vitaminB9Ug = 330, // ANSES PRI (DFE)
    this.vitaminB12Ug = 4.0, // ANSES AI
    this.vitaminCMg = 110, // EFSA PRI
    this.vitaminDUg = 15, // EFSA AI
    this.vitaminEMg = 13, // EFSA AI
    this.vitaminKUg = 70, // EFSA AI
    // Minerals
    this.calciumMg = 950, // ANSES PRI
    this.ironMg = 7, // ANSES PRI (male)
    this.magnesiumMg = 350, // ANSES PRI
    this.phosphorusMg = 700, // EU NRV
    this.potassiumMg = 3500, // EFSA AI
    this.sodiumMaxMg = 2000, // WHO limit
    this.zincMg = 15, // ANSES PRI
    this.copperMg = 1.6, // EFSA AI
    this.manganeseMg = 3.0, // EFSA AI
    this.seleniumUg = 55, // ANSES PRI
    this.iodineUg = 150, // EFSA AI
  });

  /// Creates targets for a specific profile.
  factory NutrientTargets.forProfile({
    required bool isMale,
    required int age,
    required double weightKg,
    required double activityLevel, // 1.2 sedentary; 1.55 moderate; 1.9 intense
  }) {
    final bmr = isMale
        ? 10 * weightKg + 6.25 * 170 - 5 * age + 5 // Mifflin-St Jeor (height assumed 170cm)
        : 10 * weightKg + 6.25 * 160 - 5 * age - 161;
    final tdee = bmr * activityLevel;

    return NutrientTargets(
      energyKcal: tdee.roundToDouble(),
      proteinG: (weightKg * 0.83).roundToDouble(),
      fatMinG: (tdee * 0.20 / 9).roundToDouble(),
      fatMaxG: (tdee * 0.35 / 9).roundToDouble(),
      saturatedFatMaxG: (tdee * 0.10 / 9).roundToDouble(),
      carbsMinG: (tdee * 0.45 / 4).roundToDouble(),
      carbsMaxG: (tdee * 0.60 / 4).roundToDouble(),
      addedSugarMaxG: (tdee * 0.10 / 4).roundToDouble(),
      waterL: isMale ? 2.5 : 2.0,
      ironMg: isMale ? 7 : 16, // women need more due to menstruation
    );
  }

  Map<String, double> toJson() => {
        'energyKcal': energyKcal,
        'proteinG': proteinG,
        'fatMinG': fatMinG,
        'fatMaxG': fatMaxG,
        'saturatedFatMaxG': saturatedFatMaxG,
        'carbsMinG': carbsMinG,
        'carbsMaxG': carbsMaxG,
        'addedSugarMaxG': addedSugarMaxG,
        'fiberG': fiberG,
        'waterL': waterL,
        'vitaminAUg': vitaminAUg,
        'vitaminB1Mg': vitaminB1Mg,
        'vitaminB2Mg': vitaminB2Mg,
        'vitaminB3Mg': vitaminB3Mg,
        'vitaminB5Mg': vitaminB5Mg,
        'vitaminB6Mg': vitaminB6Mg,
        'vitaminB9Ug': vitaminB9Ug,
        'vitaminB12Ug': vitaminB12Ug,
        'vitaminCMg': vitaminCMg,
        'vitaminDUg': vitaminDUg,
        'vitaminEMg': vitaminEMg,
        'vitaminKUg': vitaminKUg,
        'calciumMg': calciumMg,
        'ironMg': ironMg,
        'magnesiumMg': magnesiumMg,
        'phosphorusMg': phosphorusMg,
        'potassiumMg': potassiumMg,
        'sodiumMaxMg': sodiumMaxMg,
        'zincMg': zincMg,
        'copperMg': copperMg,
        'manganeseMg': manganeseMg,
        'seleniumUg': seleniumUg,
        'iodineUg': iodineUg,
      };

  factory NutrientTargets.fromJson(Map<String, dynamic> json) {
    return NutrientTargets(
      energyKcal: (json['energyKcal'] as num?)?.toDouble() ?? 2500,
      proteinG: (json['proteinG'] as num?)?.toDouble() ?? 80,
      fatMinG: (json['fatMinG'] as num?)?.toDouble() ?? 56,
      fatMaxG: (json['fatMaxG'] as num?)?.toDouble() ?? 97,
      saturatedFatMaxG: (json['saturatedFatMaxG'] as num?)?.toDouble() ?? 28,
      carbsMinG: (json['carbsMinG'] as num?)?.toDouble() ?? 281,
      carbsMaxG: (json['carbsMaxG'] as num?)?.toDouble() ?? 375,
      addedSugarMaxG: (json['addedSugarMaxG'] as num?)?.toDouble() ?? 63,
      fiberG: (json['fiberG'] as num?)?.toDouble() ?? 30,
      waterL: (json['waterL'] as num?)?.toDouble() ?? 2.5,
      vitaminAUg: (json['vitaminAUg'] as num?)?.toDouble() ?? 750,
      vitaminB1Mg: (json['vitaminB1Mg'] as num?)?.toDouble() ?? 1.1,
      vitaminB2Mg: (json['vitaminB2Mg'] as num?)?.toDouble() ?? 1.6,
      vitaminB3Mg: (json['vitaminB3Mg'] as num?)?.toDouble() ?? 16.8,
      vitaminB5Mg: (json['vitaminB5Mg'] as num?)?.toDouble() ?? 6,
      vitaminB6Mg: (json['vitaminB6Mg'] as num?)?.toDouble() ?? 1.7,
      vitaminB9Ug: (json['vitaminB9Ug'] as num?)?.toDouble() ?? 330,
      vitaminB12Ug: (json['vitaminB12Ug'] as num?)?.toDouble() ?? 4.0,
      vitaminCMg: (json['vitaminCMg'] as num?)?.toDouble() ?? 110,
      vitaminDUg: (json['vitaminDUg'] as num?)?.toDouble() ?? 15,
      vitaminEMg: (json['vitaminEMg'] as num?)?.toDouble() ?? 13,
      vitaminKUg: (json['vitaminKUg'] as num?)?.toDouble() ?? 70,
      calciumMg: (json['calciumMg'] as num?)?.toDouble() ?? 950,
      ironMg: (json['ironMg'] as num?)?.toDouble() ?? 7,
      magnesiumMg: (json['magnesiumMg'] as num?)?.toDouble() ?? 350,
      phosphorusMg: (json['phosphorusMg'] as num?)?.toDouble() ?? 700,
      potassiumMg: (json['potassiumMg'] as num?)?.toDouble() ?? 3500,
      sodiumMaxMg: (json['sodiumMaxMg'] as num?)?.toDouble() ?? 2000,
      zincMg: (json['zincMg'] as num?)?.toDouble() ?? 15,
      copperMg: (json['copperMg'] as num?)?.toDouble() ?? 1.6,
      manganeseMg: (json['manganeseMg'] as num?)?.toDouble() ?? 3.0,
      seleniumUg: (json['seleniumUg'] as num?)?.toDouble() ?? 55,
      iodineUg: (json['iodineUg'] as num?)?.toDouble() ?? 150,
    );
  }
}
