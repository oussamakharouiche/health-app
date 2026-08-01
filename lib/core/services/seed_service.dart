import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:drift/drift.dart' as drift;

import '../database/database.dart';

/// Loads seed data from bundled JSON files into the database.
/// Only runs when the ingredients table is empty (first launch).
class SeedService {
  final AppDatabase _db;

  SeedService(this._db);

  /// Returns true if seed data was loaded, false if already present.
  Future<bool> seedIfEmpty() async {
    final ingredients = await _db.select(_db.ingredients).get();
    final recipes = await _db.select(_db.recipes).get();

    if (ingredients.isNotEmpty && recipes.isNotEmpty) return false;

    if (ingredients.isEmpty) {
      await _seedIngredients();
      await _seedFodmap();
    }
    if (recipes.isEmpty) {
      await _seedRecipes();
    }
    return true;
  }

  Future<void> _seedIngredients() async {
    final jsonStr = await rootBundle.loadString('assets/seed_data/ingredients.json');
    final List<dynamic> items = jsonDecode(jsonStr);

    for (final item in items) {
      await _db.into(_db.ingredients).insert(
        IngredientsCompanion(
          id: drift.Value(item['id'] as String),
          name: drift.Value(item['name'] as String),
          nameFr: drift.Value(item['nameFr'] as String?),
          category: drift.Value(item['category'] as String?),
          source: drift.Value(item['source'] as String?),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );

      await _db.into(_db.nutritionDataTable).insert(
        NutritionDataTableCompanion(
          ingredientId: drift.Value(item['id'] as String),
          energyKcal: drift.Value((item['energyKcal'] as num).toDouble()),
          proteinG: drift.Value((item['proteinG'] as num).toDouble()),
          fatTotalG: drift.Value((item['fatTotalG'] as num).toDouble()),
          fatSaturatedG: drift.Value((item['fatSaturatedG'] as num).toDouble()),
          carbsG: drift.Value((item['carbsG'] as num).toDouble()),
          sugarsG: drift.Value((item['sugarsG'] as num).toDouble()),
          fiberG: drift.Value((item['fiberG'] as num).toDouble()),
          calciumMg: drift.Value((item['calciumMg'] as num).toDouble()),
          ironMg: drift.Value((item['ironMg'] as num).toDouble()),
          magnesiumMg: drift.Value((item['magnesiumMg'] as num).toDouble()),
          phosphorusMg: drift.Value((item['phosphorusMg'] as num).toDouble()),
          potassiumMg: drift.Value((item['potassiumMg'] as num).toDouble()),
          sodiumMg: drift.Value((item['sodiumMg'] as num).toDouble()),
          zincMg: drift.Value((item['zincMg'] as num).toDouble()),
          copperMg: drift.Value((item['copperMg'] as num).toDouble()),
          manganeseMg: drift.Value((item['manganeseMg'] as num).toDouble()),
          seleniumUg: drift.Value((item['seleniumUg'] as num).toDouble()),
          iodineUg: drift.Value((item['iodineUg'] as num).toDouble()),
          vitaminAUg: drift.Value((item['vitaminAUg'] as num).toDouble()),
          vitaminB1Mg: drift.Value((item['vitaminB1Mg'] as num).toDouble()),
          vitaminB2Mg: drift.Value((item['vitaminB2Mg'] as num).toDouble()),
          vitaminB3Mg: drift.Value((item['vitaminB3Mg'] as num).toDouble()),
          vitaminB5Mg: drift.Value((item['vitaminB5Mg'] as num).toDouble()),
          vitaminB6Mg: drift.Value((item['vitaminB6Mg'] as num).toDouble()),
          vitaminB9Ug: drift.Value((item['vitaminB9Ug'] as num).toDouble()),
          vitaminB12Ug: drift.Value((item['vitaminB12Ug'] as num).toDouble()),
          vitaminCMg: drift.Value((item['vitaminCMg'] as num).toDouble()),
          vitaminDUg: drift.Value((item['vitaminDUg'] as num).toDouble()),
          vitaminEMg: drift.Value((item['vitaminEMg'] as num).toDouble()),
          vitaminKUg: drift.Value((item['vitaminKUg'] as num).toDouble()),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );
    }
  }

  Future<void> _seedFodmap() async {
    final jsonStr = await rootBundle.loadString('assets/seed_data/fodmap.json');
    final List<dynamic> items = jsonDecode(jsonStr);

    for (final item in items) {
      await _db.into(_db.fodmapDataTable).insert(
        FodmapDataTableCompanion(
          ingredientId: drift.Value(item['ingredientId'] as String),
          fodmapLevel: drift.Value(item['fodmapLevel'] as String),
          oligos: drift.Value((item['oligos'] as num).toInt()),
          fructose: drift.Value((item['fructose'] as num).toInt()),
          polyols: drift.Value((item['polyols'] as num).toInt()),
          lactose: drift.Value((item['lactose'] as num).toInt()),
          servingDescription: drift.Value(item['servingDescription'] as String?),
          servingGrams: drift.Value((item['servingGrams'] as num?)?.toDouble()),
          fodmapGroups: drift.Value(item['fodmapGroups'] as String?),
          source: drift.Value(item['source'] as String?),
          notes: drift.Value(item['notes'] as String?),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );
    }
  }

  Future<void> _seedRecipes() async {
    final jsonStr = await rootBundle.loadString('assets/seed_data/recipes.json');
    final List<dynamic> items = jsonDecode(jsonStr);

    for (final item in items) {
      await _db.into(_db.recipes).insert(
        RecipesCompanion(
          id: drift.Value(item['id'] as String),
          name: drift.Value(item['name'] as String),
          description: drift.Value(item['description'] as String?),
          instructions: drift.Value(item['instructions'] as String?),
          prepTimeMin: drift.Value((item['prepTimeMin'] as num?)?.toInt()),
          cookTimeMin: drift.Value((item['cookTimeMin'] as num?)?.toInt()),
          defaultServings: drift.Value((item['defaultServings'] as num?)?.toDouble() ?? 1.0),
          tags: drift.Value(item['tags'] != null ? jsonEncode(item['tags']) : null),
        ),
        mode: drift.InsertMode.insertOrIgnore,
      );

      final ingredients = item['ingredients'] as List<dynamic>;
      for (final ing in ingredients) {
        await _db.into(_db.recipeIngredients).insert(
          RecipeIngredientsCompanion(
            id: drift.Value('${item['id']}_${ing['ingredientId']}'),
            recipeId: drift.Value(item['id'] as String),
            ingredientId: drift.Value(ing['ingredientId'] as String),
            amountGrams: drift.Value((ing['amountGrams'] as num).toDouble()),
            amountDisplay: drift.Value(ing['amountDisplay'] as String?),
          ),
          mode: drift.InsertMode.insertOrIgnore,
        );
      }
    }
  }
}
