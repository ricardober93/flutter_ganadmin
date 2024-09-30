import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables.dart';

part 'db.g.dart';

@DriftDatabase(tables: [AnimalEntries, BreedEntries])
class AppDatabase extends _$AppDatabase {

// After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/getting-started/#open
  AppDatabase() : super(_openConnection());

  Future<List<AnimalEntry>> getAllAnimals() async {
    return await managers.animalEntries.get();
   }

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    print('base de datos Iniciada');
    return driftDatabase(name: 'app');
  }
}
