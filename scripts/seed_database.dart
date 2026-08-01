/// One-time script to populate the app database from external sources.
///
/// Sources:
/// - USDA FoodData Central (bulk download)
/// - ANSES Ciqual (CSV)
/// - oseparovic/fodmap_list (JSON)
/// - wger API (REST)
///
/// Run with: dart run scripts/seed_database.dart
///
/// This script downloads data, transforms it, and writes SQLite files
/// to assets/seed_data/. The app bundles these files and loads them on
/// first launch.

import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  print('Starting database seeding...');

  // Ensure output directory exists
  final outputDir = Directory('assets/seed_data');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  // Placeholder files until full implementation
  await _writePlaceholder('ingredients.json', outputDir);
  await _writePlaceholder('fodmap.json', outputDir);
  await _writePlaceholder('exercises.json', outputDir);

  print('Seed data written to ${outputDir.path}');
  print('');
  print('Next steps for full seeding:');
  print('  1. Download USDA FoodData Central from https://fdc.nal.usda.gov/download-datasets');
  print('  2. Download ANSES Ciqual CSV from https://ciqual.anses.fr/');
  print('  3. Run: dart run scripts/seed_ingredients.dart');
  print('  4. Run: dart run scripts/seed_fodmap.dart');
  print('  5. Run: dart run scripts/seed_exercises.dart');
}

Future<void> _writePlaceholder(String filename, Directory dir) async {
  final file = File('${dir.path}/$filename');
  if (!file.existsSync()) {
    await file.writeAsString('[]'); // empty JSON array
    print('  Created placeholder: $filename');
  } else {
    print('  Already exists: $filename');
  }
}
