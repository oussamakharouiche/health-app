# CLAUDE.md

## Project: Health Journey App

A personal, local-first health companion app for planning and monitoring a FODMAP-aware diet (IBS management), tracking nutrition (macro/micro nutrients), logging training and activities, managing supplement intake, and supporting addiction quitting with relapse tracking.

**Stack:** Flutter + Dart + Drift (SQLite) + Riverpod
**Platforms:** Web (`flutter run -d chrome`) first, iOS/Android from same codebase later
**Architecture:** `lib/core/` is pure Dart (zero Flutter imports) for all business logic; `lib/features/` contains UI widgets

See [HEALTH-APP-PLAN.md](HEALTH-APP-PLAN.md) for the full plan, data model, and roadmap.

---

## Build & Run Commands

```bash
# Run on web (laptop browser)
flutter run -d chrome

# Run tests
flutter test

# Run tests with coverage
flutter test --coverage

# Build for web (static files)
flutter build web

# Build for mobile (future)
flutter build ios
flutter build appbundle

# Code generation (Drift, Riverpod, JSON serialization)
dart run build_runner build --delete-conflicting-outputs

# Analyze (linter)
flutter analyze
```

---

## Project Structure

```
lib/
├── main.dart                    # Entry point
├── app.dart                     # MaterialApp, router, theme
├── core/                        # Pure Dart - NO Flutter imports
│   ├── services/               # Business logic
│   ├── models/                 # Data classes
│   ├── database/               # Drift tables, DAOs, migrations
│   └── utils/                  # Calculators, formatters, constants
├── features/                    # Flutter UI by module
│   ├── food_diary/
│   ├── meal_planner/
│   ├── shopping_list/
│   ├── supplement_tracker/
│   ├── workout_logger/
│   ├── habit_tracker/
│   ├── symptom_logger/
│   ├── insights/
│   └── settings/
└── shared/                      # Shared widgets, theme, router
    ├── widgets/
    ├── theme/
    └── router/
```

---

## Coding Standards

### Comments

- Comments must be **precise, concise, and short**. One line is better than three.
- Explain **why**, not **what**. The code already shows what.
- No redundant comments on self-explanatory code (e.g. no `// increments counter` on `i++`).
- Use `//` for single-line comments. Use `///` for public API doc comments (on classes and public methods only).
- Do NOT write doc comments on private methods, obvious getters, or overrides that don't change behavior.

### Forbidden Characters

- **NEVER use the em dash `—` (U+2014) or en dash `–` (U+2013)** in any code comment, docstring, string, or file. These characters break some text rendering pipelines.
- **Do NOT use hyphens as dash replacements.** No `--` (double hyphen) and no standalone `-` used as a parenthetical dash.
- **Use only comma `,` or semicolon `;`** to set off clauses instead of dashes.

Examples:
```
// Wrong:
// This value is cached -- it never hits the network on repeat calls.
// The engine computes macros -- protein, carbs, fat -- from the log.

// Correct:
// This value is cached; it never hits the network on repeat calls.
// The engine computes macros (protein, carbs, fat) from the log.
```

### Naming

- Files: `snake_case.dart` (Dart convention)
- Classes: `PascalCase`
- Variables/functions: `camelCase`
- Constants: `camelCase` (Dart convention, not SCREAMING_SNAKE_CASE)

### Imports

- Dart imports first, then package imports, then project imports. One blank line between groups.
- Prefer relative imports within `lib/` for project files.

### State Management (Riverpod)

- Use `@riverpod` code generation for all providers.
- Services in `lib/core/services/` are plain Dart classes, injected via Riverpod providers.
- UI widgets consume providers, never services directly.

### Database (Drift)

- All schema changes must include a migration in `lib/core/database/database.dart`.
- Bump the schema version for every migration.
- Use DAOs for query logic. Keep raw SQL in DAOs, not in services.

---

## Testing Requirements

**Every feature must have tests.** Minimum requirements:

| Layer | Test type | Coverage target |
|-------|-----------|----------------|
| `lib/core/services/` | Unit tests (pure Dart, no Flutter) | 90%+ |
| `lib/core/models/` | Unit tests (JSON round-trip, validation) | 95%+ |
| `lib/core/database/` | Integration tests (in-memory SQLite) | 85%+ |
| `lib/core/utils/` | Unit tests (calculators, formatters) | 95%+ |
| `lib/features/` | Widget tests (pump widget, verify UI) | Key user flows |
| Full app | Integration tests (critical paths only) | Happy paths |

### Test Conventions

- Test files mirror source: `lib/core/services/nutrition_engine.dart` -> `test/core/services/nutrition_engine_test.dart`
- Use `group()` to organize related test cases.
- Test names describe the scenario and expected outcome: `'returns zero for empty food log'`.
- Use `setUp()` and `tearDown()` for shared test fixtures.
- For Drift tests, use `Drift测试.createInMemory()` to avoid disk I/O.

### What NOT to Test

- Framework internals (Riverpod wiring, Drift generated code)
- Trivial getters/setters with no logic
- UI pixel-perfect layout (test behavior, not exact padding values)
- Third-party library functionality

---

## Key Architectural Rules

1. **`lib/core/` has zero Flutter imports.** If a service needs `BuildContext` or `Widget`, it belongs in `lib/features/` or `lib/shared/`.
2. **Services are stateless where possible.** State lives in the database or in Riverpod providers.
3. **One service per domain.** `NutritionEngine` handles all nutrition math. `FODMAPEngine` handles all FODMAP logic. They don't overlap.
4. **Database is the single source of truth.** Riverpod providers are derived from Drift streams. Never cache DB data in-memory separately.
5. **LLM calls go through `LLMService` only.** No other service calls the LLM directly. All LLM responses are cached in SQLite.
6. **All user data is local.** No telemetry, no analytics, no cloud sync unless the user explicitly opts in later.

---

## Commit Conventions

- `feat:` new feature
- `fix:` bug fix
- `refactor:` code change that neither fixes a bug nor adds a feature
- `test:` adding or updating tests
- `docs:` documentation only
- `chore:` tooling, dependencies, build scripts

---

## Key Dependencies

See `pubspec.yaml` for full list. Core dependencies:

```yaml
flutter_riverpod    # State management
drift               # SQLite ORM
sqlite3_flutter_libs # Native SQLite
fl_chart            # Charts
http                # LLM API calls
```

---

## Useful Resources

- [HEALTH-APP-PLAN.md](HEALTH-APP-PLAN.md) - Full project plan, data model, roadmap
- [Drift Documentation](https://drift.simonbinder.eu/docs/)
- [Riverpod Documentation](https://riverpod.dev/)
- [Flutter Testing Guide](https://docs.flutter.dev/testing)
