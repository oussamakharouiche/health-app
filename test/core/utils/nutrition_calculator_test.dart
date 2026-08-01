import 'package:flutter_test/flutter_test.dart';
import 'package:health_app/core/utils/nutrition_calculator.dart';

void main() {
  group('NutritionCalculator.bmr', () {
    test('calculates BMR for adult male correctly', () {
      final result = NutritionCalculator.bmr(
        isMale: true,
        weightKg: 80,
        heightCm: 175,
        age: 30,
      );
      // 10*80 + 6.25*175 - 5*30 + 5 = 800 + 1093.75 - 150 + 5 = 1748.75
      expect(result, closeTo(1748.75, 0.01));
    });

    test('calculates BMR for adult female correctly', () {
      final result = NutritionCalculator.bmr(
        isMale: false,
        weightKg: 60,
        heightCm: 165,
        age: 25,
      );
      // 10*60 + 6.25*165 - 5*25 - 161 = 600 + 1031.25 - 125 - 161 = 1345.25
      expect(result, closeTo(1345.25, 0.01));
    });
  });

  group('NutritionCalculator.tdee', () {
    test('applies activity factor correctly', () {
      final tdee = NutritionCalculator.tdee(1800, NutritionCalculator.moderateExercise);
      expect(tdee, closeTo(2790, 0.01)); // 1800 * 1.55
    });
  });

  group('NutritionCalculator.exerciseCalories', () {
    test('calculates calories from MET value', () {
      final calories = NutritionCalculator.exerciseCalories(
        metValue: 8.0, // running
        weightKg: 80,
        durationHours: 0.5, // 30 min
      );
      expect(calories, closeTo(320, 0.01)); // 8 * 80 * 0.5
    });
  });
}
