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
  static const VerificationMeta _purchasedDateMeta =
      const VerificationMeta('purchasedDate');
  @override
  late final GeneratedColumn<DateTime> purchasedDate =
      GeneratedColumn<DateTime>('purchased_date', aliasedName, true,
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
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String> price = GeneratedColumn<String>(
      'price', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _healthMeta = const VerificationMeta('health');
  @override
  late final GeneratedColumn<String> health = GeneratedColumn<String>(
      'health', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
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
  static const VerificationMeta _isDiscardedMeta =
      const VerificationMeta('isDiscarded');
  @override
  late final GeneratedColumn<bool> isDiscarded = GeneratedColumn<bool>(
      'is_discarded', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_discarded" IN (0, 1))'),
      defaultValue: const Constant(false));
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
        purchasedDate,
        imageURL,
        weight,
        price,
        health,
        type,
        exportType,
        electronicId,
        isDiscarded,
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
    if (data.containsKey('purchased_date')) {
      context.handle(
          _purchasedDateMeta,
          purchasedDate.isAcceptableOrUnknown(
              data['purchased_date']!, _purchasedDateMeta));
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
          imageURL.isAcceptableOrUnknown(data['image_u_r_l']!, _imageURLMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('health')) {
      context.handle(_healthMeta,
          health.isAcceptableOrUnknown(data['health']!, _healthMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
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
    if (data.containsKey('is_discarded')) {
      context.handle(
          _isDiscardedMeta,
          isDiscarded.isAcceptableOrUnknown(
              data['is_discarded']!, _isDiscardedMeta));
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
      purchasedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}purchased_date']),
      imageURL: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_u_r_l']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}weight']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price']),
      health: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}health']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      exportType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}export_type']),
      electronicId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}electronic_id']),
      isDiscarded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_discarded']),
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
  final DateTime? purchasedDate;
  final String? imageURL;
  final String? weight;
  final String? price;
  final String? health;
  final String? type;
  final String? exportType;
  final String? electronicId;
  final bool? isDiscarded;
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
      this.purchasedDate,
      this.imageURL,
      this.weight,
      this.price,
      this.health,
      this.type,
      this.exportType,
      this.electronicId,
      this.isDiscarded,
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
    if (!nullToAbsent || purchasedDate != null) {
      map['purchased_date'] = Variable<DateTime>(purchasedDate);
    }
    if (!nullToAbsent || imageURL != null) {
      map['image_u_r_l'] = Variable<String>(imageURL);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<String>(weight);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<String>(price);
    }
    if (!nullToAbsent || health != null) {
      map['health'] = Variable<String>(health);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || exportType != null) {
      map['export_type'] = Variable<String>(exportType);
    }
    if (!nullToAbsent || electronicId != null) {
      map['electronic_id'] = Variable<String>(electronicId);
    }
    if (!nullToAbsent || isDiscarded != null) {
      map['is_discarded'] = Variable<bool>(isDiscarded);
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
      purchasedDate: purchasedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(purchasedDate),
      imageURL: imageURL == null && nullToAbsent
          ? const Value.absent()
          : Value(imageURL),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      health:
          health == null && nullToAbsent ? const Value.absent() : Value(health),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      exportType: exportType == null && nullToAbsent
          ? const Value.absent()
          : Value(exportType),
      electronicId: electronicId == null && nullToAbsent
          ? const Value.absent()
          : Value(electronicId),
      isDiscarded: isDiscarded == null && nullToAbsent
          ? const Value.absent()
          : Value(isDiscarded),
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
      purchasedDate: serializer.fromJson<DateTime?>(json['purchasedDate']),
      imageURL: serializer.fromJson<String?>(json['imageURL']),
      weight: serializer.fromJson<String?>(json['weight']),
      price: serializer.fromJson<String?>(json['price']),
      health: serializer.fromJson<String?>(json['health']),
      type: serializer.fromJson<String?>(json['type']),
      exportType: serializer.fromJson<String?>(json['exportType']),
      electronicId: serializer.fromJson<String?>(json['electronicId']),
      isDiscarded: serializer.fromJson<bool?>(json['isDiscarded']),
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
      'purchasedDate': serializer.toJson<DateTime?>(purchasedDate),
      'imageURL': serializer.toJson<String?>(imageURL),
      'weight': serializer.toJson<String?>(weight),
      'price': serializer.toJson<String?>(price),
      'health': serializer.toJson<String?>(health),
      'type': serializer.toJson<String?>(type),
      'exportType': serializer.toJson<String?>(exportType),
      'electronicId': serializer.toJson<String?>(electronicId),
      'isDiscarded': serializer.toJson<bool?>(isDiscarded),
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
          Value<DateTime?> purchasedDate = const Value.absent(),
          Value<String?> imageURL = const Value.absent(),
          Value<String?> weight = const Value.absent(),
          Value<String?> price = const Value.absent(),
          Value<String?> health = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<String?> exportType = const Value.absent(),
          Value<String?> electronicId = const Value.absent(),
          Value<bool?> isDiscarded = const Value.absent(),
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
        purchasedDate:
            purchasedDate.present ? purchasedDate.value : this.purchasedDate,
        imageURL: imageURL.present ? imageURL.value : this.imageURL,
        weight: weight.present ? weight.value : this.weight,
        price: price.present ? price.value : this.price,
        health: health.present ? health.value : this.health,
        type: type.present ? type.value : this.type,
        exportType: exportType.present ? exportType.value : this.exportType,
        electronicId:
            electronicId.present ? electronicId.value : this.electronicId,
        isDiscarded: isDiscarded.present ? isDiscarded.value : this.isDiscarded,
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
      purchasedDate: data.purchasedDate.present
          ? data.purchasedDate.value
          : this.purchasedDate,
      imageURL: data.imageURL.present ? data.imageURL.value : this.imageURL,
      weight: data.weight.present ? data.weight.value : this.weight,
      price: data.price.present ? data.price.value : this.price,
      health: data.health.present ? data.health.value : this.health,
      type: data.type.present ? data.type.value : this.type,
      exportType:
          data.exportType.present ? data.exportType.value : this.exportType,
      electronicId: data.electronicId.present
          ? data.electronicId.value
          : this.electronicId,
      isDiscarded:
          data.isDiscarded.present ? data.isDiscarded.value : this.isDiscarded,
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
          ..write('purchasedDate: $purchasedDate, ')
          ..write('imageURL: $imageURL, ')
          ..write('weight: $weight, ')
          ..write('price: $price, ')
          ..write('health: $health, ')
          ..write('type: $type, ')
          ..write('exportType: $exportType, ')
          ..write('electronicId: $electronicId, ')
          ..write('isDiscarded: $isDiscarded, ')
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
      purchasedDate,
      imageURL,
      weight,
      price,
      health,
      type,
      exportType,
      electronicId,
      isDiscarded,
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
          other.purchasedDate == this.purchasedDate &&
          other.imageURL == this.imageURL &&
          other.weight == this.weight &&
          other.price == this.price &&
          other.health == this.health &&
          other.type == this.type &&
          other.exportType == this.exportType &&
          other.electronicId == this.electronicId &&
          other.isDiscarded == this.isDiscarded &&
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
  final Value<DateTime?> purchasedDate;
  final Value<String?> imageURL;
  final Value<String?> weight;
  final Value<String?> price;
  final Value<String?> health;
  final Value<String?> type;
  final Value<String?> exportType;
  final Value<String?> electronicId;
  final Value<bool?> isDiscarded;
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
    this.purchasedDate = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.weight = const Value.absent(),
    this.price = const Value.absent(),
    this.health = const Value.absent(),
    this.type = const Value.absent(),
    this.exportType = const Value.absent(),
    this.electronicId = const Value.absent(),
    this.isDiscarded = const Value.absent(),
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
    this.purchasedDate = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.weight = const Value.absent(),
    this.price = const Value.absent(),
    this.health = const Value.absent(),
    this.type = const Value.absent(),
    this.exportType = const Value.absent(),
    this.electronicId = const Value.absent(),
    this.isDiscarded = const Value.absent(),
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
    Expression<DateTime>? purchasedDate,
    Expression<String>? imageURL,
    Expression<String>? weight,
    Expression<String>? price,
    Expression<String>? health,
    Expression<String>? type,
    Expression<String>? exportType,
    Expression<String>? electronicId,
    Expression<bool>? isDiscarded,
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
      if (purchasedDate != null) 'purchased_date': purchasedDate,
      if (imageURL != null) 'image_u_r_l': imageURL,
      if (weight != null) 'weight': weight,
      if (price != null) 'price': price,
      if (health != null) 'health': health,
      if (type != null) 'type': type,
      if (exportType != null) 'export_type': exportType,
      if (electronicId != null) 'electronic_id': electronicId,
      if (isDiscarded != null) 'is_discarded': isDiscarded,
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
      Value<DateTime?>? purchasedDate,
      Value<String?>? imageURL,
      Value<String?>? weight,
      Value<String?>? price,
      Value<String?>? health,
      Value<String?>? type,
      Value<String?>? exportType,
      Value<String?>? electronicId,
      Value<bool?>? isDiscarded,
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
      purchasedDate: purchasedDate ?? this.purchasedDate,
      imageURL: imageURL ?? this.imageURL,
      weight: weight ?? this.weight,
      price: price ?? this.price,
      health: health ?? this.health,
      type: type ?? this.type,
      exportType: exportType ?? this.exportType,
      electronicId: electronicId ?? this.electronicId,
      isDiscarded: isDiscarded ?? this.isDiscarded,
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
    if (purchasedDate.present) {
      map['purchased_date'] = Variable<DateTime>(purchasedDate.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    if (weight.present) {
      map['weight'] = Variable<String>(weight.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (health.present) {
      map['health'] = Variable<String>(health.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (exportType.present) {
      map['export_type'] = Variable<String>(exportType.value);
    }
    if (electronicId.present) {
      map['electronic_id'] = Variable<String>(electronicId.value);
    }
    if (isDiscarded.present) {
      map['is_discarded'] = Variable<bool>(isDiscarded.value);
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
          ..write('purchasedDate: $purchasedDate, ')
          ..write('imageURL: $imageURL, ')
          ..write('weight: $weight, ')
          ..write('price: $price, ')
          ..write('health: $health, ')
          ..write('type: $type, ')
          ..write('exportType: $exportType, ')
          ..write('electronicId: $electronicId, ')
          ..write('isDiscarded: $isDiscarded, ')
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

class $EventEntriesTable extends EventEntries
    with TableInfo<$EventEntriesTable, EventEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _eventTypeMeta =
      const VerificationMeta('eventType');
  @override
  late final GeneratedColumn<String> eventType = GeneratedColumn<String>(
      'event_type', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _animalIdMeta =
      const VerificationMeta('animalId');
  @override
  late final GeneratedColumn<int> animalId = GeneratedColumn<int>(
      'animal_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES animal_entries (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, date, eventType, animalId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'event_entries';
  @override
  VerificationContext validateIntegrity(Insertable<EventEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('event_type')) {
      context.handle(_eventTypeMeta,
          eventType.isAcceptableOrUnknown(data['event_type']!, _eventTypeMeta));
    } else if (isInserting) {
      context.missing(_eventTypeMeta);
    }
    if (data.containsKey('animal_id')) {
      context.handle(_animalIdMeta,
          animalId.isAcceptableOrUnknown(data['animal_id']!, _animalIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EventEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EventEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      eventType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}event_type'])!,
      animalId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}animal_id']),
    );
  }

  @override
  $EventEntriesTable createAlias(String alias) {
    return $EventEntriesTable(attachedDatabase, alias);
  }
}

class EventEntry extends DataClass implements Insertable<EventEntry> {
  final int id;
  final String title;
  final String? description;
  final DateTime date;
  final String eventType;
  final int? animalId;
  const EventEntry(
      {required this.id,
      required this.title,
      this.description,
      required this.date,
      required this.eventType,
      this.animalId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['date'] = Variable<DateTime>(date);
    map['event_type'] = Variable<String>(eventType);
    if (!nullToAbsent || animalId != null) {
      map['animal_id'] = Variable<int>(animalId);
    }
    return map;
  }

  EventEntriesCompanion toCompanion(bool nullToAbsent) {
    return EventEntriesCompanion(
      id: Value(id),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      date: Value(date),
      eventType: Value(eventType),
      animalId: animalId == null && nullToAbsent
          ? const Value.absent()
          : Value(animalId),
    );
  }

  factory EventEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EventEntry(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      date: serializer.fromJson<DateTime>(json['date']),
      eventType: serializer.fromJson<String>(json['eventType']),
      animalId: serializer.fromJson<int?>(json['animalId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'date': serializer.toJson<DateTime>(date),
      'eventType': serializer.toJson<String>(eventType),
      'animalId': serializer.toJson<int?>(animalId),
    };
  }

  EventEntry copyWith(
          {int? id,
          String? title,
          Value<String?> description = const Value.absent(),
          DateTime? date,
          String? eventType,
          Value<int?> animalId = const Value.absent()}) =>
      EventEntry(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description.present ? description.value : this.description,
        date: date ?? this.date,
        eventType: eventType ?? this.eventType,
        animalId: animalId.present ? animalId.value : this.animalId,
      );
  EventEntry copyWithCompanion(EventEntriesCompanion data) {
    return EventEntry(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      date: data.date.present ? data.date.value : this.date,
      eventType: data.eventType.present ? data.eventType.value : this.eventType,
      animalId: data.animalId.present ? data.animalId.value : this.animalId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EventEntry(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('date: $date, ')
          ..write('eventType: $eventType, ')
          ..write('animalId: $animalId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, description, date, eventType, animalId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EventEntry &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.date == this.date &&
          other.eventType == this.eventType &&
          other.animalId == this.animalId);
}

class EventEntriesCompanion extends UpdateCompanion<EventEntry> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<DateTime> date;
  final Value<String> eventType;
  final Value<int?> animalId;
  const EventEntriesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.date = const Value.absent(),
    this.eventType = const Value.absent(),
    this.animalId = const Value.absent(),
  });
  EventEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.description = const Value.absent(),
    required DateTime date,
    required String eventType,
    this.animalId = const Value.absent(),
  })  : title = Value(title),
        date = Value(date),
        eventType = Value(eventType);
  static Insertable<EventEntry> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<DateTime>? date,
    Expression<String>? eventType,
    Expression<int>? animalId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (date != null) 'date': date,
      if (eventType != null) 'event_type': eventType,
      if (animalId != null) 'animal_id': animalId,
    });
  }

  EventEntriesCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String?>? description,
      Value<DateTime>? date,
      Value<String>? eventType,
      Value<int?>? animalId}) {
    return EventEntriesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      eventType: eventType ?? this.eventType,
      animalId: animalId ?? this.animalId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (eventType.present) {
      map['event_type'] = Variable<String>(eventType.value);
    }
    if (animalId.present) {
      map['animal_id'] = Variable<int>(animalId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventEntriesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('date: $date, ')
          ..write('eventType: $eventType, ')
          ..write('animalId: $animalId')
          ..write(')'))
        .toString();
  }
}

class $UserEntriesTable extends UserEntries
    with TableInfo<$UserEntriesTable, UserEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 8, maxTextLength: 15),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, email, name, password, phone, address, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_entries';
  @override
  VerificationContext validateIntegrity(Insertable<UserEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
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
  UserEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $UserEntriesTable createAlias(String alias) {
    return $UserEntriesTable(attachedDatabase, alias);
  }
}

class UserEntry extends DataClass implements Insertable<UserEntry> {
  final int id;
  final String email;
  final String name;
  final String password;
  final String? phone;
  final String? address;
  final DateTime? createdAt;
  const UserEntry(
      {required this.id,
      required this.email,
      required this.name,
      required this.password,
      this.phone,
      this.address,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    map['name'] = Variable<String>(name);
    map['password'] = Variable<String>(password);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  UserEntriesCompanion toCompanion(bool nullToAbsent) {
    return UserEntriesCompanion(
      id: Value(id),
      email: Value(email),
      name: Value(name),
      password: Value(password),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory UserEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserEntry(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      name: serializer.fromJson<String>(json['name']),
      password: serializer.fromJson<String>(json['password']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<String?>(json['address']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'name': serializer.toJson<String>(name),
      'password': serializer.toJson<String>(password),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<String?>(address),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  UserEntry copyWith(
          {int? id,
          String? email,
          String? name,
          String? password,
          Value<String?> phone = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent()}) =>
      UserEntry(
        id: id ?? this.id,
        email: email ?? this.email,
        name: name ?? this.name,
        password: password ?? this.password,
        phone: phone.present ? phone.value : this.phone,
        address: address.present ? address.value : this.address,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  UserEntry copyWithCompanion(UserEntriesCompanion data) {
    return UserEntry(
      id: data.id.present ? data.id.value : this.id,
      email: data.email.present ? data.email.value : this.email,
      name: data.name.present ? data.name.value : this.name,
      password: data.password.present ? data.password.value : this.password,
      phone: data.phone.present ? data.phone.value : this.phone,
      address: data.address.present ? data.address.value : this.address,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserEntry(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('name: $name, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, email, name, password, phone, address, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserEntry &&
          other.id == this.id &&
          other.email == this.email &&
          other.name == this.name &&
          other.password == this.password &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.createdAt == this.createdAt);
}

class UserEntriesCompanion extends UpdateCompanion<UserEntry> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> name;
  final Value<String> password;
  final Value<String?> phone;
  final Value<String?> address;
  final Value<DateTime?> createdAt;
  const UserEntriesCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.name = const Value.absent(),
    this.password = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  UserEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String name,
    required String password,
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : email = Value(email),
        name = Value(name),
        password = Value(password);
  static Insertable<UserEntry> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? name,
    Expression<String>? password,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (name != null) 'name': name,
      if (password != null) 'password': password,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  UserEntriesCompanion copyWith(
      {Value<int>? id,
      Value<String>? email,
      Value<String>? name,
      Value<String>? password,
      Value<String?>? phone,
      Value<String?>? address,
      Value<DateTime?>? createdAt}) {
    return UserEntriesCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserEntriesCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('name: $name, ')
          ..write('password: $password, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
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
  late final $EventEntriesTable eventEntries = $EventEntriesTable(this);
  late final $UserEntriesTable userEntries = $UserEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [breedEntries, animalEntries, eventEntries, userEntries];
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
    extends Composer<_$AppDatabase, $BreedEntriesTable> {
  $$BreedEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> animalEntriesRefs(
      Expression<bool> Function($$AnimalEntriesTableFilterComposer f) f) {
    final $$AnimalEntriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.breedId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableFilterComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BreedEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $BreedEntriesTable> {
  $$BreedEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$BreedEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $BreedEntriesTable> {
  $$BreedEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> animalEntriesRefs<T extends Object>(
      Expression<T> Function($$AnimalEntriesTableAnnotationComposer a) f) {
    final $$AnimalEntriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.breedId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableAnnotationComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$BreedEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BreedEntriesTable,
    BreedEntry,
    $$BreedEntriesTableFilterComposer,
    $$BreedEntriesTableOrderingComposer,
    $$BreedEntriesTableAnnotationComposer,
    $$BreedEntriesTableCreateCompanionBuilder,
    $$BreedEntriesTableUpdateCompanionBuilder,
    (BreedEntry, $$BreedEntriesTableReferences),
    BreedEntry,
    PrefetchHooks Function({bool animalEntriesRefs})> {
  $$BreedEntriesTableTableManager(_$AppDatabase db, $BreedEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BreedEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BreedEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BreedEntriesTableAnnotationComposer($db: db, $table: table),
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
    $$BreedEntriesTableAnnotationComposer,
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
  Value<DateTime?> purchasedDate,
  Value<String?> imageURL,
  Value<String?> weight,
  Value<String?> price,
  Value<String?> health,
  Value<String?> type,
  Value<String?> exportType,
  Value<String?> electronicId,
  Value<bool?> isDiscarded,
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
  Value<DateTime?> purchasedDate,
  Value<String?> imageURL,
  Value<String?> weight,
  Value<String?> price,
  Value<String?> health,
  Value<String?> type,
  Value<String?> exportType,
  Value<String?> electronicId,
  Value<bool?> isDiscarded,
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

  static MultiTypedResultKey<$EventEntriesTable, List<EventEntry>>
      _eventEntriesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.eventEntries,
              aliasName: $_aliasNameGenerator(
                  db.animalEntries.id, db.eventEntries.animalId));

  $$EventEntriesTableProcessedTableManager get eventEntriesRefs {
    final manager = $$EventEntriesTableTableManager($_db, $_db.eventEntries)
        .filter((f) => f.animalId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_eventEntriesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AnimalEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $AnimalEntriesTable> {
  $$AnimalEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get purchasedDate => $composableBuilder(
      column: $table.purchasedDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageURL => $composableBuilder(
      column: $table.imageURL, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get weight => $composableBuilder(
      column: $table.weight, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get health => $composableBuilder(
      column: $table.health, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get exportType => $composableBuilder(
      column: $table.exportType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get electronicId => $composableBuilder(
      column: $table.electronicId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDiscarded => $composableBuilder(
      column: $table.isDiscarded, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isInventoried => $composableBuilder(
      column: $table.isInventoried, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isStallion => $composableBuilder(
      column: $table.isStallion, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$BreedEntriesTableFilterComposer get breedId {
    final $$BreedEntriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.breedId,
        referencedTable: $db.breedEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BreedEntriesTableFilterComposer(
              $db: $db,
              $table: $db.breedEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AnimalEntriesTableFilterComposer get codeFather {
    final $$AnimalEntriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeFather,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableFilterComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AnimalEntriesTableFilterComposer get codeMother {
    final $$AnimalEntriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeMother,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableFilterComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> eventEntriesRefs(
      Expression<bool> Function($$EventEntriesTableFilterComposer f) f) {
    final $$EventEntriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.eventEntries,
        getReferencedColumn: (t) => t.animalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EventEntriesTableFilterComposer(
              $db: $db,
              $table: $db.eventEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AnimalEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $AnimalEntriesTable> {
  $$AnimalEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get purchasedDate => $composableBuilder(
      column: $table.purchasedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageURL => $composableBuilder(
      column: $table.imageURL, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get weight => $composableBuilder(
      column: $table.weight, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get health => $composableBuilder(
      column: $table.health, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get exportType => $composableBuilder(
      column: $table.exportType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get electronicId => $composableBuilder(
      column: $table.electronicId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDiscarded => $composableBuilder(
      column: $table.isDiscarded, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isInventoried => $composableBuilder(
      column: $table.isInventoried,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isStallion => $composableBuilder(
      column: $table.isStallion, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$BreedEntriesTableOrderingComposer get breedId {
    final $$BreedEntriesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.breedId,
        referencedTable: $db.breedEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BreedEntriesTableOrderingComposer(
              $db: $db,
              $table: $db.breedEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AnimalEntriesTableOrderingComposer get codeFather {
    final $$AnimalEntriesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeFather,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableOrderingComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AnimalEntriesTableOrderingComposer get codeMother {
    final $$AnimalEntriesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeMother,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableOrderingComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AnimalEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnimalEntriesTable> {
  $$AnimalEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<DateTime> get purchasedDate => $composableBuilder(
      column: $table.purchasedDate, builder: (column) => column);

  GeneratedColumn<String> get imageURL =>
      $composableBuilder(column: $table.imageURL, builder: (column) => column);

  GeneratedColumn<String> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<String> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<String> get health =>
      $composableBuilder(column: $table.health, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get exportType => $composableBuilder(
      column: $table.exportType, builder: (column) => column);

  GeneratedColumn<String> get electronicId => $composableBuilder(
      column: $table.electronicId, builder: (column) => column);

  GeneratedColumn<bool> get isDiscarded => $composableBuilder(
      column: $table.isDiscarded, builder: (column) => column);

  GeneratedColumn<bool> get isInventoried => $composableBuilder(
      column: $table.isInventoried, builder: (column) => column);

  GeneratedColumn<bool> get isStallion => $composableBuilder(
      column: $table.isStallion, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$BreedEntriesTableAnnotationComposer get breedId {
    final $$BreedEntriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.breedId,
        referencedTable: $db.breedEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BreedEntriesTableAnnotationComposer(
              $db: $db,
              $table: $db.breedEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AnimalEntriesTableAnnotationComposer get codeFather {
    final $$AnimalEntriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeFather,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableAnnotationComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AnimalEntriesTableAnnotationComposer get codeMother {
    final $$AnimalEntriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.codeMother,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableAnnotationComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> eventEntriesRefs<T extends Object>(
      Expression<T> Function($$EventEntriesTableAnnotationComposer a) f) {
    final $$EventEntriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.eventEntries,
        getReferencedColumn: (t) => t.animalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EventEntriesTableAnnotationComposer(
              $db: $db,
              $table: $db.eventEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AnimalEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AnimalEntriesTable,
    AnimalEntry,
    $$AnimalEntriesTableFilterComposer,
    $$AnimalEntriesTableOrderingComposer,
    $$AnimalEntriesTableAnnotationComposer,
    $$AnimalEntriesTableCreateCompanionBuilder,
    $$AnimalEntriesTableUpdateCompanionBuilder,
    (AnimalEntry, $$AnimalEntriesTableReferences),
    AnimalEntry,
    PrefetchHooks Function(
        {bool breedId,
        bool codeFather,
        bool codeMother,
        bool eventEntriesRefs})> {
  $$AnimalEntriesTableTableManager(_$AppDatabase db, $AnimalEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnimalEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnimalEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnimalEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<DateTime?> purchasedDate = const Value.absent(),
            Value<String?> imageURL = const Value.absent(),
            Value<String?> weight = const Value.absent(),
            Value<String?> price = const Value.absent(),
            Value<String?> health = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> exportType = const Value.absent(),
            Value<String?> electronicId = const Value.absent(),
            Value<bool?> isDiscarded = const Value.absent(),
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
            purchasedDate: purchasedDate,
            imageURL: imageURL,
            weight: weight,
            price: price,
            health: health,
            type: type,
            exportType: exportType,
            electronicId: electronicId,
            isDiscarded: isDiscarded,
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
            Value<DateTime?> purchasedDate = const Value.absent(),
            Value<String?> imageURL = const Value.absent(),
            Value<String?> weight = const Value.absent(),
            Value<String?> price = const Value.absent(),
            Value<String?> health = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> exportType = const Value.absent(),
            Value<String?> electronicId = const Value.absent(),
            Value<bool?> isDiscarded = const Value.absent(),
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
            purchasedDate: purchasedDate,
            imageURL: imageURL,
            weight: weight,
            price: price,
            health: health,
            type: type,
            exportType: exportType,
            electronicId: electronicId,
            isDiscarded: isDiscarded,
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
              {breedId = false,
              codeFather = false,
              codeMother = false,
              eventEntriesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (eventEntriesRefs) db.eventEntries],
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
                return [
                  if (eventEntriesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$AnimalEntriesTableReferences
                            ._eventEntriesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AnimalEntriesTableReferences(db, table, p0)
                                .eventEntriesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.animalId == item.id),
                        typedResults: items)
                ];
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
    $$AnimalEntriesTableAnnotationComposer,
    $$AnimalEntriesTableCreateCompanionBuilder,
    $$AnimalEntriesTableUpdateCompanionBuilder,
    (AnimalEntry, $$AnimalEntriesTableReferences),
    AnimalEntry,
    PrefetchHooks Function(
        {bool breedId,
        bool codeFather,
        bool codeMother,
        bool eventEntriesRefs})>;
typedef $$EventEntriesTableCreateCompanionBuilder = EventEntriesCompanion
    Function({
  Value<int> id,
  required String title,
  Value<String?> description,
  required DateTime date,
  required String eventType,
  Value<int?> animalId,
});
typedef $$EventEntriesTableUpdateCompanionBuilder = EventEntriesCompanion
    Function({
  Value<int> id,
  Value<String> title,
  Value<String?> description,
  Value<DateTime> date,
  Value<String> eventType,
  Value<int?> animalId,
});

final class $$EventEntriesTableReferences
    extends BaseReferences<_$AppDatabase, $EventEntriesTable, EventEntry> {
  $$EventEntriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AnimalEntriesTable _animalIdTable(_$AppDatabase db) =>
      db.animalEntries.createAlias(
          $_aliasNameGenerator(db.eventEntries.animalId, db.animalEntries.id));

  $$AnimalEntriesTableProcessedTableManager? get animalId {
    if ($_item.animalId == null) return null;
    final manager = $$AnimalEntriesTableTableManager($_db, $_db.animalEntries)
        .filter((f) => f.id($_item.animalId!));
    final item = $_typedResult.readTableOrNull(_animalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$EventEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $EventEntriesTable> {
  $$EventEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get eventType => $composableBuilder(
      column: $table.eventType, builder: (column) => ColumnFilters(column));

  $$AnimalEntriesTableFilterComposer get animalId {
    final $$AnimalEntriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.animalId,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableFilterComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EventEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $EventEntriesTable> {
  $$EventEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get eventType => $composableBuilder(
      column: $table.eventType, builder: (column) => ColumnOrderings(column));

  $$AnimalEntriesTableOrderingComposer get animalId {
    final $$AnimalEntriesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.animalId,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableOrderingComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EventEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventEntriesTable> {
  $$EventEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get eventType =>
      $composableBuilder(column: $table.eventType, builder: (column) => column);

  $$AnimalEntriesTableAnnotationComposer get animalId {
    final $$AnimalEntriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.animalId,
        referencedTable: $db.animalEntries,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AnimalEntriesTableAnnotationComposer(
              $db: $db,
              $table: $db.animalEntries,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EventEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EventEntriesTable,
    EventEntry,
    $$EventEntriesTableFilterComposer,
    $$EventEntriesTableOrderingComposer,
    $$EventEntriesTableAnnotationComposer,
    $$EventEntriesTableCreateCompanionBuilder,
    $$EventEntriesTableUpdateCompanionBuilder,
    (EventEntry, $$EventEntriesTableReferences),
    EventEntry,
    PrefetchHooks Function({bool animalId})> {
  $$EventEntriesTableTableManager(_$AppDatabase db, $EventEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String> eventType = const Value.absent(),
            Value<int?> animalId = const Value.absent(),
          }) =>
              EventEntriesCompanion(
            id: id,
            title: title,
            description: description,
            date: date,
            eventType: eventType,
            animalId: animalId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            Value<String?> description = const Value.absent(),
            required DateTime date,
            required String eventType,
            Value<int?> animalId = const Value.absent(),
          }) =>
              EventEntriesCompanion.insert(
            id: id,
            title: title,
            description: description,
            date: date,
            eventType: eventType,
            animalId: animalId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$EventEntriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({animalId = false}) {
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
                      dynamic,
                      dynamic>>(state) {
                if (animalId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.animalId,
                    referencedTable:
                        $$EventEntriesTableReferences._animalIdTable(db),
                    referencedColumn:
                        $$EventEntriesTableReferences._animalIdTable(db).id,
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

typedef $$EventEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EventEntriesTable,
    EventEntry,
    $$EventEntriesTableFilterComposer,
    $$EventEntriesTableOrderingComposer,
    $$EventEntriesTableAnnotationComposer,
    $$EventEntriesTableCreateCompanionBuilder,
    $$EventEntriesTableUpdateCompanionBuilder,
    (EventEntry, $$EventEntriesTableReferences),
    EventEntry,
    PrefetchHooks Function({bool animalId})>;
typedef $$UserEntriesTableCreateCompanionBuilder = UserEntriesCompanion
    Function({
  Value<int> id,
  required String email,
  required String name,
  required String password,
  Value<String?> phone,
  Value<String?> address,
  Value<DateTime?> createdAt,
});
typedef $$UserEntriesTableUpdateCompanionBuilder = UserEntriesCompanion
    Function({
  Value<int> id,
  Value<String> email,
  Value<String> name,
  Value<String> password,
  Value<String?> phone,
  Value<String?> address,
  Value<DateTime?> createdAt,
});

class $$UserEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $UserEntriesTable> {
  $$UserEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$UserEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserEntriesTable> {
  $$UserEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$UserEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserEntriesTable> {
  $$UserEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$UserEntriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserEntriesTable,
    UserEntry,
    $$UserEntriesTableFilterComposer,
    $$UserEntriesTableOrderingComposer,
    $$UserEntriesTableAnnotationComposer,
    $$UserEntriesTableCreateCompanionBuilder,
    $$UserEntriesTableUpdateCompanionBuilder,
    (UserEntry, BaseReferences<_$AppDatabase, $UserEntriesTable, UserEntry>),
    UserEntry,
    PrefetchHooks Function()> {
  $$UserEntriesTableTableManager(_$AppDatabase db, $UserEntriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              UserEntriesCompanion(
            id: id,
            email: email,
            name: name,
            password: password,
            phone: phone,
            address: address,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String email,
            required String name,
            required String password,
            Value<String?> phone = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              UserEntriesCompanion.insert(
            id: id,
            email: email,
            name: name,
            password: password,
            phone: phone,
            address: address,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserEntriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserEntriesTable,
    UserEntry,
    $$UserEntriesTableFilterComposer,
    $$UserEntriesTableOrderingComposer,
    $$UserEntriesTableAnnotationComposer,
    $$UserEntriesTableCreateCompanionBuilder,
    $$UserEntriesTableUpdateCompanionBuilder,
    (UserEntry, BaseReferences<_$AppDatabase, $UserEntriesTable, UserEntry>),
    UserEntry,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BreedEntriesTableTableManager get breedEntries =>
      $$BreedEntriesTableTableManager(_db, _db.breedEntries);
  $$AnimalEntriesTableTableManager get animalEntries =>
      $$AnimalEntriesTableTableManager(_db, _db.animalEntries);
  $$EventEntriesTableTableManager get eventEntries =>
      $$EventEntriesTableTableManager(_db, _db.eventEntries);
  $$UserEntriesTableTableManager get userEntries =>
      $$UserEntriesTableTableManager(_db, _db.userEntries);
}
