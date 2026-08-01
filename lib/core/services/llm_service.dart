import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:drift/drift.dart' as drift;

import '../database/database.dart';

/// OpenAI-compatible LLM client. Works with DeepSeek, OpenAI, Groq, Ollama.
class LLMService {
  final AppDatabase _db;
  final LLMConfig _config;

  LLMService(this._db, this._config);

  /// Sends a chat completion request. Results are cached in SQLite.
  Future<LLMResponse> chat({
    required String systemPrompt,
    required String userPrompt,
    bool useCache = true,
  }) async {
    final promptHash = _hash('$systemPrompt|$userPrompt|${_config.model}');

    // Check cache
    if (useCache) {
      final cached = await (_db.select(_db.llmCache)
            ..where((t) => t.cacheKey.equals(promptHash)))
          .getSingleOrNull();
      if (cached != null && cached.expiresAt != null) {
        if (cached.expiresAt!.isAfter(DateTime.now())) {
          return LLMResponse(
            content: cached.responseJson,
            tokensUsed: cached.tokensUsed ?? 0,
            fromCache: true,
          );
        }
      }
    }

    // Call API
    final uri = Uri.parse('${_config.endpoint}/chat/completions');
    final body = jsonEncode({
      'model': _config.model,
      'messages': [
        {'role': 'system', 'content': systemPrompt},
        {'role': 'user', 'content': userPrompt},
      ],
      'temperature': 0.7,
      'max_tokens': 2000,
    });

    try {
      final response = await http.post(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${_config.apiKey}',
        },
        body: body,
      );

      if (response.statusCode != 200) {
        throw LLMException('API error ${response.statusCode}: ${response.body}');
      }

      final data = jsonDecode(response.body);
      final content = data['choices'][0]['message']['content'] as String;
      final tokens = (data['usage']?['total_tokens'] as num?)?.toInt() ?? 0;

      // Cache the response (ingredient lookups cached forever, others 7 days)
      final isIngredientQuery = systemPrompt.toLowerCase().contains('nutritional composition');
      await _db.into(_db.llmCache).insert(
        LlmCacheCompanion(
          id: drift.Value(DateTime.now().microsecondsSinceEpoch.toString()),
          cacheKey: drift.Value(promptHash),
          provider: drift.Value(_config.provider),
          model: drift.Value(_config.model),
          promptHash: drift.Value(promptHash),
          responseJson: drift.Value(content),
          tokensUsed: drift.Value(tokens),
          createdAt: drift.Value(DateTime.now()),
          expiresAt: drift.Value(isIngredientQuery
              ? DateTime.now().add(const Duration(days: 3650))
              : DateTime.now().add(const Duration(days: 7))),
        ),
        mode: drift.InsertMode.insertOrReplace,
      );

      return LLMResponse(content: content, tokensUsed: tokens, fromCache: false);
    } catch (e) {
      if (e is LLMException) rethrow;
      throw LLMException('Failed to reach ${_config.provider}: $e');
    }
  }

  /// Structured JSON response from the LLM.
  Future<Map<String, dynamic>> chatStructured({
    required String systemPrompt,
    required String userPrompt,
    required Map<String, dynamic> jsonSchema,
  }) async {
    final schemaStr = jsonEncode(jsonSchema);
    final fullSystem = '$systemPrompt\n\nYou MUST respond with valid JSON matching this schema:\n$schemaStr\nRespond ONLY with the JSON object, no other text.';

    final response = await chat(
      systemPrompt: fullSystem,
      userPrompt: userPrompt,
    );

    try {
      // Extract JSON from response (may be wrapped in markdown code block)
      String content = response.content.trim();
      if (content.startsWith('```')) {
        content = content.replaceFirst(RegExp(r'```\w*\n?'), '');
        content = content.replaceFirst(RegExp(r'\n?```$'), '');
      }
      return jsonDecode(content) as Map<String, dynamic>;
    } catch (e) {
      throw LLMException('Failed to parse LLM response as JSON: $e\n\nResponse: ${response.content}');
    }
  }

  /// Quick connectivity test. Returns true if API key works.
  Future<bool> testConnection() async {
    try {
      final response = await chat(
        systemPrompt: 'Reply with exactly "OK".',
        userPrompt: 'Say OK',
        useCache: false,
      );
      return response.content.contains('OK');
    } catch (_) {
      return false;
    }
  }

  String _hash(String input) {
    return input.codeUnits.fold(0, (prev, c) => ((prev << 5) + prev) ^ c).toRadixString(16);
  }
}

class LLMConfig {
  final String provider;
  final String endpoint;
  final String apiKey;
  final String model;

  const LLMConfig({
    required this.provider,
    required this.endpoint,
    required this.apiKey,
    required this.model,
  });

  static const deepseek = LLMConfig(
    provider: 'DeepSeek',
    endpoint: 'https://api.deepseek.com',
    apiKey: '',
    model: 'deepseek-chat',
  );

  static const openai = LLMConfig(
    provider: 'OpenAI',
    endpoint: 'https://api.openai.com',
    apiKey: '',
    model: 'gpt-4o-mini',
  );

  static const groq = LLMConfig(
    provider: 'Groq',
    endpoint: 'https://api.groq.com/openai',
    apiKey: '',
    model: 'llama-3.3-70b-versatile',
  );

  static const ollama = LLMConfig(
    provider: 'Ollama',
    endpoint: 'http://localhost:11434',
    apiKey: 'ollama',
    model: 'llama3.2',
  );

  LLMConfig copyWith({String? apiKey, String? model}) {
    return LLMConfig(
      provider: provider,
      endpoint: endpoint,
      apiKey: apiKey ?? this.apiKey,
      model: model ?? this.model,
    );
  }

  Map<String, dynamic> toJson() => {
        'provider': provider,
        'endpoint': endpoint,
        'apiKey': apiKey,
        'model': model,
      };

  factory LLMConfig.fromJson(Map<String, dynamic> json) {
    return LLMConfig(
      provider: json['provider'] as String? ?? 'DeepSeek',
      endpoint: json['endpoint'] as String? ?? 'https://api.deepseek.com',
      apiKey: json['apiKey'] as String? ?? '',
      model: json['model'] as String? ?? 'deepseek-chat',
    );
  }
}

class LLMResponse {
  final String content;
  final int tokensUsed;
  final bool fromCache;

  const LLMResponse({
    required this.content,
    required this.tokensUsed,
    this.fromCache = false,
  });
}

class LLMException implements Exception {
  final String message;
  const LLMException(this.message);
  @override
  String toString() => 'LLMException: $message';
}
