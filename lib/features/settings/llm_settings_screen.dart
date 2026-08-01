import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/services/database_provider.dart';
import '../../core/services/llm_provider.dart';
import '../../core/services/llm_service.dart';

/// LLM configuration: provider, API key, model, connection test.
class LLMSettingsScreen extends ConsumerStatefulWidget {
  const LLMSettingsScreen({super.key});

  @override
  ConsumerState<LLMSettingsScreen> createState() => _LLMSettingsScreenState();
}

class _LLMSettingsScreenState extends ConsumerState<LLMSettingsScreen> {
  final _keyController = TextEditingController();
  final _modelController = TextEditingController();
  String _provider = 'DeepSeek';
  bool _testing = false;

  static const _providers = {
    'DeepSeek': LLMConfig.deepseek,
    'OpenAI': LLMConfig.openai,
    'Groq': LLMConfig.groq,
    'Ollama (local)': LLMConfig.ollama,
  };

  @override
  void initState() {
    super.initState();
    // Load existing config
    final config = ref.read(llmConfigProvider).valueOrNull;
    if (config != null) {
      _keyController.text = config.apiKey;
      _modelController.text = config.model;
      _provider = config.provider;
    }
  }

  @override
  void dispose() {
    _keyController.dispose();
    _modelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LLM Configuration')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Provider selector
          Text('Provider', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          DropdownButtonFormField<String>(
            value: _provider,
            items: _providers.keys.map((name) {
              return DropdownMenuItem(value: name, child: Text(name));
            }).toList(),
            onChanged: (v) {
              if (v == null) return;
              setState(() {
                _provider = v;
                final preset = _providers[v]!;
                _modelController.text = preset.model;
              });
            },
          ),
          const SizedBox(height: 16),

          // API key
          Text('API Key', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          TextField(
            controller: _keyController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'sk-...',
              border: OutlineInputBorder(),
              helperText: 'Your key stays on your device; never sent anywhere except directly to the LLM provider.',
            ),
          ),
          const SizedBox(height: 16),

          // Model
          Text('Model', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          TextField(
            controller: _modelController,
            decoration: const InputDecoration(
              hintText: 'deepseek-chat',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 24),

          // Test connection
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: _testing
                  ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2))
                  : const Icon(Icons.wifi_find),
              label: Text(_testing ? 'Testing...' : 'Test Connection'),
              onPressed: _testing ? null : _testConnection,
            ),
          ),
          const SizedBox(height: 16),

          // Save
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              icon: const Icon(Icons.save),
              label: const Text('Save Configuration'),
              onPressed: _save,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _testConnection() async {
    setState(() => _testing = true);
    try {
      final config = LLMConfig(
        provider: _provider,
        endpoint: _providers[_provider]!.endpoint,
        apiKey: _keyController.text.trim(),
        model: _modelController.text.trim(),
      );

      final db = ref.read(databaseProvider);
      final service = LLMService(db, config);
      final ok = await service.testConnection();

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ok ? 'Connection successful!' : 'Connection failed. Check your key and network.'),
          backgroundColor: ok ? Colors.green : Colors.red,
        ),
      );
    } finally {
      if (mounted) setState(() => _testing = false);
    }
  }

  Future<void> _save() async {
    final config = LLMConfig(
      provider: _provider,
      endpoint: _providers[_provider]!.endpoint,
      apiKey: _keyController.text.trim(),
      model: _modelController.text.trim(),
    );
    await ref.read(llmConfigProvider.notifier).saveConfig(config);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Configuration saved'), backgroundColor: Colors.green),
      );
      Navigator.pop(context);
    }
  }
}
