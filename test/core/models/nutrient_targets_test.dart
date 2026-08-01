import 'package:flutter_test/flutter_test.dart';
import 'package:health_app/core/models/nutrient_targets.dart';

void main() {
  group('NutrientTargets', () {
    test('default constructor uses ANSES 2021 male adult values', () {
      const targets = NutrientTargets();
      expect(targets.energyKcal, 2500);
      expect(targets.proteinG, 80);
      expect(targets.calciumMg, 950);
      expect(targets.ironMg, 7);
      expect(targets.vitaminB12Ug, 4.0);
      expect(targets.zincMg, 15);
    });

    test('forProfile sets iron higher for female', () {
      final female = NutrientTargets.forProfile(
        isMale: false,
        age: 30,
        weightKg: 65,
        activityLevel: 1.55,
      );
      expect(female.ironMg, 16); // women need more
      expect(female.waterL, 2.0); // lower than male 2.5
    });

    test('forProfile calculates protein from weight', () {
      final targets = NutrientTargets.forProfile(
        isMale: true,
        age: 25,
        weightKg: 90,
        activityLevel: 1.2,
      );
      expect(targets.proteinG, 75); // 90 * 0.83 = 74.7, rounded to 75
    });

    test('toJson and fromJson roundtrip', () {
      const original = NutrientTargets();
      final json = original.toJson();
      final restored = NutrientTargets.fromJson(json);
      expect(restored.energyKcal, original.energyKcal);
      expect(restored.calciumMg, original.calciumMg);
      expect(restored.vitaminDUg, original.vitaminDUg);
      expect(restored.seleniumUg, original.seleniumUg);
    });
  });
}
