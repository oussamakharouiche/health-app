import 'package:flutter/material.dart';

class SupplementScreen extends StatelessWidget {
  const SupplementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Supplements')),
      body: const Center(
        child: Text('Supplement tracker coming in Phase 4'),
      ),
    );
  }
}
