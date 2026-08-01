import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:health_app/app.dart';
import 'package:health_app/core/services/database_provider.dart';

void main() {
  testWidgets('App renders without crashing', (WidgetTester tester) async {
    // Override the database provider with a mock
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWith((ref) {
            throw UnimplementedError('DB not available in tests; use test helpers');
          }),
        ],
        child: const HealthApp(),
      ),
    );

    // App should show loading state; it will error because the db can't connect
    // in a headless test. This verifies the widget tree builds without crashes.
    await tester.pump();
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
