import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';

import 'tables.dart';

part 'db.g.dart';

@DriftDatabase(tables: [AnimalEntries, BreedEntries, EventEntries, UserEntries])
class AppDatabase extends _$AppDatabase {

// After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/getting-started/#open
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    if (kDebugMode) {
      print('base de datos Iniciada');
    }
    return driftDatabase(name: 'app');
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          await m.createTable(eventEntries);
        }
        if (from < 3) {
          await m.createTable(userEntries);
        }
      },
    );
  }
}
