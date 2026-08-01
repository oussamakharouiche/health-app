import 'package:flutter_test/flutter_test.dart';
import 'package:health_app/core/utils/fodmap_calculator.dart';

void main() {
  group('FodmapCalculator.calculateLoad', () {
    test('returns zero when safeServingGrams is zero', () {
      final load = FodmapCalculator.calculateLoad(
        oligos: 2,
        fructose: 1,
        polyols: 0,
        lactose: 0,
        amountGrams: 100,
        safeServingGrams: 0,
      );
      expect(load, 0);
    });

    test('scales linearly with serving size ratio', () {
      final load = FodmapCalculator.calculateLoad(
        oligos: 0,
        fructose: 2,
        polyols: 1,
        lactose: 1,
        amountGrams: 200,
        safeServingGrams: 100,
      );
      // (0+2+1+1) * (200/100) = 4 * 2 = 8
      expect(load, 8);
    });

    test('returns low load for small serving of safe food', () {
      final load = FodmapCalculator.calculateLoad(
        oligos: 0,
        fructose: 0,
        polyols: 0,
        lactose: 0,
        amountGrams: 500,
        safeServingGrams: 100,
      );
      // (0+0+0+0) * 5 = 0
      expect(load, 0);
    });
  });

  group('FodmapCalculator.classifyLoad', () {
    test('classifies <=2 as low', () {
      expect(FodmapCalculator.classifyLoad(0), 'low');
      expect(FodmapCalculator.classifyLoad(2), 'low');
    });

    test('classifies >2 and <=4 as moderate', () {
      expect(FodmapCalculator.classifyLoad(2.1), 'moderate');
      expect(FodmapCalculator.classifyLoad(4), 'moderate');
    });

    test('classifies >4 as high', () {
      expect(FodmapCalculator.classifyLoad(4.1), 'high');
      expect(FodmapCalculator.classifyLoad(8), 'high');
    });
  });
}
