// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $BreedEntriesTable extends BreedEntries
    with TableInfo<$BreedEntriesTable, BreedEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BreedEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'breed_entries';
  @override
  VerificationContext validateIntegrity(Insertable<BreedEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BreedEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BreedEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $BreedEntriesTable createAlias(String alias) {
    return $BreedEntriesTable(attachedDatabase, alias);
  }
}

class BreedEntry extends DataClass implements Insertable<BreedEntry> {
  final int id;
  final String name;
  const BreedEntry({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  BreedEntriesCompanion toCompanion(bool nullToAbsent) {
    return BreedEntriesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory BreedEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BreedEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  BreedEntry copyWith({int? id, String? name}) => BreedEntry(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  BreedEntry copyWithCompanion(BreedEntriesCompanion data) {
    return BreedEntry(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BreedEntry(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BreedEntry && other.id == this.id && other.name == this.name);
}

class BreedEntriesCompanion extends UpdateCompanion<BreedEntry> {
  final Value<int> id;
  final Value<String> name;
  const BreedEntriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  BreedEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<BreedEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  BreedEntriesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return BreedEntriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BreedEntriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $AnimalEntriesTable extends AnimalEntries
    with TableInfo<$AnimalEntriesTable, AnimalEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimalEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _imageURLMeta =
      const VerificationMeta('imageURL');
  @override
  late final GeneratedColumn<String> imageURL = GeneratedColumn<String>(
      'image_u_r_l', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<String> weight = GeneratedColumn<String>(
      'weight', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _healthMeta = const VerificationMeta('health');
  @override
  late final GeneratedColumn<String> health = GeneratedColumn<String>(
      'health', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _exportTypeMeta =
      const VerificationMeta('exportType');
  @override
  late final GeneratedColumn<String> exportType = GeneratedColumn<String>(
      'export_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _electronicIdMeta =
      const VerificationMeta('electronicId');
  @override
  late final GeneratedColumn<String> electronicId = GeneratedColumn<String>(
      'electronic_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isInventoriedMeta =
      const VerificationMeta('isInventoried');
  @override
  late final GeneratedColumn<bool> isInventoried = GeneratedColumn<bool>(
      'is_inventoried', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_inventoried" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _isStallionMeta =
      const VerificationMeta('isStallion');
  @override
  late final GeneratedColumn<bool> isStallion = GeneratedColumn<bool>(
      'is_stallion', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_stallion" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _breedIdMeta =
      const VerificationMeta('breedId');
  @override
  late final GeneratedColumn<int> breedId = GeneratedColumn<int>(
      'breed_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES breed_entries (id)'));
  static const VerificationMeta _codeFatherMeta =
      const VerificationMeta('codeFather');
  @override
  late final GeneratedColumn<int> codeFather = GeneratedColumn<int>(
      'code_father', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES animal_entries (id)'));
  static const VerificationMeta _codeMotherMeta =
      const VerificationMeta('codeMother');
  @override
  late final GeneratedColumn<int> codeMother = GeneratedColumn<int>(
      'code_mother', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES animal_entries (id)'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        birthDate,
        imageURL,
        weight,
        health,
        exportType,
        electronicId,
        isInventoried,
        isStallion,
        breedId,
        codeFather,
        codeMother,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'animal_entries';
  @override
  VerificationContext validateIntegrity(Insertable<AnimalEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
          imageURL.isAcceptableOrUnknown(data['image_u_r_l']!, _imageURLMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('health')) {
      context.handle(_healthMeta,
          health.isAcceptableOrUnknown(data['health']!, _healthMeta));
    }
    if (data.containsKey('export_type')) {
      context.handle(
          _exportTypeMeta,
          exportType.isAcceptableOrUnknown(
              data['export_type']!, _exportTypeMeta));
    }
    if (data.containsKey('electronic_id')) {
      context.handle(
          _electronicIdMeta,
          electronicId.isAcceptableOrUnknown(
              data['electronic_id']!, _electronicIdMeta));
    }
    if (data.containsKey('is_inventoried')) {
      context.handle(
          _isInventoriedMeta,
          isInventoried.isAcceptableOrUnknown(
              data['is_inventoried']!, _isInventoriedMeta));
    }
    if (data.containsKey('is_stallion')) {
      context.handle(
          _isStallionMeta,
          isStallion.isAcceptableOrUnknown(
              data['is_stallion']!, _isStallionMeta));
    }
    if (data.containsKey('breed_id')) {
      context.handle(_breedIdMeta,
          breedId.isAcceptableOrUnknown(data['breed_id']!, _breedIdMeta));
    }
    if (data.containsKey('code_father')) {
      context.handle(
          _codeFatherMeta,
          codeFather.isAcceptableOrUnknown(
              data['code_father']!, _codeFatherMeta));
    }
    if (data.containsKey('code_mother')) {
      context.handle(
          _codeMotherMeta,
          codeMother.isAcceptableOrUnknown(
              data['code_mother']!, _codeMotherMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnimalEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimalEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date']),
      imageURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_u_r_l']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}weight']),
      health: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}health']),
      exportType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}export_type']),
      electronicId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}electronic_id']),
      isInventoried: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_inventoried'])!,
      isStallion: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_stallion'])!,
      breedId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}breed_id']),
      codeFather: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}code_father']),
      codeMother: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}code_mother']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $AnimalEntriesTable createAlias(String alias) {
    return $AnimalEntriesTable(attachedDatabase, alias);
  }
}

class AnimalEntry extends DataClass implements Insertable<AnimalEntry> {
  final int id;
  final String name;
  final DateTime? birthDate;
  final String? imageURL;
  final String? weight;
  final String? health;
  final String? exportType;
  final String? electronicId;
  final bool isInventoried;
  final bool isStallion;
  final int? breedId;
  final int? codeFather;
  final int? codeMother;
  final DateTime? createdAt;
  const AnimalEntry(
      {required this.id,
      required this.name,
      this.birthDate,
      this.imageURL,
      this.weight,
      this.health,
      this.exportType,
      this.electronicId,
      required this.isInventoried,
      required this.isStallion,
      this.breedId,
      this.codeFather,
      this.codeMother,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    if (!nullToAbsent || imageURL != null) {
      map['image_u_r_l'] = Variable<String>(imageURL);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<String>(weight);
    }
    if (!nullToAbsent || health != null) {
      map['health'] = Variable<String>(health);
    }
    if (!nullToAbsent || exportType != null) {
      map['export_type'] = Variable<String>(exportType);
    }
    if (!nullToAbsent || electronicId != null) {
      map['electronic_id'] = Variable<String>(electronicId);
    }
    map['is_inventoried'] = Variable<bool>(isInventoried);
    map['is_stallion'] = Variable<bool>(isStallion);
    if (!nullToAbsent || breedId != null) {
      map['breed_id'] = Variable<int>(breedId);
    }
    if (!nullToAbsent || codeFather != null) {
      map['code_father'] = Variable<int>(codeFather);
    }
    if (!nullToAbsent || codeMother != null) {
      map['code_mother'] = Variable<int>(codeMother);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  AnimalEntriesCompanion toCompanion(bool nullToAbsent) {
    return AnimalEntriesCompanion(
      id: Value(id),
      name: Value(name),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      imageURL: imageURL == null && nullToAbsent
          ? const Value.absent()
          : Value(imageURL),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      health:
          health == null && nullToAbsent ? const Value.absent() : Value(health),
      exportType: exportType == null && nullToAbsent
          ? const Value.absent()
          : Value(exportType),
      electronicId: electronicId == null && nullToAbsent
          ? const Value.absent()
          : Value(electronicId),
      isInventoried: Value(isInventoried),
      isStallion: Value(isStallion),
      breedId: breedId == null && nullToAbsent
          ? const Value.absent()
          : Value(breedId),
      codeFather: codeFather == null && nullToAbsent
          ? const Value.absent()
          : Value(codeFather),
      codeMother: codeMother == null && nullToAbsent
          ? const Value.absent()
          : Value(codeMother),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory AnimalEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimalEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      imageURL: serializer.fromJson<String?>(json['imageURL']),
      weight: serializer.fromJson<String?>(json['weight']),
      health: serializer.fromJson<String?>(json['health']),
      exportType: serializer.fromJson<String?>(json['exportType']),
      electronicId: serializer.fromJson<String?>(json['electronicId']),
      isInventoried: serializer.fromJson<bool>(json['isInventoried']),
      isStallion: serializer.fromJson<bool>(json['isStallion']),
      breedId: serializer.fromJson<int?>(json['breedId']),
      codeFather: serializer.fromJson<int?>(json['codeFather']),
      codeMother: serializer.fromJson<int?>(json['codeMother']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'imageURL': serializer.toJson<String?>(imageURL),
      'weight': serializer.toJson<String?>(weight),
      'health': serializer.toJson<String?>(health),
      'exportType': serializer.toJson<String?>(exportType),
      'electronicId': serializer.toJson<String?>(electronicId),
      'isInventoried': serializer.toJson<bool>(isInventoried),
      'isStallion': serializer.toJson<bool>(isStallion),
      'breedId': serializer.toJson<int?>(breedId),
      'codeFather': serializer.toJson<int?>(codeFather),
      'codeMother': serializer.toJson<int?>(codeMother),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  AnimalEntry copyWith(
          {int? id,
          String? name,
          Value<DateTime?> birthDate = const Value.absent(),
          Value<String?> imageURL = const Value.absent(),
          Value<String?> weight = const Value.absent(),
          Value<String?> health = const Value.absent(),
          Value<String?> exportType = const Value.absent(),
          Value<String?> electronicId = const Value.absent(),
          bool? isInventoried,
          bool? isStallion,
          Value<int?> breedId = const Value.absent(),
          Value<int?> codeFather = const Value.absent(),
          Value<int?> codeMother = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent()}) =>
      AnimalEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        birthDate: birthDate.present ? birthDate.value : this.birthDate,
        imageURL: imageURL.present ? imageURL.value : this.imageURL,
        weight: weight.present ? weight.value : this.weight,
        health: health.present ? health.value : this.health,
        exportType: exportType.present ? exportType.value : this.exportType,
        electronicId:
            electronicId.present ? electronicId.value : this.electronicId,
        isInventoried: isInventoried ?? this.isInventoried,
        isStallion: isStallion ?? this.isStallion,
        breedId: breedId.present ? breedId.value : this.breedId,
        codeFather: codeFather.present ? codeFather.value : this.codeFather,
        codeMother: codeMother.present ? codeMother.value : this.codeMother,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  AnimalEntry copyWithCompanion(AnimalEntriesCompanion data) {
    return AnimalEntry(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      imageURL: data.imageURL.present ? data.imageURL.value : this.imageURL,
      weight: data.weight.present ? data.weight.value : this.weight,
      health: data.health.present ? data.health.value : this.health,
      exportType:
          data.exportType.present ? data.exportType.value : this.exportType,
      electronicId: data.electronicId.present
          ? data.electronicId.value
          : this.electronicId,
      isInventoried: data.isInventoried.present
          ? data.isInventoried.value
          : this.isInventoried,
      isStallion:
          data.isStallion.present ? data.isStallion.value : this.isStallion,
      breedId: data.breedId.present ? data.breedId.value : this.breedId,
      codeFather:
          data.codeFather.present ? data.codeFather.value : this.codeFather,
      codeMother:
          data.codeMother.present ? data.codeMother.value : this.codeMother,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnimalEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('imageURL: $imageURL, ')
          ..write('weight: $weight, ')
          ..write('health: $health, ')
          ..write('exportType: $exportType, ')
          ..write('electronicId: $electronicId, ')
          ..write('isInventoried: $isInventoried, ')
          ..write('isStallion: $isStallion, ')
          ..write('breedId: $breedId, ')
          ..write('codeFather: $codeFather, ')
          ..write('codeMother: $codeMother, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      birthDate,
      imageURL,
      weight,
      health,
      exportType,
      electronicId,
      isInventoried,
      isStallion,
      breedId,
      codeFather,
      codeMother,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimalEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.birthDate == this.birthDate &&
          other.imageURL == this.imageURL &&
          other.weight == this.weight &&
          other.health == this.health &&
          other.exportType == this.exportType &&
          other.electronicId == this.electronicId &&
          other.isInventoried == this.isInventoried &&
          other.isStallion == this.isStallion &&
          other.breedId == this.breedId &&
          other.codeFather == this.codeFather &&
          other.codeMother == this.codeMother &&
          other.createdAt == this.createdAt);
}

class AnimalEntriesCompanion extends UpdateCompanion<AnimalEntry> {
  final Value<int> id;
  final Value<String> name;
  final Value<DateTime?> birthDate;
  final Value<String?> imageURL;
  final Value<String?> weight;
  final Value<String?> health;
  final Value<String?> exportType;
  final Value<String?> electronicId;
  final Value<bool> isInventoried;
  final Value<bool> isStallion;
  final Value<int?> breedId;
  final Value<int?> codeFather;
  final Value<int?> codeMother;
  final Value<DateTime?> createdAt;
  const AnimalEntriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.weight = const Value.absent(),
    this.health = const Value.absent(),
    this.exportType = const Value.absent(),
    this.electronicId = const Value.absent(),
    this.isInventoried = const Value.absent(),
    this.isStallion = const Value.absent(),
    this.breedId = const Value.absent(),
    this.codeFather = const Value.absent(),
    this.codeMother = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AnimalEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.birthDate = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.weight = const Value.absent(),
    this.health = const Value.absent(),
    this.exportType = const Value.absent(),
    this.electronicId = const Value.absent(),
    this.isInventoried = const Value.absent(),
    this.isStallion = const Value.absent(),
    this.breedId = const Value.absent(),
    this.codeFather = const Value.absent(),
    this.codeMother = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : name = Value(name);
  static Insertable<AnimalEntry> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<DateTime>? birthDate,
    Expression<String>? imageURL,
    Expression<String>? weight,
    Expression<String>? health,
    Expression<String>? exportType,
    Expression<String>? electronicId,
    Expression<bool>? isInventoried,
    Expression<bool>? isStallion,
    Expression<int>? breedId,
    Expression<int>? codeFather,
    Expression<int>? codeMother,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (birthDate != null) 'birth_date': birthDate,
      if (imageURL != null) 'image_u_r_l': imageURL,
      if (weight != null) 'weight': weight,
      if (health != null) 'health': health,
      if (exportType != null) 'export_type': exportType,
      if (electronicId != null) 'electronic_id': electronicId,
      if (isInventoried != null) 'is_inventoried': isInventoried,
      if (isStallion != null) 'is_stallion': isStallion,
      if (breedId != null) 'breed_id': breedId,
      if (codeFather != null) 'code_father': codeFather,
      if (codeMother != null) 'code_mother': codeMother,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AnimalEntriesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<DateTime?>? birthDate,
      Value<String?>? imageURL,
      Value<String?>? weight,
      Value<String?>? health,
      Value<String?>? exportType,
      Value<String?>? electronicId,
      Value<bool>? isInventoried,
      Value<bool>? isStallion,
      Value<int?>? breedId,
      Value<int?>? codeFather,
      Value<int?>? codeMother,
      Value<DateTime?>? createdAt}) {
    return AnimalEntriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      imageURL: imageURL ?? this.imageURL,
      weight: weight ?? this.weight,
      health: health ?? this.health,
      exportType: exportType ?? this.exportType,
      electronicId: electronicId ?? this.electronicId,
      isInventoried: isInventoried ?? this.isInventoried,
      isStallion: isStallion ?? this.isStallion,
      breedId: breedId ?? this.breedId,
      codeFather: codeFather ?? this.codeFather,
      codeMother: codeMother ?? this.codeMother,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    if (weight.present) {
      map['weight'] = Variable<String>(weight.value);
    }
    if (health.present) {
      map['health'] = Variable<String>(health.value);
    }
    if (exportType.present) {
      map['export_type'] = Variable<String>(exportType.value);
    }
    if (electronicId.present) {
      map['electronic_id'] = Variable<String>(electronicId.value);
    }
    if (isInventoried.present) {
      map['is_inventoried'] = Variable<bool>(isInventoried.value);
    }
    if (isStallion.present) {
      map['is_stallion'] = Variable<bool>(isStallion.value);
    }
    if (breedId.present) {
      map['breed_id'] = Variable<int>(breedId.value);
    }
    if (codeFather.present) {
      map['code_father'] = Variable<int>(codeFather.value);
    }
    if (codeMother.present) {
      map['code_mother'] = Variable<int>(codeMother.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimalEntriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('imageURL: $imageURL, ')
          ..write('weight: $weight, ')
          ..write('health: $health, ')
          ..write('exportType: $exportType, ')
          ..write('electronicId: $electronicId, ')
          ..write('isInventoried: $isInventoried, ')
          ..write('isStallion: $isStallion, ')
          ..write('breedId: $breedId, ')
          ..write('codeFather: $codeFather, ')
          ..write('codeMother: $codeMother, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BreedEntriesTable breedEntries = $BreedEntriesTable(this);
  late final $AnimalEntriesTable animalEntries = $AnimalEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [breedEntries, animalEntries];
}

typedef $$BreedEntriesTableCreateCompanionBuilder = BreedEntriesCompanion
    Function({
  Value<int> id,
  required String name,
});
typedef $$BreedEntriesTableUpdateCompanionBuilder = BreedEntriesCompanion
    Function({
  Value<int> id,
  Value<String> name,
});

final class $$BreedEntriesTableReferences
    extends BaseReferences<_$AppDatabase, $BreedEntriesTable, BreedEntry> {
  $$BreedEntriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AnimalEntriesTable, List<AnimalEntry>>
      _animalEntriesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.animalEntries,
              aliasName: $_aliasNameGenerator(
                  db.breedEntries.id, db.animalEntries.breedId));

  $$AnimalEntriesTableProcessedTableManager get animalEntriesRefs {
    final manager = $$AnimalEntriesTableTableManager($_db, $_db.animalEntries)
        .filter((f) => f.breedId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_animalEntriesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$BreedEntriesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BreedEntriesTable> {
  $$BreedEntriesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter animalEntriesRefs(
      ComposableFilter Function($$AnimalEntriesTableFilterComposer f) f) {
    final $$AnimalEntriesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.animalEntries,
        getReferencedColumn: (t) => t.breedId,
        builder: (joinBuilder, parentComposers) =>
            $$AnimalEntriesTableFilterComposer(ComposerState($state.db,
                $state.db.animalEntries, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$BreedEntriesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BreedEntriesTable> {
  $$BreedEntriesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$BreedEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BreedEntriesTable,
    BreedEntry,
    $$BreedEntriesTableFilterComposer,
    $$BreedEntriesTableOrderingComposer,
    $$BreedEntriesTableCreateCompanionBuilder,
    $$BreedEntriesTableUpdateCompanionBuilder,
    (BreedEntry, $$BreedEntriesTableReferences),
    BreedEntry,
    PrefetchHooks Function({bool animalEntriesRefs})> {
  $$BreedEntriesTableTableManager(_$AppDatabase db, $BreedEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BreedEntriesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BreedEntriesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              BreedEntriesCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              BreedEntriesCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$BreedEntriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({animalEntriesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (animalEntriesRefs) db.animalEntries
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (animalEntriesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$BreedEntriesTableReferences
                            ._animalEntriesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$BreedEntriesTableReferences(db, table, p0)
                                .animalEntriesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.breedId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$BreedEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BreedEntriesTable,
    BreedEntry,
    $$BreedEntriesTableFilterComposer,
    $$BreedEntriesTableOrderingComposer,
    $$BreedEntriesTableCreateCompanionBuilder,
    $$BreedEntriesTableUpdateCompanionBuilder,
    (BreedEntry, $$BreedEntriesTableReferences),
    BreedEntry,
    PrefetchHooks Function({bool animalEntriesRefs})>;
typedef $$AnimalEntriesTableCreateCompanionBuilder = AnimalEntriesCompanion
    Function({
  Value<int> id,
  required String name,
  Value<DateTime?> birthDate,
  Value<String?> imageURL,
  Value<String?> weight,
  Value<String?> health,
  Value<String?> exportType,
  Value<String?> electronicId,
  Value<bool> isInventoried,
  Value<bool> isStallion,
  Value<int?> breedId,
  Value<int?> codeFather,
  Value<int?> codeMother,
  Value<DateTime?> createdAt,
});
typedef $$AnimalEntriesTableUpdateCompanionBuilder = AnimalEntriesCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<DateTime?> birthDate,
  Value<String?> imageURL,
  Value<String?> weight,
  Value<String?> health,
  Value<String?> exportType,
  Value<String?> electronicId,
  Value<bool> isInventoried,
  Value<bool> isStallion,
  Value<int?> breedId,
  Value<int?> codeFather,
  Value<int?> codeMother,
  Value<DateTime?> createdAt,
});

final class $$AnimalEntriesTableReferences
    extends BaseReferences<_$AppDatabase, $AnimalEntriesTable, AnimalEntry> {
  $$AnimalEntriesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $BreedEntriesTable _breedIdTable(_$AppDatabase db) =>
      db.breedEntries.createAlias(
          $_aliasNameGenerator(db.animalEntries.breedId, db.breedEntries.id));

  $$BreedEntriesTableProcessedTableManager? get breedId {
    if ($_item.breedId == null) return null;
    final manager = $$BreedEntriesTableTableManager($_db, $_db.breedEntries)
        .filter((f) => f.id($_item.breedId!));
    final item = $_typedResult.readTableOrNull(_breedIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AnimalEntriesTable _codeFatherTable(_$AppDatabase db) =>
      db.animalEntries.createAlias($_aliasNameGenerator(
          db.animalEntries.codeFather, db.animalEntries.id));

  $$AnimalEntriesTableProcessedTableManager? get codeFather {
    if ($_item.codeFather == null) return null;
    final manager = $$AnimalEntriesTableTableManager($_db, $_db.animalEntries)
        .filter((f) => f.id($_item.codeFather!));
    final item = $_typedResult.readTableOrNull(_codeFatherTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AnimalEntriesTable _codeMotherTable(_$AppDatabase db) =>
      db.animalEntries.createAlias($_aliasNameGenerator(
          db.animalEntries.codeMother, db.animalEntries.id));

  $$AnimalEntriesTableProcessedTableManager? get codeMother {
    if ($_item.codeMother == null) return null;
    final manager = $$AnimalEntriesTableTableManager($_db, $_db.animalEntries)
        .filter((f) => f.id($_item.codeMother!));
    final item = $_typedResult.readTableOrNull(_codeMotherTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$AnimalEntriesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AnimalEntriesTable> {
  $$AnimalEntriesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get birthDate => $state.composableBuilder(
      column: $state.table.birthDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get imageURL => $state.composableBuilder(
      column: $state.table.imageURL,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get weight => $state.composableBuilder(
      column: $state.table.weight,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get health => $state.composableBuilder(
      column: $state.table.health,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get exportType => $state.composableBuilder(
      column: $state.table.exportType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get electronicId => $state.composableBuilder(
      column: $state.table.electronicId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isInventoried => $state.composableBuilder(
      column: $state.table.isInventoried,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isStallion => $state.composableBuilder(
      column: $state.table.isStallion,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$BreedEntriesTableFilterComposer get breedId {
    final $$BreedEntriesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.breedId,
        referencedTable: $state.db.breedEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BreedEntriesTableFilterComposer(ComposerState($state.db,
                $state.db.breedEntries, joinBuilder, parentComposers)));
    return composer;
  }

  $$AnimalEntriesTableFilterComposer get codeFather {
    final $$AnimalEntriesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeFather,
        referencedTable: $state.db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$AnimalEntriesTableFilterComposer(ComposerState($state.db,
                $state.db.animalEntries, joinBuilder, parentComposers)));
    return composer;
  }

  $$AnimalEntriesTableFilterComposer get codeMother {
    final $$AnimalEntriesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeMother,
        referencedTable: $state.db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$AnimalEntriesTableFilterComposer(ComposerState($state.db,
                $state.db.animalEntries, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$AnimalEntriesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AnimalEntriesTable> {
  $$AnimalEntriesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get birthDate => $state.composableBuilder(
      column: $state.table.birthDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get imageURL => $state.composableBuilder(
      column: $state.table.imageURL,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get weight => $state.composableBuilder(
      column: $state.table.weight,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get health => $state.composableBuilder(
      column: $state.table.health,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get exportType => $state.composableBuilder(
      column: $state.table.exportType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get electronicId => $state.composableBuilder(
      column: $state.table.electronicId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isInventoried => $state.composableBuilder(
      column: $state.table.isInventoried,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isStallion => $state.composableBuilder(
      column: $state.table.isStallion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$BreedEntriesTableOrderingComposer get breedId {
    final $$BreedEntriesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.breedId,
        referencedTable: $state.db.breedEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$BreedEntriesTableOrderingComposer(ComposerState($state.db,
                $state.db.breedEntries, joinBuilder, parentComposers)));
    return composer;
  }

  $$AnimalEntriesTableOrderingComposer get codeFather {
    final $$AnimalEntriesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.codeFather,
            referencedTable: $state.db.animalEntries,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$AnimalEntriesTableOrderingComposer(ComposerState($state.db,
                    $state.db.animalEntries, joinBuilder, parentComposers)));
    return composer;
  }

  $$AnimalEntriesTableOrderingComposer get codeMother {
    final $$AnimalEntriesTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.codeMother,
            referencedTable: $state.db.animalEntries,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder, parentComposers) =>
                $$AnimalEntriesTableOrderingComposer(ComposerState($state.db,
                    $state.db.animalEntries, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$AnimalEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AnimalEntriesTable,
    AnimalEntry,
    $$AnimalEntriesTableFilterComposer,
    $$AnimalEntriesTableOrderingComposer,
    $$AnimalEntriesTableCreateCompanionBuilder,
    $$AnimalEntriesTableUpdateCompanionBuilder,
    (AnimalEntry, $$AnimalEntriesTableReferences),
    AnimalEntry,
    PrefetchHooks Function({bool breedId, bool codeFather, bool codeMother})> {
  $$AnimalEntriesTableTableManager(_$AppDatabase db, $AnimalEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AnimalEntriesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AnimalEntriesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> imageURL = const Value.absent(),
            Value<String?> weight = const Value.absent(),
            Value<String?> health = const Value.absent(),
            Value<String?> exportType = const Value.absent(),
            Value<String?> electronicId = const Value.absent(),
            Value<bool> isInventoried = const Value.absent(),
            Value<bool> isStallion = const Value.absent(),
            Value<int?> breedId = const Value.absent(),
            Value<int?> codeFather = const Value.absent(),
            Value<int?> codeMother = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              AnimalEntriesCompanion(
            id: id,
            name: name,
            birthDate: birthDate,
            imageURL: imageURL,
            weight: weight,
            health: health,
            exportType: exportType,
            electronicId: electronicId,
            isInventoried: isInventoried,
            isStallion: isStallion,
            breedId: breedId,
            codeFather: codeFather,
            codeMother: codeMother,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> imageURL = const Value.absent(),
            Value<String?> weight = const Value.absent(),
            Value<String?> health = const Value.absent(),
            Value<String?> exportType = const Value.absent(),
            Value<String?> electronicId = const Value.absent(),
            Value<bool> isInventoried = const Value.absent(),
            Value<bool> isStallion = const Value.absent(),
            Value<int?> breedId = const Value.absent(),
            Value<int?> codeFather = const Value.absent(),
            Value<int?> codeMother = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              AnimalEntriesCompanion.insert(
            id: id,
            name: name,
            birthDate: birthDate,
            imageURL: imageURL,
            weight: weight,
            health: health,
            exportType: exportType,
            electronicId: electronicId,
            isInventoried: isInventoried,
            isStallion: isStallion,
            breedId: breedId,
            codeFather: codeFather,
            codeMother: codeMother,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AnimalEntriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {breedId = false, codeFather = false, codeMother = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (breedId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.breedId,
                    referencedTable:
                        $$AnimalEntriesTableReferences._breedIdTable(db),
                    referencedColumn:
                        $$AnimalEntriesTableReferences._breedIdTable(db).id,
                  ) as T;
                }
                if (codeFather) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.codeFather,
                    referencedTable:
                        $$AnimalEntriesTableReferences._codeFatherTable(db),
                    referencedColumn:
                        $$AnimalEntriesTableReferences._codeFatherTable(db).id,
                  ) as T;
                }
                if (codeMother) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.codeMother,
                    referencedTable:
                        $$AnimalEntriesTableReferences._codeMotherTable(db),
                    referencedColumn:
                        $$AnimalEntriesTableReferences._codeMotherTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$AnimalEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AnimalEntriesTable,
    AnimalEntry,
    $$AnimalEntriesTableFilterComposer,
    $$AnimalEntriesTableOrderingComposer,
    $$AnimalEntriesTableCreateCompanionBuilder,
    $$AnimalEntriesTableUpdateCompanionBuilder,
    (AnimalEntry, $$AnimalEntriesTableReferences),
    AnimalEntry,
    PrefetchHooks Function({bool breedId, bool codeFather, bool codeMother})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BreedEntriesTableTableManager get breedEntries =>
      $$BreedEntriesTableTableManager(_db, _db.breedEntries);
  $$AnimalEntriesTableTableManager get animalEntries =>
      $$AnimalEntriesTableTableManager(_db, _db.animalEntries);
}
