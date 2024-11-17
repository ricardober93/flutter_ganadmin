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

@DataClassName('EventEntry')
class EventEntries extends Table {
  IntColumn get id => integer().autoIncrement()(); // ID único
  TextColumn get title => text().withLength(min: 1, max: 100)();
  TextColumn get description => text().nullable()();
  DateTimeColumn get date => dateTime()(); // Fecha del evento
  TextColumn get eventType => text().withLength(min: 1, max: 50)();
  IntColumn get animalId =>  integer().nullable().references(AnimalEntries, #id)();
}

@DataClassName('UserEntry')
class UserEntries extends Table {
  IntColumn get id => integer().autoIncrement()(); // ID único
  TextColumn get email => text().withLength(min: 6, max: 100)(); // Aseguramos que el correo sea único
  TextColumn get name => text().withLength(min: 2, max: 50)(); // Nombre
  TextColumn get password => text()(); // Contraseña
  TextColumn get phone => text().withLength(min: 8, max: 15).nullable()(); // Teléfono
  TextColumn get address => text().nullable()(); // Dirección
  DateTimeColumn get createdAt => dateTime().nullable()(); // Fecha de creación
}
