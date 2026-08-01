import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;

import '../database/database.dart';
import 'database_provider.dart';
import 'llm_service.dart';

/// Stores and retrieves LLM configuration from the Settings table.
class LLMConfigService {
  final AppDatabase _db;
  static const _settingsKey = 'llm_config';

  LLMConfigService(this._db);

  Future<LLMConfig> load() async {
    final row = await (_db.select(_db.settings)
          ..where((t) => t.key.equals(_settingsKey)))
        .getSingleOrNull();
    if (row == null) return LLMConfig.deepseek;
    try {
      return LLMConfig.fromJson(jsonDecode(row.value));
    } catch (_) {
      return LLMConfig.deepseek;
    }
  }

  Future<void> save(LLMConfig config) async {
    await _db.into(_db.settings).insert(
      SettingsCompanion(
        key: drift.Value(_settingsKey),
        value: drift.Value(jsonEncode(config.toJson())),
        updatedAt: drift.Value(DateTime.now()),
      ),
      mode: drift.InsertMode.insertOrReplace,
    );
  }

  Future<bool> hasKey() async {
    final config = await load();
    return config.apiKey.isNotEmpty;
  }
}

final llmConfigServiceProvider = Provider<LLMConfigService>((ref) {
  return LLMConfigService(ref.watch(databaseProvider));
});

final llmConfigProvider = AsyncNotifierProvider<LLMConfigNotifier, LLMConfig>(
  LLMConfigNotifier.new,
);

class LLMConfigNotifier extends AsyncNotifier<LLMConfig> {
  @override
  Future<LLMConfig> build() async {
    final service = ref.watch(llmConfigServiceProvider);
    return service.load();
  }

  Future<void> saveConfig(LLMConfig config) async {
    final service = ref.watch(llmConfigServiceProvider);
    await service.save(config);
    state = AsyncData(config);
  }

  Future<bool> testConnection() async {
    final config = state.valueOrNull;
    if (config == null || config.apiKey.isEmpty) return false;
    final db = ref.watch(databaseProvider);
    final service = LLMService(db, config);
    return service.testConnection();
  }
}

final llmServiceProvider = Provider<LLMService?>((ref) {
  final config = ref.watch(llmConfigProvider).valueOrNull;
  if (config == null || config.apiKey.isEmpty) return null;
  final db = ref.watch(databaseProvider);
  return LLMService(db, config);
});
