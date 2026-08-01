import 'package:flutter/material.dart';

class HabitScreen extends StatelessWidget {
  const HabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habits')),
      body: const Center(
        child: Text('Habit tracker coming in Phase 4'),
      ),
    );
  }
}
