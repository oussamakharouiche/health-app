import 'package:flutter/material.dart';

class SymptomScreen extends StatelessWidget {
  const SymptomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Symptoms')),
      body: const Center(
        child: Text('Symptom logger coming in Phase 4'),
      ),
    );
  }
}
