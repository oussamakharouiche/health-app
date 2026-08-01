import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/database.dart';
import 'seed_service.dart';
import 'food_log_service.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

final seedServiceProvider = Provider<SeedService>((ref) {
  return SeedService(ref.watch(databaseProvider));
});

final foodLogServiceProvider = Provider<FoodLogService>((ref) {
  return FoodLogService(ref.watch(databaseProvider));
});
