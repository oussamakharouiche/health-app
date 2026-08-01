/// BMR and TDEE calculators using Mifflin-St Jeor equation.
class NutritionCalculator {
  /// Basal Metabolic Rate (kcal/day).
  static double bmr({
    required bool isMale,
    required double weightKg,
    required double heightCm,
    required int age,
  }) {
    if (isMale) {
      return 10 * weightKg + 6.25 * heightCm - 5 * age + 5;
    } else {
      return 10 * weightKg + 6.25 * heightCm - 5 * age - 161;
    }
  }

  /// Total Daily Energy Expenditure.
  static double tdee(double bmr, double activityFactor) {
    return bmr * activityFactor;
  }

  /// Activity factor presets.
  static const double sedentary = 1.2;
  static const double lightExercise = 1.375; // 1-3 days/week
  static const double moderateExercise = 1.55; // 3-5 days/week
  static const double heavyExercise = 1.725; // 6-7 days/week
  static const double athlete = 1.9; // twice daily

  /// Calories burned during exercise (MET formula).
  /// metValue: Metabolic Equivalent of Task
  /// weightKg: body weight in kg
  /// durationHours: duration of activity
  static double exerciseCalories({
    required double metValue,
    required double weightKg,
    required double durationHours,
  }) {
    return metValue * weightKg * durationHours;
  }
}
