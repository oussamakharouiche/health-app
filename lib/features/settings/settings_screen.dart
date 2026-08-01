import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Settings screen: profile, nutrition targets, FODMAP phase, work schedule, LLM config.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          _buildSection(context, 'Profile', Icons.person, [
            _buildListTile(context, 'Personal info', 'Age, sex, weight, height', () {}),
            _buildListTile(context, 'Work schedule', 'Presential / remote days', () {}),
          ]),
          _buildSection(context, 'Nutrition Targets', Icons.track_changes, [
            _buildListTile(context, 'Daily targets', 'Calories, macros, micros (ANSES 2021)', () {}),
            _buildListTile(context, 'FODMAP phase', 'Elimination / Reintroduction / Personalization', () {}),
          ]),
          _buildSection(context, 'LLM Configuration', Icons.smart_toy, [
            _buildListTile(context, 'Provider & API key', 'DeepSeek, OpenAI, Ollama...', () {}),
            _buildListTile(context, 'Model', 'deepseek-chat', () {}),
          ]),
          _buildSection(context, 'Data', Icons.storage, [
            _buildListTile(context, 'Export data', 'Backup to JSON file', () {}),
            _buildListTile(context, 'Import data', 'Restore from backup', () {}),
          ]),
          _buildSection(context, 'About', Icons.info_outline, [
            _buildListTile(context, 'About Health Journey', 'Version 0.1.0', () {}),
          ]),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context,
    String title,
    IconData icon,
    List<Widget> children,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Row(
            children: [
              Icon(icon, size: 20, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ],
          ),
        ),
        ...children,
        const Divider(),
      ],
    );
  }

  Widget _buildListTile(
    BuildContext context,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
