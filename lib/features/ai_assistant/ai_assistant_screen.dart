import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/services/llm_provider.dart';
import '../../core/services/llm_service.dart';
import '../settings/llm_settings_screen.dart';

/// AI-powered diet assistant: ask questions, get meal analysis, search recipes.
class AIAssistantScreen extends ConsumerStatefulWidget {
  const AIAssistantScreen({super.key});

  @override
  ConsumerState<AIAssistantScreen> createState() => _AIAssistantScreenState();
}

class _AIAssistantScreenState extends ConsumerState<AIAssistantScreen> {
  final _controller = TextEditingController();
  final _messages = <_ChatMessage>[];
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _messages.add(_ChatMessage(
      role: 'assistant',
      text: 'Hello! I\'m your diet assistant. Ask me about:\n'
          '• Recipe ideas (e.g. "Find low-FODMAP high-protein lunch")\n'
          '• Nutrition questions ("Is my meal balanced?")\n'
          '• Ingredient lookups ("What nutrients are in quinoa?")\n'
          '• Meal planning advice ("Suggest a 3-day plan")\n\n'
          'Configure your API key in Settings first.',
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final llmService = ref.watch(llmServiceProvider);
    final config = ref.watch(llmConfigProvider);

    final hasKey = config.valueOrNull?.apiKey.isNotEmpty == true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Assistant'),
        actions: [
          IconButton(
            icon: Icon(
              hasKey ? Icons.settings : Icons.key,
              color: hasKey ? null : Colors.orange,
            ),
            tooltip: hasKey ? 'LLM Settings' : 'Set API Key',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const LLMSettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (_, i) => _buildBubble(_messages[i]),
            ),
          ),
          if (_loading)
            const Padding(
              padding: EdgeInsets.all(8),
              child: LinearProgressIndicator(),
            ),
          _buildInput(llmService, hasKey),
        ],
      ),
    );
  }

  Widget _buildBubble(_ChatMessage msg) {
    final isUser = msg.role == 'user';
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(12),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
        decoration: BoxDecoration(
          color: isUser ? Theme.of(context).colorScheme.primaryContainer : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(msg.text, style: const TextStyle(fontSize: 14)),
      ),
    );
  }

  Widget _buildInput(LLMService? llmService, bool hasKey) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                enabled: hasKey && !_loading,
                decoration: InputDecoration(
                  hintText: hasKey ? 'Ask anything about your diet...' : 'Configure API key in Settings first',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                ),
                onSubmitted: (_) => _send(llmService),
              ),
            ),
            const SizedBox(width: 8),
            CircleAvatar(
              child: IconButton(
                icon: _loading ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                    : const Icon(Icons.send),
                onPressed: (hasKey && !_loading) ? () => _send(llmService) : null,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _send(LLMService? llmService) async {
    final text = _controller.text.trim();
    if (text.isEmpty || llmService == null) return;

    setState(() {
      _messages.add(_ChatMessage(role: 'user', text: text));
      _loading = true;
    });
    _controller.clear();

    try {
      final response = await llmService.chat(
        systemPrompt: 'You are a knowledgeable diet and nutrition assistant. '
            'You specialize in the low FODMAP diet (Monash University protocol), '
            'macronutrients, micronutrients, and IBS management. '
            'Keep responses concise and practical. Give specific food suggestions with portions. '
            'When suggesting recipes, include ingredients with approximate amounts. '
            'Always consider FODMAP safety in your recommendations. '
            'The user may be in elimination, reintroduction, or personalization phase.',
        userPrompt: text,
      );

      setState(() {
        _messages.add(_ChatMessage(role: 'assistant', text: response.content));
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _messages.add(_ChatMessage(role: 'assistant', text: 'Error: $e\n\nCheck your API key in Settings and make sure you\'re online.'));
        _loading = false;
      });
    }
  }
}

class _ChatMessage {
  final String role;
  final String text;
  const _ChatMessage({required this.role, required this.text});
}
