import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/database_provider.dart';
import 'shared/theme/app_theme.dart';
import 'shared/router/app_router.dart';

final _initializedProvider = FutureProvider<bool>((ref) async {
  final seedService = ref.watch(seedServiceProvider);
  return seedService.seedIfEmpty();
});

class HealthApp extends ConsumerWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    // Trigger seed loading (ignore the result; app works either way)
    ref.watch(_initializedProvider);

    return MaterialApp.router(
      title: 'Health Journey',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
