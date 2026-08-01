import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_app/app.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: HealthApp(),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Food Diary'), findsWidgets);
  });
}
