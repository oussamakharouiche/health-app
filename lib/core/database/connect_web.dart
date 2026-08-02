import 'package:drift/drift.dart';
import 'package:drift/web.dart';

/// Web database using sql.js with IndexedDB storage.
/// Persists across browser sessions (same origin).
QueryExecutor openConnection(String name) {
  return WebDatabase(name);
}
