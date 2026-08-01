import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFF2E7D32),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(centerTitle: false),
  );

  static final dark = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFF4CAF50),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(centerTitle: false),
  );
}
