import 'package:drift/drift.dart';

@DataClassName('AnimalEntry')
class AnimalEntries extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 6, max: 32)();
  DateTimeColumn get birthDate => dateTime().nullable()();
  DateTimeColumn get purchasedDate => dateTime().nullable()();
  TextColumn get imageURL => text().nullable()();
  TextColumn get weight => text().nullable()();
  TextColumn get price => text().nullable()();
  TextColumn get health => text().nullable()();
  TextColumn get type => text().nullable()();
  TextColumn get exportType => text().nullable()();
  TextColumn get electronicId => text().nullable()();
  BoolColumn  get isDiscarded => boolean().nullable().withDefault(const Constant(false))();
  BoolColumn  get isInventoried => boolean().withDefault(const Constant(false))();
  BoolColumn get isStallion => boolean().withDefault(const Constant(false))();
  IntColumn get breedId =>
      integer().nullable().references(BreedEntries, #id)();
  IntColumn get codeFather =>
      integer().nullable().references(AnimalEntries, #id)();
  IntColumn get codeMother =>
      integer().nullable().references(AnimalEntries, #id)();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

@DataClassName('BreedEntry')
class BreedEntries extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
