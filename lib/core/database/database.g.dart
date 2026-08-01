// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $IngredientsTable extends Ingredients
    with TableInfo<$IngredientsTable, Ingredient> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IngredientsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameFrMeta = const VerificationMeta('nameFr');
  @override
  late final GeneratedColumn<String> nameFr = GeneratedColumn<String>(
    'name_fr',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _barcodeMeta = const VerificationMeta(
    'barcode',
  );
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
    'barcode',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isCustomMeta = const VerificationMeta(
    'isCustom',
  );
  @override
  late final GeneratedColumn<bool> isCustom = GeneratedColumn<bool>(
    'is_custom',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_custom" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sourceIdMeta = const VerificationMeta(
    'sourceId',
  );
  @override
  late final GeneratedColumn<String> sourceId = GeneratedColumn<String>(
    'source_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    nameFr,
    category,
    brand,
    barcode,
    isCustom,
    source,
    sourceId,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ingredients';
  @override
  VerificationContext validateIntegrity(
    Insertable<Ingredient> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('name_fr')) {
      context.handle(
        _nameFrMeta,
        nameFr.isAcceptableOrUnknown(data['name_fr']!, _nameFrMeta),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    }
    if (data.containsKey('barcode')) {
      context.handle(
        _barcodeMeta,
        barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta),
      );
    }
    if (data.containsKey('is_custom')) {
      context.handle(
        _isCustomMeta,
        isCustom.isAcceptableOrUnknown(data['is_custom']!, _isCustomMeta),
      );
    }
    if (data.containsKey('source')) {
      context.handle(
        _sourceMeta,
        source.isAcceptableOrUnknown(data['source']!, _sourceMeta),
      );
    }
    if (data.containsKey('source_id')) {
      context.handle(
        _sourceIdMeta,
        sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Ingredient map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Ingredient(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      nameFr: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name_fr'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      ),
      barcode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}barcode'],
      ),
      isCustom: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_custom'],
      )!,
      source: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source'],
      ),
      sourceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_id'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $IngredientsTable createAlias(String alias) {
    return $IngredientsTable(attachedDatabase, alias);
  }
}

class Ingredient extends DataClass implements Insertable<Ingredient> {
  final String id;
  final String name;
  final String? nameFr;
  final String? category;
  final String? brand;
  final String? barcode;
  final bool isCustom;
  final String? source;
  final String? sourceId;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Ingredient({
    required this.id,
    required this.name,
    this.nameFr,
    this.category,
    this.brand,
    this.barcode,
    required this.isCustom,
    this.source,
    this.sourceId,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || nameFr != null) {
      map['name_fr'] = Variable<String>(nameFr);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || barcode != null) {
      map['barcode'] = Variable<String>(barcode);
    }
    map['is_custom'] = Variable<bool>(isCustom);
    if (!nullToAbsent || source != null) {
      map['source'] = Variable<String>(source);
    }
    if (!nullToAbsent || sourceId != null) {
      map['source_id'] = Variable<String>(sourceId);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  IngredientsCompanion toCompanion(bool nullToAbsent) {
    return IngredientsCompanion(
      id: Value(id),
      name: Value(name),
      nameFr: nameFr == null && nullToAbsent
          ? const Value.absent()
          : Value(nameFr),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      brand: brand == null && nullToAbsent
          ? const Value.absent()
          : Value(brand),
      barcode: barcode == null && nullToAbsent
          ? const Value.absent()
          : Value(barcode),
      isCustom: Value(isCustom),
      source: source == null && nullToAbsent
          ? const Value.absent()
          : Value(source),
      sourceId: sourceId == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceId),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Ingredient.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Ingredient(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      nameFr: serializer.fromJson<String?>(json['nameFr']),
      category: serializer.fromJson<String?>(json['category']),
      brand: serializer.fromJson<String?>(json['brand']),
      barcode: serializer.fromJson<String?>(json['barcode']),
      isCustom: serializer.fromJson<bool>(json['isCustom']),
      source: serializer.fromJson<String?>(json['source']),
      sourceId: serializer.fromJson<String?>(json['sourceId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'nameFr': serializer.toJson<String?>(nameFr),
      'category': serializer.toJson<String?>(category),
      'brand': serializer.toJson<String?>(brand),
      'barcode': serializer.toJson<String?>(barcode),
      'isCustom': serializer.toJson<bool>(isCustom),
      'source': serializer.toJson<String?>(source),
      'sourceId': serializer.toJson<String?>(sourceId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Ingredient copyWith({
    String? id,
    String? name,
    Value<String?> nameFr = const Value.absent(),
    Value<String?> category = const Value.absent(),
    Value<String?> brand = const Value.absent(),
    Value<String?> barcode = const Value.absent(),
    bool? isCustom,
    Value<String?> source = const Value.absent(),
    Value<String?> sourceId = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Ingredient(
    id: id ?? this.id,
    name: name ?? this.name,
    nameFr: nameFr.present ? nameFr.value : this.nameFr,
    category: category.present ? category.value : this.category,
    brand: brand.present ? brand.value : this.brand,
    barcode: barcode.present ? barcode.value : this.barcode,
    isCustom: isCustom ?? this.isCustom,
    source: source.present ? source.value : this.source,
    sourceId: sourceId.present ? sourceId.value : this.sourceId,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Ingredient copyWithCompanion(IngredientsCompanion data) {
    return Ingredient(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      nameFr: data.nameFr.present ? data.nameFr.value : this.nameFr,
      category: data.category.present ? data.category.value : this.category,
      brand: data.brand.present ? data.brand.value : this.brand,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
      isCustom: data.isCustom.present ? data.isCustom.value : this.isCustom,
      source: data.source.present ? data.source.value : this.source,
      sourceId: data.sourceId.present ? data.sourceId.value : this.sourceId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Ingredient(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameFr: $nameFr, ')
          ..write('category: $category, ')
          ..write('brand: $brand, ')
          ..write('barcode: $barcode, ')
          ..write('isCustom: $isCustom, ')
          ..write('source: $source, ')
          ..write('sourceId: $sourceId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    nameFr,
    category,
    brand,
    barcode,
    isCustom,
    source,
    sourceId,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Ingredient &&
          other.id == this.id &&
          other.name == this.name &&
          other.nameFr == this.nameFr &&
          other.category == this.category &&
          other.brand == this.brand &&
          other.barcode == this.barcode &&
          other.isCustom == this.isCustom &&
          other.source == this.source &&
          other.sourceId == this.sourceId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class IngredientsCompanion extends UpdateCompanion<Ingredient> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> nameFr;
  final Value<String?> category;
  final Value<String?> brand;
  final Value<String?> barcode;
  final Value<bool> isCustom;
  final Value<String?> source;
  final Value<String?> sourceId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const IngredientsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.nameFr = const Value.absent(),
    this.category = const Value.absent(),
    this.brand = const Value.absent(),
    this.barcode = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  IngredientsCompanion.insert({
    required String id,
    required String name,
    this.nameFr = const Value.absent(),
    this.category = const Value.absent(),
    this.brand = const Value.absent(),
    this.barcode = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<Ingredient> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? nameFr,
    Expression<String>? category,
    Expression<String>? brand,
    Expression<String>? barcode,
    Expression<bool>? isCustom,
    Expression<String>? source,
    Expression<String>? sourceId,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (nameFr != null) 'name_fr': nameFr,
      if (category != null) 'category': category,
      if (brand != null) 'brand': brand,
      if (barcode != null) 'barcode': barcode,
      if (isCustom != null) 'is_custom': isCustom,
      if (source != null) 'source': source,
      if (sourceId != null) 'source_id': sourceId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  IngredientsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? nameFr,
    Value<String?>? category,
    Value<String?>? brand,
    Value<String?>? barcode,
    Value<bool>? isCustom,
    Value<String?>? source,
    Value<String?>? sourceId,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return IngredientsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      nameFr: nameFr ?? this.nameFr,
      category: category ?? this.category,
      brand: brand ?? this.brand,
      barcode: barcode ?? this.barcode,
      isCustom: isCustom ?? this.isCustom,
      source: source ?? this.source,
      sourceId: sourceId ?? this.sourceId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (nameFr.present) {
      map['name_fr'] = Variable<String>(nameFr.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (isCustom.present) {
      map['is_custom'] = Variable<bool>(isCustom.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (sourceId.present) {
      map['source_id'] = Variable<String>(sourceId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IngredientsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('nameFr: $nameFr, ')
          ..write('category: $category, ')
          ..write('brand: $brand, ')
          ..write('barcode: $barcode, ')
          ..write('isCustom: $isCustom, ')
          ..write('source: $source, ')
          ..write('sourceId: $sourceId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NutritionDataTableTable extends NutritionDataTable
    with TableInfo<$NutritionDataTableTable, NutritionDataTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NutritionDataTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ingredientIdMeta = const VerificationMeta(
    'ingredientId',
  );
  @override
  late final GeneratedColumn<String> ingredientId = GeneratedColumn<String>(
    'ingredient_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ingredients (id)',
    ),
  );
  static const VerificationMeta _energyKcalMeta = const VerificationMeta(
    'energyKcal',
  );
  @override
  late final GeneratedColumn<double> energyKcal = GeneratedColumn<double>(
    'energy_kcal',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _energyKjMeta = const VerificationMeta(
    'energyKj',
  );
  @override
  late final GeneratedColumn<double> energyKj = GeneratedColumn<double>(
    'energy_kj',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _proteinGMeta = const VerificationMeta(
    'proteinG',
  );
  @override
  late final GeneratedColumn<double> proteinG = GeneratedColumn<double>(
    'protein_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fatTotalGMeta = const VerificationMeta(
    'fatTotalG',
  );
  @override
  late final GeneratedColumn<double> fatTotalG = GeneratedColumn<double>(
    'fat_total_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fatSaturatedGMeta = const VerificationMeta(
    'fatSaturatedG',
  );
  @override
  late final GeneratedColumn<double> fatSaturatedG = GeneratedColumn<double>(
    'fat_saturated_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fatMonoGMeta = const VerificationMeta(
    'fatMonoG',
  );
  @override
  late final GeneratedColumn<double> fatMonoG = GeneratedColumn<double>(
    'fat_mono_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fatPolyGMeta = const VerificationMeta(
    'fatPolyG',
  );
  @override
  late final GeneratedColumn<double> fatPolyG = GeneratedColumn<double>(
    'fat_poly_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _carbsGMeta = const VerificationMeta('carbsG');
  @override
  late final GeneratedColumn<double> carbsG = GeneratedColumn<double>(
    'carbs_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sugarsGMeta = const VerificationMeta(
    'sugarsG',
  );
  @override
  late final GeneratedColumn<double> sugarsG = GeneratedColumn<double>(
    'sugars_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fiberGMeta = const VerificationMeta('fiberG');
  @override
  late final GeneratedColumn<double> fiberG = GeneratedColumn<double>(
    'fiber_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _starchGMeta = const VerificationMeta(
    'starchG',
  );
  @override
  late final GeneratedColumn<double> starchG = GeneratedColumn<double>(
    'starch_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _waterGMeta = const VerificationMeta('waterG');
  @override
  late final GeneratedColumn<double> waterG = GeneratedColumn<double>(
    'water_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _alcoholGMeta = const VerificationMeta(
    'alcoholG',
  );
  @override
  late final GeneratedColumn<double> alcoholG = GeneratedColumn<double>(
    'alcohol_g',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _calciumMgMeta = const VerificationMeta(
    'calciumMg',
  );
  @override
  late final GeneratedColumn<double> calciumMg = GeneratedColumn<double>(
    'calcium_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ironMgMeta = const VerificationMeta('ironMg');
  @override
  late final GeneratedColumn<double> ironMg = GeneratedColumn<double>(
    'iron_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _magnesiumMgMeta = const VerificationMeta(
    'magnesiumMg',
  );
  @override
  late final GeneratedColumn<double> magnesiumMg = GeneratedColumn<double>(
    'magnesium_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phosphorusMgMeta = const VerificationMeta(
    'phosphorusMg',
  );
  @override
  late final GeneratedColumn<double> phosphorusMg = GeneratedColumn<double>(
    'phosphorus_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _potassiumMgMeta = const VerificationMeta(
    'potassiumMg',
  );
  @override
  late final GeneratedColumn<double> potassiumMg = GeneratedColumn<double>(
    'potassium_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sodiumMgMeta = const VerificationMeta(
    'sodiumMg',
  );
  @override
  late final GeneratedColumn<double> sodiumMg = GeneratedColumn<double>(
    'sodium_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _zincMgMeta = const VerificationMeta('zincMg');
  @override
  late final GeneratedColumn<double> zincMg = GeneratedColumn<double>(
    'zinc_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _copperMgMeta = const VerificationMeta(
    'copperMg',
  );
  @override
  late final GeneratedColumn<double> copperMg = GeneratedColumn<double>(
    'copper_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _manganeseMgMeta = const VerificationMeta(
    'manganeseMg',
  );
  @override
  late final GeneratedColumn<double> manganeseMg = GeneratedColumn<double>(
    'manganese_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _seleniumUgMeta = const VerificationMeta(
    'seleniumUg',
  );
  @override
  late final GeneratedColumn<double> seleniumUg = GeneratedColumn<double>(
    'selenium_ug',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _iodineUgMeta = const VerificationMeta(
    'iodineUg',
  );
  @override
  late final GeneratedColumn<double> iodineUg = GeneratedColumn<double>(
    'iodine_ug',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminAUgMeta = const VerificationMeta(
    'vitaminAUg',
  );
  @override
  late final GeneratedColumn<double> vitaminAUg = GeneratedColumn<double>(
    'vitamin_a_ug',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminB1MgMeta = const VerificationMeta(
    'vitaminB1Mg',
  );
  @override
  late final GeneratedColumn<double> vitaminB1Mg = GeneratedColumn<double>(
    'vitamin_b1_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminB2MgMeta = const VerificationMeta(
    'vitaminB2Mg',
  );
  @override
  late final GeneratedColumn<double> vitaminB2Mg = GeneratedColumn<double>(
    'vitamin_b2_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminB3MgMeta = const VerificationMeta(
    'vitaminB3Mg',
  );
  @override
  late final GeneratedColumn<double> vitaminB3Mg = GeneratedColumn<double>(
    'vitamin_b3_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminB5MgMeta = const VerificationMeta(
    'vitaminB5Mg',
  );
  @override
  late final GeneratedColumn<double> vitaminB5Mg = GeneratedColumn<double>(
    'vitamin_b5_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminB6MgMeta = const VerificationMeta(
    'vitaminB6Mg',
  );
  @override
  late final GeneratedColumn<double> vitaminB6Mg = GeneratedColumn<double>(
    'vitamin_b6_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminB9UgMeta = const VerificationMeta(
    'vitaminB9Ug',
  );
  @override
  late final GeneratedColumn<double> vitaminB9Ug = GeneratedColumn<double>(
    'vitamin_b9_ug',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminB12UgMeta = const VerificationMeta(
    'vitaminB12Ug',
  );
  @override
  late final GeneratedColumn<double> vitaminB12Ug = GeneratedColumn<double>(
    'vitamin_b12_ug',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminCMgMeta = const VerificationMeta(
    'vitaminCMg',
  );
  @override
  late final GeneratedColumn<double> vitaminCMg = GeneratedColumn<double>(
    'vitamin_c_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminDUgMeta = const VerificationMeta(
    'vitaminDUg',
  );
  @override
  late final GeneratedColumn<double> vitaminDUg = GeneratedColumn<double>(
    'vitamin_d_ug',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminEMgMeta = const VerificationMeta(
    'vitaminEMg',
  );
  @override
  late final GeneratedColumn<double> vitaminEMg = GeneratedColumn<double>(
    'vitamin_e_mg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _vitaminKUgMeta = const VerificationMeta(
    'vitaminKUg',
  );
  @override
  late final GeneratedColumn<double> vitaminKUg = GeneratedColumn<double>(
    'vitamin_k_ug',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    ingredientId,
    energyKcal,
    energyKj,
    proteinG,
    fatTotalG,
    fatSaturatedG,
    fatMonoG,
    fatPolyG,
    carbsG,
    sugarsG,
    fiberG,
    starchG,
    waterG,
    alcoholG,
    calciumMg,
    ironMg,
    magnesiumMg,
    phosphorusMg,
    potassiumMg,
    sodiumMg,
    zincMg,
    copperMg,
    manganeseMg,
    seleniumUg,
    iodineUg,
    vitaminAUg,
    vitaminB1Mg,
    vitaminB2Mg,
    vitaminB3Mg,
    vitaminB5Mg,
    vitaminB6Mg,
    vitaminB9Ug,
    vitaminB12Ug,
    vitaminCMg,
    vitaminDUg,
    vitaminEMg,
    vitaminKUg,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'nutrition_data_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<NutritionDataTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ingredient_id')) {
      context.handle(
        _ingredientIdMeta,
        ingredientId.isAcceptableOrUnknown(
          data['ingredient_id']!,
          _ingredientIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ingredientIdMeta);
    }
    if (data.containsKey('energy_kcal')) {
      context.handle(
        _energyKcalMeta,
        energyKcal.isAcceptableOrUnknown(data['energy_kcal']!, _energyKcalMeta),
      );
    }
    if (data.containsKey('energy_kj')) {
      context.handle(
        _energyKjMeta,
        energyKj.isAcceptableOrUnknown(data['energy_kj']!, _energyKjMeta),
      );
    }
    if (data.containsKey('protein_g')) {
      context.handle(
        _proteinGMeta,
        proteinG.isAcceptableOrUnknown(data['protein_g']!, _proteinGMeta),
      );
    }
    if (data.containsKey('fat_total_g')) {
      context.handle(
        _fatTotalGMeta,
        fatTotalG.isAcceptableOrUnknown(data['fat_total_g']!, _fatTotalGMeta),
      );
    }
    if (data.containsKey('fat_saturated_g')) {
      context.handle(
        _fatSaturatedGMeta,
        fatSaturatedG.isAcceptableOrUnknown(
          data['fat_saturated_g']!,
          _fatSaturatedGMeta,
        ),
      );
    }
    if (data.containsKey('fat_mono_g')) {
      context.handle(
        _fatMonoGMeta,
        fatMonoG.isAcceptableOrUnknown(data['fat_mono_g']!, _fatMonoGMeta),
      );
    }
    if (data.containsKey('fat_poly_g')) {
      context.handle(
        _fatPolyGMeta,
        fatPolyG.isAcceptableOrUnknown(data['fat_poly_g']!, _fatPolyGMeta),
      );
    }
    if (data.containsKey('carbs_g')) {
      context.handle(
        _carbsGMeta,
        carbsG.isAcceptableOrUnknown(data['carbs_g']!, _carbsGMeta),
      );
    }
    if (data.containsKey('sugars_g')) {
      context.handle(
        _sugarsGMeta,
        sugarsG.isAcceptableOrUnknown(data['sugars_g']!, _sugarsGMeta),
      );
    }
    if (data.containsKey('fiber_g')) {
      context.handle(
        _fiberGMeta,
        fiberG.isAcceptableOrUnknown(data['fiber_g']!, _fiberGMeta),
      );
    }
    if (data.containsKey('starch_g')) {
      context.handle(
        _starchGMeta,
        starchG.isAcceptableOrUnknown(data['starch_g']!, _starchGMeta),
      );
    }
    if (data.containsKey('water_g')) {
      context.handle(
        _waterGMeta,
        waterG.isAcceptableOrUnknown(data['water_g']!, _waterGMeta),
      );
    }
    if (data.containsKey('alcohol_g')) {
      context.handle(
        _alcoholGMeta,
        alcoholG.isAcceptableOrUnknown(data['alcohol_g']!, _alcoholGMeta),
      );
    }
    if (data.containsKey('calcium_mg')) {
      context.handle(
        _calciumMgMeta,
        calciumMg.isAcceptableOrUnknown(data['calcium_mg']!, _calciumMgMeta),
      );
    }
    if (data.containsKey('iron_mg')) {
      context.handle(
        _ironMgMeta,
        ironMg.isAcceptableOrUnknown(data['iron_mg']!, _ironMgMeta),
      );
    }
    if (data.containsKey('magnesium_mg')) {
      context.handle(
        _magnesiumMgMeta,
        magnesiumMg.isAcceptableOrUnknown(
          data['magnesium_mg']!,
          _magnesiumMgMeta,
        ),
      );
    }
    if (data.containsKey('phosphorus_mg')) {
      context.handle(
        _phosphorusMgMeta,
        phosphorusMg.isAcceptableOrUnknown(
          data['phosphorus_mg']!,
          _phosphorusMgMeta,
        ),
      );
    }
    if (data.containsKey('potassium_mg')) {
      context.handle(
        _potassiumMgMeta,
        potassiumMg.isAcceptableOrUnknown(
          data['potassium_mg']!,
          _potassiumMgMeta,
        ),
      );
    }
    if (data.containsKey('sodium_mg')) {
      context.handle(
        _sodiumMgMeta,
        sodiumMg.isAcceptableOrUnknown(data['sodium_mg']!, _sodiumMgMeta),
      );
    }
    if (data.containsKey('zinc_mg')) {
      context.handle(
        _zincMgMeta,
        zincMg.isAcceptableOrUnknown(data['zinc_mg']!, _zincMgMeta),
      );
    }
    if (data.containsKey('copper_mg')) {
      context.handle(
        _copperMgMeta,
        copperMg.isAcceptableOrUnknown(data['copper_mg']!, _copperMgMeta),
      );
    }
    if (data.containsKey('manganese_mg')) {
      context.handle(
        _manganeseMgMeta,
        manganeseMg.isAcceptableOrUnknown(
          data['manganese_mg']!,
          _manganeseMgMeta,
        ),
      );
    }
    if (data.containsKey('selenium_ug')) {
      context.handle(
        _seleniumUgMeta,
        seleniumUg.isAcceptableOrUnknown(data['selenium_ug']!, _seleniumUgMeta),
      );
    }
    if (data.containsKey('iodine_ug')) {
      context.handle(
        _iodineUgMeta,
        iodineUg.isAcceptableOrUnknown(data['iodine_ug']!, _iodineUgMeta),
      );
    }
    if (data.containsKey('vitamin_a_ug')) {
      context.handle(
        _vitaminAUgMeta,
        vitaminAUg.isAcceptableOrUnknown(
          data['vitamin_a_ug']!,
          _vitaminAUgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_b1_mg')) {
      context.handle(
        _vitaminB1MgMeta,
        vitaminB1Mg.isAcceptableOrUnknown(
          data['vitamin_b1_mg']!,
          _vitaminB1MgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_b2_mg')) {
      context.handle(
        _vitaminB2MgMeta,
        vitaminB2Mg.isAcceptableOrUnknown(
          data['vitamin_b2_mg']!,
          _vitaminB2MgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_b3_mg')) {
      context.handle(
        _vitaminB3MgMeta,
        vitaminB3Mg.isAcceptableOrUnknown(
          data['vitamin_b3_mg']!,
          _vitaminB3MgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_b5_mg')) {
      context.handle(
        _vitaminB5MgMeta,
        vitaminB5Mg.isAcceptableOrUnknown(
          data['vitamin_b5_mg']!,
          _vitaminB5MgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_b6_mg')) {
      context.handle(
        _vitaminB6MgMeta,
        vitaminB6Mg.isAcceptableOrUnknown(
          data['vitamin_b6_mg']!,
          _vitaminB6MgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_b9_ug')) {
      context.handle(
        _vitaminB9UgMeta,
        vitaminB9Ug.isAcceptableOrUnknown(
          data['vitamin_b9_ug']!,
          _vitaminB9UgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_b12_ug')) {
      context.handle(
        _vitaminB12UgMeta,
        vitaminB12Ug.isAcceptableOrUnknown(
          data['vitamin_b12_ug']!,
          _vitaminB12UgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_c_mg')) {
      context.handle(
        _vitaminCMgMeta,
        vitaminCMg.isAcceptableOrUnknown(
          data['vitamin_c_mg']!,
          _vitaminCMgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_d_ug')) {
      context.handle(
        _vitaminDUgMeta,
        vitaminDUg.isAcceptableOrUnknown(
          data['vitamin_d_ug']!,
          _vitaminDUgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_e_mg')) {
      context.handle(
        _vitaminEMgMeta,
        vitaminEMg.isAcceptableOrUnknown(
          data['vitamin_e_mg']!,
          _vitaminEMgMeta,
        ),
      );
    }
    if (data.containsKey('vitamin_k_ug')) {
      context.handle(
        _vitaminKUgMeta,
        vitaminKUg.isAcceptableOrUnknown(
          data['vitamin_k_ug']!,
          _vitaminKUgMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ingredientId};
  @override
  NutritionDataTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NutritionDataTableData(
      ingredientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredient_id'],
      )!,
      energyKcal: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}energy_kcal'],
      ),
      energyKj: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}energy_kj'],
      ),
      proteinG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}protein_g'],
      ),
      fatTotalG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fat_total_g'],
      ),
      fatSaturatedG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fat_saturated_g'],
      ),
      fatMonoG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fat_mono_g'],
      ),
      fatPolyG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fat_poly_g'],
      ),
      carbsG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}carbs_g'],
      ),
      sugarsG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sugars_g'],
      ),
      fiberG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fiber_g'],
      ),
      starchG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}starch_g'],
      ),
      waterG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}water_g'],
      ),
      alcoholG: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}alcohol_g'],
      ),
      calciumMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}calcium_mg'],
      ),
      ironMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}iron_mg'],
      ),
      magnesiumMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}magnesium_mg'],
      ),
      phosphorusMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}phosphorus_mg'],
      ),
      potassiumMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}potassium_mg'],
      ),
      sodiumMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sodium_mg'],
      ),
      zincMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}zinc_mg'],
      ),
      copperMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}copper_mg'],
      ),
      manganeseMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}manganese_mg'],
      ),
      seleniumUg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}selenium_ug'],
      ),
      iodineUg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}iodine_ug'],
      ),
      vitaminAUg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_a_ug'],
      ),
      vitaminB1Mg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_b1_mg'],
      ),
      vitaminB2Mg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_b2_mg'],
      ),
      vitaminB3Mg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_b3_mg'],
      ),
      vitaminB5Mg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_b5_mg'],
      ),
      vitaminB6Mg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_b6_mg'],
      ),
      vitaminB9Ug: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_b9_ug'],
      ),
      vitaminB12Ug: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_b12_ug'],
      ),
      vitaminCMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_c_mg'],
      ),
      vitaminDUg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_d_ug'],
      ),
      vitaminEMg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_e_mg'],
      ),
      vitaminKUg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}vitamin_k_ug'],
      ),
    );
  }

  @override
  $NutritionDataTableTable createAlias(String alias) {
    return $NutritionDataTableTable(attachedDatabase, alias);
  }
}

class NutritionDataTableData extends DataClass
    implements Insertable<NutritionDataTableData> {
  final String ingredientId;
  final double? energyKcal;
  final double? energyKj;
  final double? proteinG;
  final double? fatTotalG;
  final double? fatSaturatedG;
  final double? fatMonoG;
  final double? fatPolyG;
  final double? carbsG;
  final double? sugarsG;
  final double? fiberG;
  final double? starchG;
  final double? waterG;
  final double? alcoholG;
  final double? calciumMg;
  final double? ironMg;
  final double? magnesiumMg;
  final double? phosphorusMg;
  final double? potassiumMg;
  final double? sodiumMg;
  final double? zincMg;
  final double? copperMg;
  final double? manganeseMg;
  final double? seleniumUg;
  final double? iodineUg;
  final double? vitaminAUg;
  final double? vitaminB1Mg;
  final double? vitaminB2Mg;
  final double? vitaminB3Mg;
  final double? vitaminB5Mg;
  final double? vitaminB6Mg;
  final double? vitaminB9Ug;
  final double? vitaminB12Ug;
  final double? vitaminCMg;
  final double? vitaminDUg;
  final double? vitaminEMg;
  final double? vitaminKUg;
  const NutritionDataTableData({
    required this.ingredientId,
    this.energyKcal,
    this.energyKj,
    this.proteinG,
    this.fatTotalG,
    this.fatSaturatedG,
    this.fatMonoG,
    this.fatPolyG,
    this.carbsG,
    this.sugarsG,
    this.fiberG,
    this.starchG,
    this.waterG,
    this.alcoholG,
    this.calciumMg,
    this.ironMg,
    this.magnesiumMg,
    this.phosphorusMg,
    this.potassiumMg,
    this.sodiumMg,
    this.zincMg,
    this.copperMg,
    this.manganeseMg,
    this.seleniumUg,
    this.iodineUg,
    this.vitaminAUg,
    this.vitaminB1Mg,
    this.vitaminB2Mg,
    this.vitaminB3Mg,
    this.vitaminB5Mg,
    this.vitaminB6Mg,
    this.vitaminB9Ug,
    this.vitaminB12Ug,
    this.vitaminCMg,
    this.vitaminDUg,
    this.vitaminEMg,
    this.vitaminKUg,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ingredient_id'] = Variable<String>(ingredientId);
    if (!nullToAbsent || energyKcal != null) {
      map['energy_kcal'] = Variable<double>(energyKcal);
    }
    if (!nullToAbsent || energyKj != null) {
      map['energy_kj'] = Variable<double>(energyKj);
    }
    if (!nullToAbsent || proteinG != null) {
      map['protein_g'] = Variable<double>(proteinG);
    }
    if (!nullToAbsent || fatTotalG != null) {
      map['fat_total_g'] = Variable<double>(fatTotalG);
    }
    if (!nullToAbsent || fatSaturatedG != null) {
      map['fat_saturated_g'] = Variable<double>(fatSaturatedG);
    }
    if (!nullToAbsent || fatMonoG != null) {
      map['fat_mono_g'] = Variable<double>(fatMonoG);
    }
    if (!nullToAbsent || fatPolyG != null) {
      map['fat_poly_g'] = Variable<double>(fatPolyG);
    }
    if (!nullToAbsent || carbsG != null) {
      map['carbs_g'] = Variable<double>(carbsG);
    }
    if (!nullToAbsent || sugarsG != null) {
      map['sugars_g'] = Variable<double>(sugarsG);
    }
    if (!nullToAbsent || fiberG != null) {
      map['fiber_g'] = Variable<double>(fiberG);
    }
    if (!nullToAbsent || starchG != null) {
      map['starch_g'] = Variable<double>(starchG);
    }
    if (!nullToAbsent || waterG != null) {
      map['water_g'] = Variable<double>(waterG);
    }
    if (!nullToAbsent || alcoholG != null) {
      map['alcohol_g'] = Variable<double>(alcoholG);
    }
    if (!nullToAbsent || calciumMg != null) {
      map['calcium_mg'] = Variable<double>(calciumMg);
    }
    if (!nullToAbsent || ironMg != null) {
      map['iron_mg'] = Variable<double>(ironMg);
    }
    if (!nullToAbsent || magnesiumMg != null) {
      map['magnesium_mg'] = Variable<double>(magnesiumMg);
    }
    if (!nullToAbsent || phosphorusMg != null) {
      map['phosphorus_mg'] = Variable<double>(phosphorusMg);
    }
    if (!nullToAbsent || potassiumMg != null) {
      map['potassium_mg'] = Variable<double>(potassiumMg);
    }
    if (!nullToAbsent || sodiumMg != null) {
      map['sodium_mg'] = Variable<double>(sodiumMg);
    }
    if (!nullToAbsent || zincMg != null) {
      map['zinc_mg'] = Variable<double>(zincMg);
    }
    if (!nullToAbsent || copperMg != null) {
      map['copper_mg'] = Variable<double>(copperMg);
    }
    if (!nullToAbsent || manganeseMg != null) {
      map['manganese_mg'] = Variable<double>(manganeseMg);
    }
    if (!nullToAbsent || seleniumUg != null) {
      map['selenium_ug'] = Variable<double>(seleniumUg);
    }
    if (!nullToAbsent || iodineUg != null) {
      map['iodine_ug'] = Variable<double>(iodineUg);
    }
    if (!nullToAbsent || vitaminAUg != null) {
      map['vitamin_a_ug'] = Variable<double>(vitaminAUg);
    }
    if (!nullToAbsent || vitaminB1Mg != null) {
      map['vitamin_b1_mg'] = Variable<double>(vitaminB1Mg);
    }
    if (!nullToAbsent || vitaminB2Mg != null) {
      map['vitamin_b2_mg'] = Variable<double>(vitaminB2Mg);
    }
    if (!nullToAbsent || vitaminB3Mg != null) {
      map['vitamin_b3_mg'] = Variable<double>(vitaminB3Mg);
    }
    if (!nullToAbsent || vitaminB5Mg != null) {
      map['vitamin_b5_mg'] = Variable<double>(vitaminB5Mg);
    }
    if (!nullToAbsent || vitaminB6Mg != null) {
      map['vitamin_b6_mg'] = Variable<double>(vitaminB6Mg);
    }
    if (!nullToAbsent || vitaminB9Ug != null) {
      map['vitamin_b9_ug'] = Variable<double>(vitaminB9Ug);
    }
    if (!nullToAbsent || vitaminB12Ug != null) {
      map['vitamin_b12_ug'] = Variable<double>(vitaminB12Ug);
    }
    if (!nullToAbsent || vitaminCMg != null) {
      map['vitamin_c_mg'] = Variable<double>(vitaminCMg);
    }
    if (!nullToAbsent || vitaminDUg != null) {
      map['vitamin_d_ug'] = Variable<double>(vitaminDUg);
    }
    if (!nullToAbsent || vitaminEMg != null) {
      map['vitamin_e_mg'] = Variable<double>(vitaminEMg);
    }
    if (!nullToAbsent || vitaminKUg != null) {
      map['vitamin_k_ug'] = Variable<double>(vitaminKUg);
    }
    return map;
  }

  NutritionDataTableCompanion toCompanion(bool nullToAbsent) {
    return NutritionDataTableCompanion(
      ingredientId: Value(ingredientId),
      energyKcal: energyKcal == null && nullToAbsent
          ? const Value.absent()
          : Value(energyKcal),
      energyKj: energyKj == null && nullToAbsent
          ? const Value.absent()
          : Value(energyKj),
      proteinG: proteinG == null && nullToAbsent
          ? const Value.absent()
          : Value(proteinG),
      fatTotalG: fatTotalG == null && nullToAbsent
          ? const Value.absent()
          : Value(fatTotalG),
      fatSaturatedG: fatSaturatedG == null && nullToAbsent
          ? const Value.absent()
          : Value(fatSaturatedG),
      fatMonoG: fatMonoG == null && nullToAbsent
          ? const Value.absent()
          : Value(fatMonoG),
      fatPolyG: fatPolyG == null && nullToAbsent
          ? const Value.absent()
          : Value(fatPolyG),
      carbsG: carbsG == null && nullToAbsent
          ? const Value.absent()
          : Value(carbsG),
      sugarsG: sugarsG == null && nullToAbsent
          ? const Value.absent()
          : Value(sugarsG),
      fiberG: fiberG == null && nullToAbsent
          ? const Value.absent()
          : Value(fiberG),
      starchG: starchG == null && nullToAbsent
          ? const Value.absent()
          : Value(starchG),
      waterG: waterG == null && nullToAbsent
          ? const Value.absent()
          : Value(waterG),
      alcoholG: alcoholG == null && nullToAbsent
          ? const Value.absent()
          : Value(alcoholG),
      calciumMg: calciumMg == null && nullToAbsent
          ? const Value.absent()
          : Value(calciumMg),
      ironMg: ironMg == null && nullToAbsent
          ? const Value.absent()
          : Value(ironMg),
      magnesiumMg: magnesiumMg == null && nullToAbsent
          ? const Value.absent()
          : Value(magnesiumMg),
      phosphorusMg: phosphorusMg == null && nullToAbsent
          ? const Value.absent()
          : Value(phosphorusMg),
      potassiumMg: potassiumMg == null && nullToAbsent
          ? const Value.absent()
          : Value(potassiumMg),
      sodiumMg: sodiumMg == null && nullToAbsent
          ? const Value.absent()
          : Value(sodiumMg),
      zincMg: zincMg == null && nullToAbsent
          ? const Value.absent()
          : Value(zincMg),
      copperMg: copperMg == null && nullToAbsent
          ? const Value.absent()
          : Value(copperMg),
      manganeseMg: manganeseMg == null && nullToAbsent
          ? const Value.absent()
          : Value(manganeseMg),
      seleniumUg: seleniumUg == null && nullToAbsent
          ? const Value.absent()
          : Value(seleniumUg),
      iodineUg: iodineUg == null && nullToAbsent
          ? const Value.absent()
          : Value(iodineUg),
      vitaminAUg: vitaminAUg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminAUg),
      vitaminB1Mg: vitaminB1Mg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminB1Mg),
      vitaminB2Mg: vitaminB2Mg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminB2Mg),
      vitaminB3Mg: vitaminB3Mg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminB3Mg),
      vitaminB5Mg: vitaminB5Mg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminB5Mg),
      vitaminB6Mg: vitaminB6Mg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminB6Mg),
      vitaminB9Ug: vitaminB9Ug == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminB9Ug),
      vitaminB12Ug: vitaminB12Ug == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminB12Ug),
      vitaminCMg: vitaminCMg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminCMg),
      vitaminDUg: vitaminDUg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminDUg),
      vitaminEMg: vitaminEMg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminEMg),
      vitaminKUg: vitaminKUg == null && nullToAbsent
          ? const Value.absent()
          : Value(vitaminKUg),
    );
  }

  factory NutritionDataTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NutritionDataTableData(
      ingredientId: serializer.fromJson<String>(json['ingredientId']),
      energyKcal: serializer.fromJson<double?>(json['energyKcal']),
      energyKj: serializer.fromJson<double?>(json['energyKj']),
      proteinG: serializer.fromJson<double?>(json['proteinG']),
      fatTotalG: serializer.fromJson<double?>(json['fatTotalG']),
      fatSaturatedG: serializer.fromJson<double?>(json['fatSaturatedG']),
      fatMonoG: serializer.fromJson<double?>(json['fatMonoG']),
      fatPolyG: serializer.fromJson<double?>(json['fatPolyG']),
      carbsG: serializer.fromJson<double?>(json['carbsG']),
      sugarsG: serializer.fromJson<double?>(json['sugarsG']),
      fiberG: serializer.fromJson<double?>(json['fiberG']),
      starchG: serializer.fromJson<double?>(json['starchG']),
      waterG: serializer.fromJson<double?>(json['waterG']),
      alcoholG: serializer.fromJson<double?>(json['alcoholG']),
      calciumMg: serializer.fromJson<double?>(json['calciumMg']),
      ironMg: serializer.fromJson<double?>(json['ironMg']),
      magnesiumMg: serializer.fromJson<double?>(json['magnesiumMg']),
      phosphorusMg: serializer.fromJson<double?>(json['phosphorusMg']),
      potassiumMg: serializer.fromJson<double?>(json['potassiumMg']),
      sodiumMg: serializer.fromJson<double?>(json['sodiumMg']),
      zincMg: serializer.fromJson<double?>(json['zincMg']),
      copperMg: serializer.fromJson<double?>(json['copperMg']),
      manganeseMg: serializer.fromJson<double?>(json['manganeseMg']),
      seleniumUg: serializer.fromJson<double?>(json['seleniumUg']),
      iodineUg: serializer.fromJson<double?>(json['iodineUg']),
      vitaminAUg: serializer.fromJson<double?>(json['vitaminAUg']),
      vitaminB1Mg: serializer.fromJson<double?>(json['vitaminB1Mg']),
      vitaminB2Mg: serializer.fromJson<double?>(json['vitaminB2Mg']),
      vitaminB3Mg: serializer.fromJson<double?>(json['vitaminB3Mg']),
      vitaminB5Mg: serializer.fromJson<double?>(json['vitaminB5Mg']),
      vitaminB6Mg: serializer.fromJson<double?>(json['vitaminB6Mg']),
      vitaminB9Ug: serializer.fromJson<double?>(json['vitaminB9Ug']),
      vitaminB12Ug: serializer.fromJson<double?>(json['vitaminB12Ug']),
      vitaminCMg: serializer.fromJson<double?>(json['vitaminCMg']),
      vitaminDUg: serializer.fromJson<double?>(json['vitaminDUg']),
      vitaminEMg: serializer.fromJson<double?>(json['vitaminEMg']),
      vitaminKUg: serializer.fromJson<double?>(json['vitaminKUg']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ingredientId': serializer.toJson<String>(ingredientId),
      'energyKcal': serializer.toJson<double?>(energyKcal),
      'energyKj': serializer.toJson<double?>(energyKj),
      'proteinG': serializer.toJson<double?>(proteinG),
      'fatTotalG': serializer.toJson<double?>(fatTotalG),
      'fatSaturatedG': serializer.toJson<double?>(fatSaturatedG),
      'fatMonoG': serializer.toJson<double?>(fatMonoG),
      'fatPolyG': serializer.toJson<double?>(fatPolyG),
      'carbsG': serializer.toJson<double?>(carbsG),
      'sugarsG': serializer.toJson<double?>(sugarsG),
      'fiberG': serializer.toJson<double?>(fiberG),
      'starchG': serializer.toJson<double?>(starchG),
      'waterG': serializer.toJson<double?>(waterG),
      'alcoholG': serializer.toJson<double?>(alcoholG),
      'calciumMg': serializer.toJson<double?>(calciumMg),
      'ironMg': serializer.toJson<double?>(ironMg),
      'magnesiumMg': serializer.toJson<double?>(magnesiumMg),
      'phosphorusMg': serializer.toJson<double?>(phosphorusMg),
      'potassiumMg': serializer.toJson<double?>(potassiumMg),
      'sodiumMg': serializer.toJson<double?>(sodiumMg),
      'zincMg': serializer.toJson<double?>(zincMg),
      'copperMg': serializer.toJson<double?>(copperMg),
      'manganeseMg': serializer.toJson<double?>(manganeseMg),
      'seleniumUg': serializer.toJson<double?>(seleniumUg),
      'iodineUg': serializer.toJson<double?>(iodineUg),
      'vitaminAUg': serializer.toJson<double?>(vitaminAUg),
      'vitaminB1Mg': serializer.toJson<double?>(vitaminB1Mg),
      'vitaminB2Mg': serializer.toJson<double?>(vitaminB2Mg),
      'vitaminB3Mg': serializer.toJson<double?>(vitaminB3Mg),
      'vitaminB5Mg': serializer.toJson<double?>(vitaminB5Mg),
      'vitaminB6Mg': serializer.toJson<double?>(vitaminB6Mg),
      'vitaminB9Ug': serializer.toJson<double?>(vitaminB9Ug),
      'vitaminB12Ug': serializer.toJson<double?>(vitaminB12Ug),
      'vitaminCMg': serializer.toJson<double?>(vitaminCMg),
      'vitaminDUg': serializer.toJson<double?>(vitaminDUg),
      'vitaminEMg': serializer.toJson<double?>(vitaminEMg),
      'vitaminKUg': serializer.toJson<double?>(vitaminKUg),
    };
  }

  NutritionDataTableData copyWith({
    String? ingredientId,
    Value<double?> energyKcal = const Value.absent(),
    Value<double?> energyKj = const Value.absent(),
    Value<double?> proteinG = const Value.absent(),
    Value<double?> fatTotalG = const Value.absent(),
    Value<double?> fatSaturatedG = const Value.absent(),
    Value<double?> fatMonoG = const Value.absent(),
    Value<double?> fatPolyG = const Value.absent(),
    Value<double?> carbsG = const Value.absent(),
    Value<double?> sugarsG = const Value.absent(),
    Value<double?> fiberG = const Value.absent(),
    Value<double?> starchG = const Value.absent(),
    Value<double?> waterG = const Value.absent(),
    Value<double?> alcoholG = const Value.absent(),
    Value<double?> calciumMg = const Value.absent(),
    Value<double?> ironMg = const Value.absent(),
    Value<double?> magnesiumMg = const Value.absent(),
    Value<double?> phosphorusMg = const Value.absent(),
    Value<double?> potassiumMg = const Value.absent(),
    Value<double?> sodiumMg = const Value.absent(),
    Value<double?> zincMg = const Value.absent(),
    Value<double?> copperMg = const Value.absent(),
    Value<double?> manganeseMg = const Value.absent(),
    Value<double?> seleniumUg = const Value.absent(),
    Value<double?> iodineUg = const Value.absent(),
    Value<double?> vitaminAUg = const Value.absent(),
    Value<double?> vitaminB1Mg = const Value.absent(),
    Value<double?> vitaminB2Mg = const Value.absent(),
    Value<double?> vitaminB3Mg = const Value.absent(),
    Value<double?> vitaminB5Mg = const Value.absent(),
    Value<double?> vitaminB6Mg = const Value.absent(),
    Value<double?> vitaminB9Ug = const Value.absent(),
    Value<double?> vitaminB12Ug = const Value.absent(),
    Value<double?> vitaminCMg = const Value.absent(),
    Value<double?> vitaminDUg = const Value.absent(),
    Value<double?> vitaminEMg = const Value.absent(),
    Value<double?> vitaminKUg = const Value.absent(),
  }) => NutritionDataTableData(
    ingredientId: ingredientId ?? this.ingredientId,
    energyKcal: energyKcal.present ? energyKcal.value : this.energyKcal,
    energyKj: energyKj.present ? energyKj.value : this.energyKj,
    proteinG: proteinG.present ? proteinG.value : this.proteinG,
    fatTotalG: fatTotalG.present ? fatTotalG.value : this.fatTotalG,
    fatSaturatedG: fatSaturatedG.present
        ? fatSaturatedG.value
        : this.fatSaturatedG,
    fatMonoG: fatMonoG.present ? fatMonoG.value : this.fatMonoG,
    fatPolyG: fatPolyG.present ? fatPolyG.value : this.fatPolyG,
    carbsG: carbsG.present ? carbsG.value : this.carbsG,
    sugarsG: sugarsG.present ? sugarsG.value : this.sugarsG,
    fiberG: fiberG.present ? fiberG.value : this.fiberG,
    starchG: starchG.present ? starchG.value : this.starchG,
    waterG: waterG.present ? waterG.value : this.waterG,
    alcoholG: alcoholG.present ? alcoholG.value : this.alcoholG,
    calciumMg: calciumMg.present ? calciumMg.value : this.calciumMg,
    ironMg: ironMg.present ? ironMg.value : this.ironMg,
    magnesiumMg: magnesiumMg.present ? magnesiumMg.value : this.magnesiumMg,
    phosphorusMg: phosphorusMg.present ? phosphorusMg.value : this.phosphorusMg,
    potassiumMg: potassiumMg.present ? potassiumMg.value : this.potassiumMg,
    sodiumMg: sodiumMg.present ? sodiumMg.value : this.sodiumMg,
    zincMg: zincMg.present ? zincMg.value : this.zincMg,
    copperMg: copperMg.present ? copperMg.value : this.copperMg,
    manganeseMg: manganeseMg.present ? manganeseMg.value : this.manganeseMg,
    seleniumUg: seleniumUg.present ? seleniumUg.value : this.seleniumUg,
    iodineUg: iodineUg.present ? iodineUg.value : this.iodineUg,
    vitaminAUg: vitaminAUg.present ? vitaminAUg.value : this.vitaminAUg,
    vitaminB1Mg: vitaminB1Mg.present ? vitaminB1Mg.value : this.vitaminB1Mg,
    vitaminB2Mg: vitaminB2Mg.present ? vitaminB2Mg.value : this.vitaminB2Mg,
    vitaminB3Mg: vitaminB3Mg.present ? vitaminB3Mg.value : this.vitaminB3Mg,
    vitaminB5Mg: vitaminB5Mg.present ? vitaminB5Mg.value : this.vitaminB5Mg,
    vitaminB6Mg: vitaminB6Mg.present ? vitaminB6Mg.value : this.vitaminB6Mg,
    vitaminB9Ug: vitaminB9Ug.present ? vitaminB9Ug.value : this.vitaminB9Ug,
    vitaminB12Ug: vitaminB12Ug.present ? vitaminB12Ug.value : this.vitaminB12Ug,
    vitaminCMg: vitaminCMg.present ? vitaminCMg.value : this.vitaminCMg,
    vitaminDUg: vitaminDUg.present ? vitaminDUg.value : this.vitaminDUg,
    vitaminEMg: vitaminEMg.present ? vitaminEMg.value : this.vitaminEMg,
    vitaminKUg: vitaminKUg.present ? vitaminKUg.value : this.vitaminKUg,
  );
  NutritionDataTableData copyWithCompanion(NutritionDataTableCompanion data) {
    return NutritionDataTableData(
      ingredientId: data.ingredientId.present
          ? data.ingredientId.value
          : this.ingredientId,
      energyKcal: data.energyKcal.present
          ? data.energyKcal.value
          : this.energyKcal,
      energyKj: data.energyKj.present ? data.energyKj.value : this.energyKj,
      proteinG: data.proteinG.present ? data.proteinG.value : this.proteinG,
      fatTotalG: data.fatTotalG.present ? data.fatTotalG.value : this.fatTotalG,
      fatSaturatedG: data.fatSaturatedG.present
          ? data.fatSaturatedG.value
          : this.fatSaturatedG,
      fatMonoG: data.fatMonoG.present ? data.fatMonoG.value : this.fatMonoG,
      fatPolyG: data.fatPolyG.present ? data.fatPolyG.value : this.fatPolyG,
      carbsG: data.carbsG.present ? data.carbsG.value : this.carbsG,
      sugarsG: data.sugarsG.present ? data.sugarsG.value : this.sugarsG,
      fiberG: data.fiberG.present ? data.fiberG.value : this.fiberG,
      starchG: data.starchG.present ? data.starchG.value : this.starchG,
      waterG: data.waterG.present ? data.waterG.value : this.waterG,
      alcoholG: data.alcoholG.present ? data.alcoholG.value : this.alcoholG,
      calciumMg: data.calciumMg.present ? data.calciumMg.value : this.calciumMg,
      ironMg: data.ironMg.present ? data.ironMg.value : this.ironMg,
      magnesiumMg: data.magnesiumMg.present
          ? data.magnesiumMg.value
          : this.magnesiumMg,
      phosphorusMg: data.phosphorusMg.present
          ? data.phosphorusMg.value
          : this.phosphorusMg,
      potassiumMg: data.potassiumMg.present
          ? data.potassiumMg.value
          : this.potassiumMg,
      sodiumMg: data.sodiumMg.present ? data.sodiumMg.value : this.sodiumMg,
      zincMg: data.zincMg.present ? data.zincMg.value : this.zincMg,
      copperMg: data.copperMg.present ? data.copperMg.value : this.copperMg,
      manganeseMg: data.manganeseMg.present
          ? data.manganeseMg.value
          : this.manganeseMg,
      seleniumUg: data.seleniumUg.present
          ? data.seleniumUg.value
          : this.seleniumUg,
      iodineUg: data.iodineUg.present ? data.iodineUg.value : this.iodineUg,
      vitaminAUg: data.vitaminAUg.present
          ? data.vitaminAUg.value
          : this.vitaminAUg,
      vitaminB1Mg: data.vitaminB1Mg.present
          ? data.vitaminB1Mg.value
          : this.vitaminB1Mg,
      vitaminB2Mg: data.vitaminB2Mg.present
          ? data.vitaminB2Mg.value
          : this.vitaminB2Mg,
      vitaminB3Mg: data.vitaminB3Mg.present
          ? data.vitaminB3Mg.value
          : this.vitaminB3Mg,
      vitaminB5Mg: data.vitaminB5Mg.present
          ? data.vitaminB5Mg.value
          : this.vitaminB5Mg,
      vitaminB6Mg: data.vitaminB6Mg.present
          ? data.vitaminB6Mg.value
          : this.vitaminB6Mg,
      vitaminB9Ug: data.vitaminB9Ug.present
          ? data.vitaminB9Ug.value
          : this.vitaminB9Ug,
      vitaminB12Ug: data.vitaminB12Ug.present
          ? data.vitaminB12Ug.value
          : this.vitaminB12Ug,
      vitaminCMg: data.vitaminCMg.present
          ? data.vitaminCMg.value
          : this.vitaminCMg,
      vitaminDUg: data.vitaminDUg.present
          ? data.vitaminDUg.value
          : this.vitaminDUg,
      vitaminEMg: data.vitaminEMg.present
          ? data.vitaminEMg.value
          : this.vitaminEMg,
      vitaminKUg: data.vitaminKUg.present
          ? data.vitaminKUg.value
          : this.vitaminKUg,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NutritionDataTableData(')
          ..write('ingredientId: $ingredientId, ')
          ..write('energyKcal: $energyKcal, ')
          ..write('energyKj: $energyKj, ')
          ..write('proteinG: $proteinG, ')
          ..write('fatTotalG: $fatTotalG, ')
          ..write('fatSaturatedG: $fatSaturatedG, ')
          ..write('fatMonoG: $fatMonoG, ')
          ..write('fatPolyG: $fatPolyG, ')
          ..write('carbsG: $carbsG, ')
          ..write('sugarsG: $sugarsG, ')
          ..write('fiberG: $fiberG, ')
          ..write('starchG: $starchG, ')
          ..write('waterG: $waterG, ')
          ..write('alcoholG: $alcoholG, ')
          ..write('calciumMg: $calciumMg, ')
          ..write('ironMg: $ironMg, ')
          ..write('magnesiumMg: $magnesiumMg, ')
          ..write('phosphorusMg: $phosphorusMg, ')
          ..write('potassiumMg: $potassiumMg, ')
          ..write('sodiumMg: $sodiumMg, ')
          ..write('zincMg: $zincMg, ')
          ..write('copperMg: $copperMg, ')
          ..write('manganeseMg: $manganeseMg, ')
          ..write('seleniumUg: $seleniumUg, ')
          ..write('iodineUg: $iodineUg, ')
          ..write('vitaminAUg: $vitaminAUg, ')
          ..write('vitaminB1Mg: $vitaminB1Mg, ')
          ..write('vitaminB2Mg: $vitaminB2Mg, ')
          ..write('vitaminB3Mg: $vitaminB3Mg, ')
          ..write('vitaminB5Mg: $vitaminB5Mg, ')
          ..write('vitaminB6Mg: $vitaminB6Mg, ')
          ..write('vitaminB9Ug: $vitaminB9Ug, ')
          ..write('vitaminB12Ug: $vitaminB12Ug, ')
          ..write('vitaminCMg: $vitaminCMg, ')
          ..write('vitaminDUg: $vitaminDUg, ')
          ..write('vitaminEMg: $vitaminEMg, ')
          ..write('vitaminKUg: $vitaminKUg')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    ingredientId,
    energyKcal,
    energyKj,
    proteinG,
    fatTotalG,
    fatSaturatedG,
    fatMonoG,
    fatPolyG,
    carbsG,
    sugarsG,
    fiberG,
    starchG,
    waterG,
    alcoholG,
    calciumMg,
    ironMg,
    magnesiumMg,
    phosphorusMg,
    potassiumMg,
    sodiumMg,
    zincMg,
    copperMg,
    manganeseMg,
    seleniumUg,
    iodineUg,
    vitaminAUg,
    vitaminB1Mg,
    vitaminB2Mg,
    vitaminB3Mg,
    vitaminB5Mg,
    vitaminB6Mg,
    vitaminB9Ug,
    vitaminB12Ug,
    vitaminCMg,
    vitaminDUg,
    vitaminEMg,
    vitaminKUg,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NutritionDataTableData &&
          other.ingredientId == this.ingredientId &&
          other.energyKcal == this.energyKcal &&
          other.energyKj == this.energyKj &&
          other.proteinG == this.proteinG &&
          other.fatTotalG == this.fatTotalG &&
          other.fatSaturatedG == this.fatSaturatedG &&
          other.fatMonoG == this.fatMonoG &&
          other.fatPolyG == this.fatPolyG &&
          other.carbsG == this.carbsG &&
          other.sugarsG == this.sugarsG &&
          other.fiberG == this.fiberG &&
          other.starchG == this.starchG &&
          other.waterG == this.waterG &&
          other.alcoholG == this.alcoholG &&
          other.calciumMg == this.calciumMg &&
          other.ironMg == this.ironMg &&
          other.magnesiumMg == this.magnesiumMg &&
          other.phosphorusMg == this.phosphorusMg &&
          other.potassiumMg == this.potassiumMg &&
          other.sodiumMg == this.sodiumMg &&
          other.zincMg == this.zincMg &&
          other.copperMg == this.copperMg &&
          other.manganeseMg == this.manganeseMg &&
          other.seleniumUg == this.seleniumUg &&
          other.iodineUg == this.iodineUg &&
          other.vitaminAUg == this.vitaminAUg &&
          other.vitaminB1Mg == this.vitaminB1Mg &&
          other.vitaminB2Mg == this.vitaminB2Mg &&
          other.vitaminB3Mg == this.vitaminB3Mg &&
          other.vitaminB5Mg == this.vitaminB5Mg &&
          other.vitaminB6Mg == this.vitaminB6Mg &&
          other.vitaminB9Ug == this.vitaminB9Ug &&
          other.vitaminB12Ug == this.vitaminB12Ug &&
          other.vitaminCMg == this.vitaminCMg &&
          other.vitaminDUg == this.vitaminDUg &&
          other.vitaminEMg == this.vitaminEMg &&
          other.vitaminKUg == this.vitaminKUg);
}

class NutritionDataTableCompanion
    extends UpdateCompanion<NutritionDataTableData> {
  final Value<String> ingredientId;
  final Value<double?> energyKcal;
  final Value<double?> energyKj;
  final Value<double?> proteinG;
  final Value<double?> fatTotalG;
  final Value<double?> fatSaturatedG;
  final Value<double?> fatMonoG;
  final Value<double?> fatPolyG;
  final Value<double?> carbsG;
  final Value<double?> sugarsG;
  final Value<double?> fiberG;
  final Value<double?> starchG;
  final Value<double?> waterG;
  final Value<double?> alcoholG;
  final Value<double?> calciumMg;
  final Value<double?> ironMg;
  final Value<double?> magnesiumMg;
  final Value<double?> phosphorusMg;
  final Value<double?> potassiumMg;
  final Value<double?> sodiumMg;
  final Value<double?> zincMg;
  final Value<double?> copperMg;
  final Value<double?> manganeseMg;
  final Value<double?> seleniumUg;
  final Value<double?> iodineUg;
  final Value<double?> vitaminAUg;
  final Value<double?> vitaminB1Mg;
  final Value<double?> vitaminB2Mg;
  final Value<double?> vitaminB3Mg;
  final Value<double?> vitaminB5Mg;
  final Value<double?> vitaminB6Mg;
  final Value<double?> vitaminB9Ug;
  final Value<double?> vitaminB12Ug;
  final Value<double?> vitaminCMg;
  final Value<double?> vitaminDUg;
  final Value<double?> vitaminEMg;
  final Value<double?> vitaminKUg;
  final Value<int> rowid;
  const NutritionDataTableCompanion({
    this.ingredientId = const Value.absent(),
    this.energyKcal = const Value.absent(),
    this.energyKj = const Value.absent(),
    this.proteinG = const Value.absent(),
    this.fatTotalG = const Value.absent(),
    this.fatSaturatedG = const Value.absent(),
    this.fatMonoG = const Value.absent(),
    this.fatPolyG = const Value.absent(),
    this.carbsG = const Value.absent(),
    this.sugarsG = const Value.absent(),
    this.fiberG = const Value.absent(),
    this.starchG = const Value.absent(),
    this.waterG = const Value.absent(),
    this.alcoholG = const Value.absent(),
    this.calciumMg = const Value.absent(),
    this.ironMg = const Value.absent(),
    this.magnesiumMg = const Value.absent(),
    this.phosphorusMg = const Value.absent(),
    this.potassiumMg = const Value.absent(),
    this.sodiumMg = const Value.absent(),
    this.zincMg = const Value.absent(),
    this.copperMg = const Value.absent(),
    this.manganeseMg = const Value.absent(),
    this.seleniumUg = const Value.absent(),
    this.iodineUg = const Value.absent(),
    this.vitaminAUg = const Value.absent(),
    this.vitaminB1Mg = const Value.absent(),
    this.vitaminB2Mg = const Value.absent(),
    this.vitaminB3Mg = const Value.absent(),
    this.vitaminB5Mg = const Value.absent(),
    this.vitaminB6Mg = const Value.absent(),
    this.vitaminB9Ug = const Value.absent(),
    this.vitaminB12Ug = const Value.absent(),
    this.vitaminCMg = const Value.absent(),
    this.vitaminDUg = const Value.absent(),
    this.vitaminEMg = const Value.absent(),
    this.vitaminKUg = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NutritionDataTableCompanion.insert({
    required String ingredientId,
    this.energyKcal = const Value.absent(),
    this.energyKj = const Value.absent(),
    this.proteinG = const Value.absent(),
    this.fatTotalG = const Value.absent(),
    this.fatSaturatedG = const Value.absent(),
    this.fatMonoG = const Value.absent(),
    this.fatPolyG = const Value.absent(),
    this.carbsG = const Value.absent(),
    this.sugarsG = const Value.absent(),
    this.fiberG = const Value.absent(),
    this.starchG = const Value.absent(),
    this.waterG = const Value.absent(),
    this.alcoholG = const Value.absent(),
    this.calciumMg = const Value.absent(),
    this.ironMg = const Value.absent(),
    this.magnesiumMg = const Value.absent(),
    this.phosphorusMg = const Value.absent(),
    this.potassiumMg = const Value.absent(),
    this.sodiumMg = const Value.absent(),
    this.zincMg = const Value.absent(),
    this.copperMg = const Value.absent(),
    this.manganeseMg = const Value.absent(),
    this.seleniumUg = const Value.absent(),
    this.iodineUg = const Value.absent(),
    this.vitaminAUg = const Value.absent(),
    this.vitaminB1Mg = const Value.absent(),
    this.vitaminB2Mg = const Value.absent(),
    this.vitaminB3Mg = const Value.absent(),
    this.vitaminB5Mg = const Value.absent(),
    this.vitaminB6Mg = const Value.absent(),
    this.vitaminB9Ug = const Value.absent(),
    this.vitaminB12Ug = const Value.absent(),
    this.vitaminCMg = const Value.absent(),
    this.vitaminDUg = const Value.absent(),
    this.vitaminEMg = const Value.absent(),
    this.vitaminKUg = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : ingredientId = Value(ingredientId);
  static Insertable<NutritionDataTableData> custom({
    Expression<String>? ingredientId,
    Expression<double>? energyKcal,
    Expression<double>? energyKj,
    Expression<double>? proteinG,
    Expression<double>? fatTotalG,
    Expression<double>? fatSaturatedG,
    Expression<double>? fatMonoG,
    Expression<double>? fatPolyG,
    Expression<double>? carbsG,
    Expression<double>? sugarsG,
    Expression<double>? fiberG,
    Expression<double>? starchG,
    Expression<double>? waterG,
    Expression<double>? alcoholG,
    Expression<double>? calciumMg,
    Expression<double>? ironMg,
    Expression<double>? magnesiumMg,
    Expression<double>? phosphorusMg,
    Expression<double>? potassiumMg,
    Expression<double>? sodiumMg,
    Expression<double>? zincMg,
    Expression<double>? copperMg,
    Expression<double>? manganeseMg,
    Expression<double>? seleniumUg,
    Expression<double>? iodineUg,
    Expression<double>? vitaminAUg,
    Expression<double>? vitaminB1Mg,
    Expression<double>? vitaminB2Mg,
    Expression<double>? vitaminB3Mg,
    Expression<double>? vitaminB5Mg,
    Expression<double>? vitaminB6Mg,
    Expression<double>? vitaminB9Ug,
    Expression<double>? vitaminB12Ug,
    Expression<double>? vitaminCMg,
    Expression<double>? vitaminDUg,
    Expression<double>? vitaminEMg,
    Expression<double>? vitaminKUg,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ingredientId != null) 'ingredient_id': ingredientId,
      if (energyKcal != null) 'energy_kcal': energyKcal,
      if (energyKj != null) 'energy_kj': energyKj,
      if (proteinG != null) 'protein_g': proteinG,
      if (fatTotalG != null) 'fat_total_g': fatTotalG,
      if (fatSaturatedG != null) 'fat_saturated_g': fatSaturatedG,
      if (fatMonoG != null) 'fat_mono_g': fatMonoG,
      if (fatPolyG != null) 'fat_poly_g': fatPolyG,
      if (carbsG != null) 'carbs_g': carbsG,
      if (sugarsG != null) 'sugars_g': sugarsG,
      if (fiberG != null) 'fiber_g': fiberG,
      if (starchG != null) 'starch_g': starchG,
      if (waterG != null) 'water_g': waterG,
      if (alcoholG != null) 'alcohol_g': alcoholG,
      if (calciumMg != null) 'calcium_mg': calciumMg,
      if (ironMg != null) 'iron_mg': ironMg,
      if (magnesiumMg != null) 'magnesium_mg': magnesiumMg,
      if (phosphorusMg != null) 'phosphorus_mg': phosphorusMg,
      if (potassiumMg != null) 'potassium_mg': potassiumMg,
      if (sodiumMg != null) 'sodium_mg': sodiumMg,
      if (zincMg != null) 'zinc_mg': zincMg,
      if (copperMg != null) 'copper_mg': copperMg,
      if (manganeseMg != null) 'manganese_mg': manganeseMg,
      if (seleniumUg != null) 'selenium_ug': seleniumUg,
      if (iodineUg != null) 'iodine_ug': iodineUg,
      if (vitaminAUg != null) 'vitamin_a_ug': vitaminAUg,
      if (vitaminB1Mg != null) 'vitamin_b1_mg': vitaminB1Mg,
      if (vitaminB2Mg != null) 'vitamin_b2_mg': vitaminB2Mg,
      if (vitaminB3Mg != null) 'vitamin_b3_mg': vitaminB3Mg,
      if (vitaminB5Mg != null) 'vitamin_b5_mg': vitaminB5Mg,
      if (vitaminB6Mg != null) 'vitamin_b6_mg': vitaminB6Mg,
      if (vitaminB9Ug != null) 'vitamin_b9_ug': vitaminB9Ug,
      if (vitaminB12Ug != null) 'vitamin_b12_ug': vitaminB12Ug,
      if (vitaminCMg != null) 'vitamin_c_mg': vitaminCMg,
      if (vitaminDUg != null) 'vitamin_d_ug': vitaminDUg,
      if (vitaminEMg != null) 'vitamin_e_mg': vitaminEMg,
      if (vitaminKUg != null) 'vitamin_k_ug': vitaminKUg,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NutritionDataTableCompanion copyWith({
    Value<String>? ingredientId,
    Value<double?>? energyKcal,
    Value<double?>? energyKj,
    Value<double?>? proteinG,
    Value<double?>? fatTotalG,
    Value<double?>? fatSaturatedG,
    Value<double?>? fatMonoG,
    Value<double?>? fatPolyG,
    Value<double?>? carbsG,
    Value<double?>? sugarsG,
    Value<double?>? fiberG,
    Value<double?>? starchG,
    Value<double?>? waterG,
    Value<double?>? alcoholG,
    Value<double?>? calciumMg,
    Value<double?>? ironMg,
    Value<double?>? magnesiumMg,
    Value<double?>? phosphorusMg,
    Value<double?>? potassiumMg,
    Value<double?>? sodiumMg,
    Value<double?>? zincMg,
    Value<double?>? copperMg,
    Value<double?>? manganeseMg,
    Value<double?>? seleniumUg,
    Value<double?>? iodineUg,
    Value<double?>? vitaminAUg,
    Value<double?>? vitaminB1Mg,
    Value<double?>? vitaminB2Mg,
    Value<double?>? vitaminB3Mg,
    Value<double?>? vitaminB5Mg,
    Value<double?>? vitaminB6Mg,
    Value<double?>? vitaminB9Ug,
    Value<double?>? vitaminB12Ug,
    Value<double?>? vitaminCMg,
    Value<double?>? vitaminDUg,
    Value<double?>? vitaminEMg,
    Value<double?>? vitaminKUg,
    Value<int>? rowid,
  }) {
    return NutritionDataTableCompanion(
      ingredientId: ingredientId ?? this.ingredientId,
      energyKcal: energyKcal ?? this.energyKcal,
      energyKj: energyKj ?? this.energyKj,
      proteinG: proteinG ?? this.proteinG,
      fatTotalG: fatTotalG ?? this.fatTotalG,
      fatSaturatedG: fatSaturatedG ?? this.fatSaturatedG,
      fatMonoG: fatMonoG ?? this.fatMonoG,
      fatPolyG: fatPolyG ?? this.fatPolyG,
      carbsG: carbsG ?? this.carbsG,
      sugarsG: sugarsG ?? this.sugarsG,
      fiberG: fiberG ?? this.fiberG,
      starchG: starchG ?? this.starchG,
      waterG: waterG ?? this.waterG,
      alcoholG: alcoholG ?? this.alcoholG,
      calciumMg: calciumMg ?? this.calciumMg,
      ironMg: ironMg ?? this.ironMg,
      magnesiumMg: magnesiumMg ?? this.magnesiumMg,
      phosphorusMg: phosphorusMg ?? this.phosphorusMg,
      potassiumMg: potassiumMg ?? this.potassiumMg,
      sodiumMg: sodiumMg ?? this.sodiumMg,
      zincMg: zincMg ?? this.zincMg,
      copperMg: copperMg ?? this.copperMg,
      manganeseMg: manganeseMg ?? this.manganeseMg,
      seleniumUg: seleniumUg ?? this.seleniumUg,
      iodineUg: iodineUg ?? this.iodineUg,
      vitaminAUg: vitaminAUg ?? this.vitaminAUg,
      vitaminB1Mg: vitaminB1Mg ?? this.vitaminB1Mg,
      vitaminB2Mg: vitaminB2Mg ?? this.vitaminB2Mg,
      vitaminB3Mg: vitaminB3Mg ?? this.vitaminB3Mg,
      vitaminB5Mg: vitaminB5Mg ?? this.vitaminB5Mg,
      vitaminB6Mg: vitaminB6Mg ?? this.vitaminB6Mg,
      vitaminB9Ug: vitaminB9Ug ?? this.vitaminB9Ug,
      vitaminB12Ug: vitaminB12Ug ?? this.vitaminB12Ug,
      vitaminCMg: vitaminCMg ?? this.vitaminCMg,
      vitaminDUg: vitaminDUg ?? this.vitaminDUg,
      vitaminEMg: vitaminEMg ?? this.vitaminEMg,
      vitaminKUg: vitaminKUg ?? this.vitaminKUg,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ingredientId.present) {
      map['ingredient_id'] = Variable<String>(ingredientId.value);
    }
    if (energyKcal.present) {
      map['energy_kcal'] = Variable<double>(energyKcal.value);
    }
    if (energyKj.present) {
      map['energy_kj'] = Variable<double>(energyKj.value);
    }
    if (proteinG.present) {
      map['protein_g'] = Variable<double>(proteinG.value);
    }
    if (fatTotalG.present) {
      map['fat_total_g'] = Variable<double>(fatTotalG.value);
    }
    if (fatSaturatedG.present) {
      map['fat_saturated_g'] = Variable<double>(fatSaturatedG.value);
    }
    if (fatMonoG.present) {
      map['fat_mono_g'] = Variable<double>(fatMonoG.value);
    }
    if (fatPolyG.present) {
      map['fat_poly_g'] = Variable<double>(fatPolyG.value);
    }
    if (carbsG.present) {
      map['carbs_g'] = Variable<double>(carbsG.value);
    }
    if (sugarsG.present) {
      map['sugars_g'] = Variable<double>(sugarsG.value);
    }
    if (fiberG.present) {
      map['fiber_g'] = Variable<double>(fiberG.value);
    }
    if (starchG.present) {
      map['starch_g'] = Variable<double>(starchG.value);
    }
    if (waterG.present) {
      map['water_g'] = Variable<double>(waterG.value);
    }
    if (alcoholG.present) {
      map['alcohol_g'] = Variable<double>(alcoholG.value);
    }
    if (calciumMg.present) {
      map['calcium_mg'] = Variable<double>(calciumMg.value);
    }
    if (ironMg.present) {
      map['iron_mg'] = Variable<double>(ironMg.value);
    }
    if (magnesiumMg.present) {
      map['magnesium_mg'] = Variable<double>(magnesiumMg.value);
    }
    if (phosphorusMg.present) {
      map['phosphorus_mg'] = Variable<double>(phosphorusMg.value);
    }
    if (potassiumMg.present) {
      map['potassium_mg'] = Variable<double>(potassiumMg.value);
    }
    if (sodiumMg.present) {
      map['sodium_mg'] = Variable<double>(sodiumMg.value);
    }
    if (zincMg.present) {
      map['zinc_mg'] = Variable<double>(zincMg.value);
    }
    if (copperMg.present) {
      map['copper_mg'] = Variable<double>(copperMg.value);
    }
    if (manganeseMg.present) {
      map['manganese_mg'] = Variable<double>(manganeseMg.value);
    }
    if (seleniumUg.present) {
      map['selenium_ug'] = Variable<double>(seleniumUg.value);
    }
    if (iodineUg.present) {
      map['iodine_ug'] = Variable<double>(iodineUg.value);
    }
    if (vitaminAUg.present) {
      map['vitamin_a_ug'] = Variable<double>(vitaminAUg.value);
    }
    if (vitaminB1Mg.present) {
      map['vitamin_b1_mg'] = Variable<double>(vitaminB1Mg.value);
    }
    if (vitaminB2Mg.present) {
      map['vitamin_b2_mg'] = Variable<double>(vitaminB2Mg.value);
    }
    if (vitaminB3Mg.present) {
      map['vitamin_b3_mg'] = Variable<double>(vitaminB3Mg.value);
    }
    if (vitaminB5Mg.present) {
      map['vitamin_b5_mg'] = Variable<double>(vitaminB5Mg.value);
    }
    if (vitaminB6Mg.present) {
      map['vitamin_b6_mg'] = Variable<double>(vitaminB6Mg.value);
    }
    if (vitaminB9Ug.present) {
      map['vitamin_b9_ug'] = Variable<double>(vitaminB9Ug.value);
    }
    if (vitaminB12Ug.present) {
      map['vitamin_b12_ug'] = Variable<double>(vitaminB12Ug.value);
    }
    if (vitaminCMg.present) {
      map['vitamin_c_mg'] = Variable<double>(vitaminCMg.value);
    }
    if (vitaminDUg.present) {
      map['vitamin_d_ug'] = Variable<double>(vitaminDUg.value);
    }
    if (vitaminEMg.present) {
      map['vitamin_e_mg'] = Variable<double>(vitaminEMg.value);
    }
    if (vitaminKUg.present) {
      map['vitamin_k_ug'] = Variable<double>(vitaminKUg.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NutritionDataTableCompanion(')
          ..write('ingredientId: $ingredientId, ')
          ..write('energyKcal: $energyKcal, ')
          ..write('energyKj: $energyKj, ')
          ..write('proteinG: $proteinG, ')
          ..write('fatTotalG: $fatTotalG, ')
          ..write('fatSaturatedG: $fatSaturatedG, ')
          ..write('fatMonoG: $fatMonoG, ')
          ..write('fatPolyG: $fatPolyG, ')
          ..write('carbsG: $carbsG, ')
          ..write('sugarsG: $sugarsG, ')
          ..write('fiberG: $fiberG, ')
          ..write('starchG: $starchG, ')
          ..write('waterG: $waterG, ')
          ..write('alcoholG: $alcoholG, ')
          ..write('calciumMg: $calciumMg, ')
          ..write('ironMg: $ironMg, ')
          ..write('magnesiumMg: $magnesiumMg, ')
          ..write('phosphorusMg: $phosphorusMg, ')
          ..write('potassiumMg: $potassiumMg, ')
          ..write('sodiumMg: $sodiumMg, ')
          ..write('zincMg: $zincMg, ')
          ..write('copperMg: $copperMg, ')
          ..write('manganeseMg: $manganeseMg, ')
          ..write('seleniumUg: $seleniumUg, ')
          ..write('iodineUg: $iodineUg, ')
          ..write('vitaminAUg: $vitaminAUg, ')
          ..write('vitaminB1Mg: $vitaminB1Mg, ')
          ..write('vitaminB2Mg: $vitaminB2Mg, ')
          ..write('vitaminB3Mg: $vitaminB3Mg, ')
          ..write('vitaminB5Mg: $vitaminB5Mg, ')
          ..write('vitaminB6Mg: $vitaminB6Mg, ')
          ..write('vitaminB9Ug: $vitaminB9Ug, ')
          ..write('vitaminB12Ug: $vitaminB12Ug, ')
          ..write('vitaminCMg: $vitaminCMg, ')
          ..write('vitaminDUg: $vitaminDUg, ')
          ..write('vitaminEMg: $vitaminEMg, ')
          ..write('vitaminKUg: $vitaminKUg, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FodmapDataTableTable extends FodmapDataTable
    with TableInfo<$FodmapDataTableTable, FodmapDataTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FodmapDataTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _ingredientIdMeta = const VerificationMeta(
    'ingredientId',
  );
  @override
  late final GeneratedColumn<String> ingredientId = GeneratedColumn<String>(
    'ingredient_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ingredients (id)',
    ),
  );
  static const VerificationMeta _fodmapLevelMeta = const VerificationMeta(
    'fodmapLevel',
  );
  @override
  late final GeneratedColumn<String> fodmapLevel = GeneratedColumn<String>(
    'fodmap_level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _oligosMeta = const VerificationMeta('oligos');
  @override
  late final GeneratedColumn<int> oligos = GeneratedColumn<int>(
    'oligos',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _fructoseMeta = const VerificationMeta(
    'fructose',
  );
  @override
  late final GeneratedColumn<int> fructose = GeneratedColumn<int>(
    'fructose',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _polyolsMeta = const VerificationMeta(
    'polyols',
  );
  @override
  late final GeneratedColumn<int> polyols = GeneratedColumn<int>(
    'polyols',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lactoseMeta = const VerificationMeta(
    'lactose',
  );
  @override
  late final GeneratedColumn<int> lactose = GeneratedColumn<int>(
    'lactose',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _servingDescriptionMeta =
      const VerificationMeta('servingDescription');
  @override
  late final GeneratedColumn<String> servingDescription =
      GeneratedColumn<String>(
        'serving_description',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _servingGramsMeta = const VerificationMeta(
    'servingGrams',
  );
  @override
  late final GeneratedColumn<double> servingGrams = GeneratedColumn<double>(
    'serving_grams',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fodmapGroupsMeta = const VerificationMeta(
    'fodmapGroups',
  );
  @override
  late final GeneratedColumn<String> fodmapGroups = GeneratedColumn<String>(
    'fodmap_groups',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
    'source',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lastVerifiedMeta = const VerificationMeta(
    'lastVerified',
  );
  @override
  late final GeneratedColumn<DateTime> lastVerified = GeneratedColumn<DateTime>(
    'last_verified',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    ingredientId,
    fodmapLevel,
    oligos,
    fructose,
    polyols,
    lactose,
    servingDescription,
    servingGrams,
    fodmapGroups,
    notes,
    source,
    lastVerified,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'fodmap_data_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FodmapDataTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ingredient_id')) {
      context.handle(
        _ingredientIdMeta,
        ingredientId.isAcceptableOrUnknown(
          data['ingredient_id']!,
          _ingredientIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ingredientIdMeta);
    }
    if (data.containsKey('fodmap_level')) {
      context.handle(
        _fodmapLevelMeta,
        fodmapLevel.isAcceptableOrUnknown(
          data['fodmap_level']!,
          _fodmapLevelMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fodmapLevelMeta);
    }
    if (data.containsKey('oligos')) {
      context.handle(
        _oligosMeta,
        oligos.isAcceptableOrUnknown(data['oligos']!, _oligosMeta),
      );
    }
    if (data.containsKey('fructose')) {
      context.handle(
        _fructoseMeta,
        fructose.isAcceptableOrUnknown(data['fructose']!, _fructoseMeta),
      );
    }
    if (data.containsKey('polyols')) {
      context.handle(
        _polyolsMeta,
        polyols.isAcceptableOrUnknown(data['polyols']!, _polyolsMeta),
      );
    }
    if (data.containsKey('lactose')) {
      context.handle(
        _lactoseMeta,
        lactose.isAcceptableOrUnknown(data['lactose']!, _lactoseMeta),
      );
    }
    if (data.containsKey('serving_description')) {
      context.handle(
        _servingDescriptionMeta,
        servingDescription.isAcceptableOrUnknown(
          data['serving_description']!,
          _servingDescriptionMeta,
        ),
      );
    }
    if (data.containsKey('serving_grams')) {
      context.handle(
        _servingGramsMeta,
        servingGrams.isAcceptableOrUnknown(
          data['serving_grams']!,
          _servingGramsMeta,
        ),
      );
    }
    if (data.containsKey('fodmap_groups')) {
      context.handle(
        _fodmapGroupsMeta,
        fodmapGroups.isAcceptableOrUnknown(
          data['fodmap_groups']!,
          _fodmapGroupsMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('source')) {
      context.handle(
        _sourceMeta,
        source.isAcceptableOrUnknown(data['source']!, _sourceMeta),
      );
    }
    if (data.containsKey('last_verified')) {
      context.handle(
        _lastVerifiedMeta,
        lastVerified.isAcceptableOrUnknown(
          data['last_verified']!,
          _lastVerifiedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ingredientId};
  @override
  FodmapDataTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FodmapDataTableData(
      ingredientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredient_id'],
      )!,
      fodmapLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fodmap_level'],
      )!,
      oligos: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}oligos'],
      )!,
      fructose: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}fructose'],
      )!,
      polyols: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}polyols'],
      )!,
      lactose: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}lactose'],
      )!,
      servingDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}serving_description'],
      ),
      servingGrams: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}serving_grams'],
      ),
      fodmapGroups: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fodmap_groups'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      source: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source'],
      ),
      lastVerified: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_verified'],
      ),
    );
  }

  @override
  $FodmapDataTableTable createAlias(String alias) {
    return $FodmapDataTableTable(attachedDatabase, alias);
  }
}

class FodmapDataTableData extends DataClass
    implements Insertable<FodmapDataTableData> {
  final String ingredientId;
  final String fodmapLevel;
  final int oligos;
  final int fructose;
  final int polyols;
  final int lactose;
  final String? servingDescription;
  final double? servingGrams;
  final String? fodmapGroups;
  final String? notes;
  final String? source;
  final DateTime? lastVerified;
  const FodmapDataTableData({
    required this.ingredientId,
    required this.fodmapLevel,
    required this.oligos,
    required this.fructose,
    required this.polyols,
    required this.lactose,
    this.servingDescription,
    this.servingGrams,
    this.fodmapGroups,
    this.notes,
    this.source,
    this.lastVerified,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ingredient_id'] = Variable<String>(ingredientId);
    map['fodmap_level'] = Variable<String>(fodmapLevel);
    map['oligos'] = Variable<int>(oligos);
    map['fructose'] = Variable<int>(fructose);
    map['polyols'] = Variable<int>(polyols);
    map['lactose'] = Variable<int>(lactose);
    if (!nullToAbsent || servingDescription != null) {
      map['serving_description'] = Variable<String>(servingDescription);
    }
    if (!nullToAbsent || servingGrams != null) {
      map['serving_grams'] = Variable<double>(servingGrams);
    }
    if (!nullToAbsent || fodmapGroups != null) {
      map['fodmap_groups'] = Variable<String>(fodmapGroups);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || source != null) {
      map['source'] = Variable<String>(source);
    }
    if (!nullToAbsent || lastVerified != null) {
      map['last_verified'] = Variable<DateTime>(lastVerified);
    }
    return map;
  }

  FodmapDataTableCompanion toCompanion(bool nullToAbsent) {
    return FodmapDataTableCompanion(
      ingredientId: Value(ingredientId),
      fodmapLevel: Value(fodmapLevel),
      oligos: Value(oligos),
      fructose: Value(fructose),
      polyols: Value(polyols),
      lactose: Value(lactose),
      servingDescription: servingDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(servingDescription),
      servingGrams: servingGrams == null && nullToAbsent
          ? const Value.absent()
          : Value(servingGrams),
      fodmapGroups: fodmapGroups == null && nullToAbsent
          ? const Value.absent()
          : Value(fodmapGroups),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      source: source == null && nullToAbsent
          ? const Value.absent()
          : Value(source),
      lastVerified: lastVerified == null && nullToAbsent
          ? const Value.absent()
          : Value(lastVerified),
    );
  }

  factory FodmapDataTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FodmapDataTableData(
      ingredientId: serializer.fromJson<String>(json['ingredientId']),
      fodmapLevel: serializer.fromJson<String>(json['fodmapLevel']),
      oligos: serializer.fromJson<int>(json['oligos']),
      fructose: serializer.fromJson<int>(json['fructose']),
      polyols: serializer.fromJson<int>(json['polyols']),
      lactose: serializer.fromJson<int>(json['lactose']),
      servingDescription: serializer.fromJson<String?>(
        json['servingDescription'],
      ),
      servingGrams: serializer.fromJson<double?>(json['servingGrams']),
      fodmapGroups: serializer.fromJson<String?>(json['fodmapGroups']),
      notes: serializer.fromJson<String?>(json['notes']),
      source: serializer.fromJson<String?>(json['source']),
      lastVerified: serializer.fromJson<DateTime?>(json['lastVerified']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ingredientId': serializer.toJson<String>(ingredientId),
      'fodmapLevel': serializer.toJson<String>(fodmapLevel),
      'oligos': serializer.toJson<int>(oligos),
      'fructose': serializer.toJson<int>(fructose),
      'polyols': serializer.toJson<int>(polyols),
      'lactose': serializer.toJson<int>(lactose),
      'servingDescription': serializer.toJson<String?>(servingDescription),
      'servingGrams': serializer.toJson<double?>(servingGrams),
      'fodmapGroups': serializer.toJson<String?>(fodmapGroups),
      'notes': serializer.toJson<String?>(notes),
      'source': serializer.toJson<String?>(source),
      'lastVerified': serializer.toJson<DateTime?>(lastVerified),
    };
  }

  FodmapDataTableData copyWith({
    String? ingredientId,
    String? fodmapLevel,
    int? oligos,
    int? fructose,
    int? polyols,
    int? lactose,
    Value<String?> servingDescription = const Value.absent(),
    Value<double?> servingGrams = const Value.absent(),
    Value<String?> fodmapGroups = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    Value<String?> source = const Value.absent(),
    Value<DateTime?> lastVerified = const Value.absent(),
  }) => FodmapDataTableData(
    ingredientId: ingredientId ?? this.ingredientId,
    fodmapLevel: fodmapLevel ?? this.fodmapLevel,
    oligos: oligos ?? this.oligos,
    fructose: fructose ?? this.fructose,
    polyols: polyols ?? this.polyols,
    lactose: lactose ?? this.lactose,
    servingDescription: servingDescription.present
        ? servingDescription.value
        : this.servingDescription,
    servingGrams: servingGrams.present ? servingGrams.value : this.servingGrams,
    fodmapGroups: fodmapGroups.present ? fodmapGroups.value : this.fodmapGroups,
    notes: notes.present ? notes.value : this.notes,
    source: source.present ? source.value : this.source,
    lastVerified: lastVerified.present ? lastVerified.value : this.lastVerified,
  );
  FodmapDataTableData copyWithCompanion(FodmapDataTableCompanion data) {
    return FodmapDataTableData(
      ingredientId: data.ingredientId.present
          ? data.ingredientId.value
          : this.ingredientId,
      fodmapLevel: data.fodmapLevel.present
          ? data.fodmapLevel.value
          : this.fodmapLevel,
      oligos: data.oligos.present ? data.oligos.value : this.oligos,
      fructose: data.fructose.present ? data.fructose.value : this.fructose,
      polyols: data.polyols.present ? data.polyols.value : this.polyols,
      lactose: data.lactose.present ? data.lactose.value : this.lactose,
      servingDescription: data.servingDescription.present
          ? data.servingDescription.value
          : this.servingDescription,
      servingGrams: data.servingGrams.present
          ? data.servingGrams.value
          : this.servingGrams,
      fodmapGroups: data.fodmapGroups.present
          ? data.fodmapGroups.value
          : this.fodmapGroups,
      notes: data.notes.present ? data.notes.value : this.notes,
      source: data.source.present ? data.source.value : this.source,
      lastVerified: data.lastVerified.present
          ? data.lastVerified.value
          : this.lastVerified,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FodmapDataTableData(')
          ..write('ingredientId: $ingredientId, ')
          ..write('fodmapLevel: $fodmapLevel, ')
          ..write('oligos: $oligos, ')
          ..write('fructose: $fructose, ')
          ..write('polyols: $polyols, ')
          ..write('lactose: $lactose, ')
          ..write('servingDescription: $servingDescription, ')
          ..write('servingGrams: $servingGrams, ')
          ..write('fodmapGroups: $fodmapGroups, ')
          ..write('notes: $notes, ')
          ..write('source: $source, ')
          ..write('lastVerified: $lastVerified')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    ingredientId,
    fodmapLevel,
    oligos,
    fructose,
    polyols,
    lactose,
    servingDescription,
    servingGrams,
    fodmapGroups,
    notes,
    source,
    lastVerified,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FodmapDataTableData &&
          other.ingredientId == this.ingredientId &&
          other.fodmapLevel == this.fodmapLevel &&
          other.oligos == this.oligos &&
          other.fructose == this.fructose &&
          other.polyols == this.polyols &&
          other.lactose == this.lactose &&
          other.servingDescription == this.servingDescription &&
          other.servingGrams == this.servingGrams &&
          other.fodmapGroups == this.fodmapGroups &&
          other.notes == this.notes &&
          other.source == this.source &&
          other.lastVerified == this.lastVerified);
}

class FodmapDataTableCompanion extends UpdateCompanion<FodmapDataTableData> {
  final Value<String> ingredientId;
  final Value<String> fodmapLevel;
  final Value<int> oligos;
  final Value<int> fructose;
  final Value<int> polyols;
  final Value<int> lactose;
  final Value<String?> servingDescription;
  final Value<double?> servingGrams;
  final Value<String?> fodmapGroups;
  final Value<String?> notes;
  final Value<String?> source;
  final Value<DateTime?> lastVerified;
  final Value<int> rowid;
  const FodmapDataTableCompanion({
    this.ingredientId = const Value.absent(),
    this.fodmapLevel = const Value.absent(),
    this.oligos = const Value.absent(),
    this.fructose = const Value.absent(),
    this.polyols = const Value.absent(),
    this.lactose = const Value.absent(),
    this.servingDescription = const Value.absent(),
    this.servingGrams = const Value.absent(),
    this.fodmapGroups = const Value.absent(),
    this.notes = const Value.absent(),
    this.source = const Value.absent(),
    this.lastVerified = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FodmapDataTableCompanion.insert({
    required String ingredientId,
    required String fodmapLevel,
    this.oligos = const Value.absent(),
    this.fructose = const Value.absent(),
    this.polyols = const Value.absent(),
    this.lactose = const Value.absent(),
    this.servingDescription = const Value.absent(),
    this.servingGrams = const Value.absent(),
    this.fodmapGroups = const Value.absent(),
    this.notes = const Value.absent(),
    this.source = const Value.absent(),
    this.lastVerified = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : ingredientId = Value(ingredientId),
       fodmapLevel = Value(fodmapLevel);
  static Insertable<FodmapDataTableData> custom({
    Expression<String>? ingredientId,
    Expression<String>? fodmapLevel,
    Expression<int>? oligos,
    Expression<int>? fructose,
    Expression<int>? polyols,
    Expression<int>? lactose,
    Expression<String>? servingDescription,
    Expression<double>? servingGrams,
    Expression<String>? fodmapGroups,
    Expression<String>? notes,
    Expression<String>? source,
    Expression<DateTime>? lastVerified,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (ingredientId != null) 'ingredient_id': ingredientId,
      if (fodmapLevel != null) 'fodmap_level': fodmapLevel,
      if (oligos != null) 'oligos': oligos,
      if (fructose != null) 'fructose': fructose,
      if (polyols != null) 'polyols': polyols,
      if (lactose != null) 'lactose': lactose,
      if (servingDescription != null) 'serving_description': servingDescription,
      if (servingGrams != null) 'serving_grams': servingGrams,
      if (fodmapGroups != null) 'fodmap_groups': fodmapGroups,
      if (notes != null) 'notes': notes,
      if (source != null) 'source': source,
      if (lastVerified != null) 'last_verified': lastVerified,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FodmapDataTableCompanion copyWith({
    Value<String>? ingredientId,
    Value<String>? fodmapLevel,
    Value<int>? oligos,
    Value<int>? fructose,
    Value<int>? polyols,
    Value<int>? lactose,
    Value<String?>? servingDescription,
    Value<double?>? servingGrams,
    Value<String?>? fodmapGroups,
    Value<String?>? notes,
    Value<String?>? source,
    Value<DateTime?>? lastVerified,
    Value<int>? rowid,
  }) {
    return FodmapDataTableCompanion(
      ingredientId: ingredientId ?? this.ingredientId,
      fodmapLevel: fodmapLevel ?? this.fodmapLevel,
      oligos: oligos ?? this.oligos,
      fructose: fructose ?? this.fructose,
      polyols: polyols ?? this.polyols,
      lactose: lactose ?? this.lactose,
      servingDescription: servingDescription ?? this.servingDescription,
      servingGrams: servingGrams ?? this.servingGrams,
      fodmapGroups: fodmapGroups ?? this.fodmapGroups,
      notes: notes ?? this.notes,
      source: source ?? this.source,
      lastVerified: lastVerified ?? this.lastVerified,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ingredientId.present) {
      map['ingredient_id'] = Variable<String>(ingredientId.value);
    }
    if (fodmapLevel.present) {
      map['fodmap_level'] = Variable<String>(fodmapLevel.value);
    }
    if (oligos.present) {
      map['oligos'] = Variable<int>(oligos.value);
    }
    if (fructose.present) {
      map['fructose'] = Variable<int>(fructose.value);
    }
    if (polyols.present) {
      map['polyols'] = Variable<int>(polyols.value);
    }
    if (lactose.present) {
      map['lactose'] = Variable<int>(lactose.value);
    }
    if (servingDescription.present) {
      map['serving_description'] = Variable<String>(servingDescription.value);
    }
    if (servingGrams.present) {
      map['serving_grams'] = Variable<double>(servingGrams.value);
    }
    if (fodmapGroups.present) {
      map['fodmap_groups'] = Variable<String>(fodmapGroups.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (lastVerified.present) {
      map['last_verified'] = Variable<DateTime>(lastVerified.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FodmapDataTableCompanion(')
          ..write('ingredientId: $ingredientId, ')
          ..write('fodmapLevel: $fodmapLevel, ')
          ..write('oligos: $oligos, ')
          ..write('fructose: $fructose, ')
          ..write('polyols: $polyols, ')
          ..write('lactose: $lactose, ')
          ..write('servingDescription: $servingDescription, ')
          ..write('servingGrams: $servingGrams, ')
          ..write('fodmapGroups: $fodmapGroups, ')
          ..write('notes: $notes, ')
          ..write('source: $source, ')
          ..write('lastVerified: $lastVerified, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecipesTable extends Recipes with TableInfo<$RecipesTable, Recipe> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _instructionsMeta = const VerificationMeta(
    'instructions',
  );
  @override
  late final GeneratedColumn<String> instructions = GeneratedColumn<String>(
    'instructions',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _prepTimeMinMeta = const VerificationMeta(
    'prepTimeMin',
  );
  @override
  late final GeneratedColumn<int> prepTimeMin = GeneratedColumn<int>(
    'prep_time_min',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cookTimeMinMeta = const VerificationMeta(
    'cookTimeMin',
  );
  @override
  late final GeneratedColumn<int> cookTimeMin = GeneratedColumn<int>(
    'cook_time_min',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _defaultServingsMeta = const VerificationMeta(
    'defaultServings',
  );
  @override
  late final GeneratedColumn<double> defaultServings = GeneratedColumn<double>(
    'default_servings',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
    'tags',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isMealPrepMeta = const VerificationMeta(
    'isMealPrep',
  );
  @override
  late final GeneratedColumn<bool> isMealPrep = GeneratedColumn<bool>(
    'is_meal_prep',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_meal_prep" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isQuickBreakfastMeta = const VerificationMeta(
    'isQuickBreakfast',
  );
  @override
  late final GeneratedColumn<bool> isQuickBreakfast = GeneratedColumn<bool>(
    'is_quick_breakfast',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_quick_breakfast" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _imagePathMeta = const VerificationMeta(
    'imagePath',
  );
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
    'image_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sourceUrlMeta = const VerificationMeta(
    'sourceUrl',
  );
  @override
  late final GeneratedColumn<String> sourceUrl = GeneratedColumn<String>(
    'source_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    description,
    instructions,
    prepTimeMin,
    cookTimeMin,
    defaultServings,
    tags,
    isMealPrep,
    isQuickBreakfast,
    imagePath,
    sourceUrl,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Recipe> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('instructions')) {
      context.handle(
        _instructionsMeta,
        instructions.isAcceptableOrUnknown(
          data['instructions']!,
          _instructionsMeta,
        ),
      );
    }
    if (data.containsKey('prep_time_min')) {
      context.handle(
        _prepTimeMinMeta,
        prepTimeMin.isAcceptableOrUnknown(
          data['prep_time_min']!,
          _prepTimeMinMeta,
        ),
      );
    }
    if (data.containsKey('cook_time_min')) {
      context.handle(
        _cookTimeMinMeta,
        cookTimeMin.isAcceptableOrUnknown(
          data['cook_time_min']!,
          _cookTimeMinMeta,
        ),
      );
    }
    if (data.containsKey('default_servings')) {
      context.handle(
        _defaultServingsMeta,
        defaultServings.isAcceptableOrUnknown(
          data['default_servings']!,
          _defaultServingsMeta,
        ),
      );
    }
    if (data.containsKey('tags')) {
      context.handle(
        _tagsMeta,
        tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta),
      );
    }
    if (data.containsKey('is_meal_prep')) {
      context.handle(
        _isMealPrepMeta,
        isMealPrep.isAcceptableOrUnknown(
          data['is_meal_prep']!,
          _isMealPrepMeta,
        ),
      );
    }
    if (data.containsKey('is_quick_breakfast')) {
      context.handle(
        _isQuickBreakfastMeta,
        isQuickBreakfast.isAcceptableOrUnknown(
          data['is_quick_breakfast']!,
          _isQuickBreakfastMeta,
        ),
      );
    }
    if (data.containsKey('image_path')) {
      context.handle(
        _imagePathMeta,
        imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta),
      );
    }
    if (data.containsKey('source_url')) {
      context.handle(
        _sourceUrlMeta,
        sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Recipe map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Recipe(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      instructions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instructions'],
      ),
      prepTimeMin: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}prep_time_min'],
      ),
      cookTimeMin: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cook_time_min'],
      ),
      defaultServings: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}default_servings'],
      )!,
      tags: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tags'],
      ),
      isMealPrep: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_meal_prep'],
      )!,
      isQuickBreakfast: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_quick_breakfast'],
      )!,
      imagePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_path'],
      ),
      sourceUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_url'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $RecipesTable createAlias(String alias) {
    return $RecipesTable(attachedDatabase, alias);
  }
}

class Recipe extends DataClass implements Insertable<Recipe> {
  final String id;
  final String name;
  final String? description;
  final String? instructions;
  final int? prepTimeMin;
  final int? cookTimeMin;
  final double defaultServings;
  final String? tags;
  final bool isMealPrep;
  final bool isQuickBreakfast;
  final String? imagePath;
  final String? sourceUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Recipe({
    required this.id,
    required this.name,
    this.description,
    this.instructions,
    this.prepTimeMin,
    this.cookTimeMin,
    required this.defaultServings,
    this.tags,
    required this.isMealPrep,
    required this.isQuickBreakfast,
    this.imagePath,
    this.sourceUrl,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || instructions != null) {
      map['instructions'] = Variable<String>(instructions);
    }
    if (!nullToAbsent || prepTimeMin != null) {
      map['prep_time_min'] = Variable<int>(prepTimeMin);
    }
    if (!nullToAbsent || cookTimeMin != null) {
      map['cook_time_min'] = Variable<int>(cookTimeMin);
    }
    map['default_servings'] = Variable<double>(defaultServings);
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    map['is_meal_prep'] = Variable<bool>(isMealPrep);
    map['is_quick_breakfast'] = Variable<bool>(isQuickBreakfast);
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || sourceUrl != null) {
      map['source_url'] = Variable<String>(sourceUrl);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  RecipesCompanion toCompanion(bool nullToAbsent) {
    return RecipesCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      instructions: instructions == null && nullToAbsent
          ? const Value.absent()
          : Value(instructions),
      prepTimeMin: prepTimeMin == null && nullToAbsent
          ? const Value.absent()
          : Value(prepTimeMin),
      cookTimeMin: cookTimeMin == null && nullToAbsent
          ? const Value.absent()
          : Value(cookTimeMin),
      defaultServings: Value(defaultServings),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      isMealPrep: Value(isMealPrep),
      isQuickBreakfast: Value(isQuickBreakfast),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      sourceUrl: sourceUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceUrl),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Recipe.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Recipe(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      instructions: serializer.fromJson<String?>(json['instructions']),
      prepTimeMin: serializer.fromJson<int?>(json['prepTimeMin']),
      cookTimeMin: serializer.fromJson<int?>(json['cookTimeMin']),
      defaultServings: serializer.fromJson<double>(json['defaultServings']),
      tags: serializer.fromJson<String?>(json['tags']),
      isMealPrep: serializer.fromJson<bool>(json['isMealPrep']),
      isQuickBreakfast: serializer.fromJson<bool>(json['isQuickBreakfast']),
      imagePath: serializer.fromJson<String?>(json['imagePath']),
      sourceUrl: serializer.fromJson<String?>(json['sourceUrl']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'instructions': serializer.toJson<String?>(instructions),
      'prepTimeMin': serializer.toJson<int?>(prepTimeMin),
      'cookTimeMin': serializer.toJson<int?>(cookTimeMin),
      'defaultServings': serializer.toJson<double>(defaultServings),
      'tags': serializer.toJson<String?>(tags),
      'isMealPrep': serializer.toJson<bool>(isMealPrep),
      'isQuickBreakfast': serializer.toJson<bool>(isQuickBreakfast),
      'imagePath': serializer.toJson<String?>(imagePath),
      'sourceUrl': serializer.toJson<String?>(sourceUrl),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Recipe copyWith({
    String? id,
    String? name,
    Value<String?> description = const Value.absent(),
    Value<String?> instructions = const Value.absent(),
    Value<int?> prepTimeMin = const Value.absent(),
    Value<int?> cookTimeMin = const Value.absent(),
    double? defaultServings,
    Value<String?> tags = const Value.absent(),
    bool? isMealPrep,
    bool? isQuickBreakfast,
    Value<String?> imagePath = const Value.absent(),
    Value<String?> sourceUrl = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Recipe(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    instructions: instructions.present ? instructions.value : this.instructions,
    prepTimeMin: prepTimeMin.present ? prepTimeMin.value : this.prepTimeMin,
    cookTimeMin: cookTimeMin.present ? cookTimeMin.value : this.cookTimeMin,
    defaultServings: defaultServings ?? this.defaultServings,
    tags: tags.present ? tags.value : this.tags,
    isMealPrep: isMealPrep ?? this.isMealPrep,
    isQuickBreakfast: isQuickBreakfast ?? this.isQuickBreakfast,
    imagePath: imagePath.present ? imagePath.value : this.imagePath,
    sourceUrl: sourceUrl.present ? sourceUrl.value : this.sourceUrl,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Recipe copyWithCompanion(RecipesCompanion data) {
    return Recipe(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      instructions: data.instructions.present
          ? data.instructions.value
          : this.instructions,
      prepTimeMin: data.prepTimeMin.present
          ? data.prepTimeMin.value
          : this.prepTimeMin,
      cookTimeMin: data.cookTimeMin.present
          ? data.cookTimeMin.value
          : this.cookTimeMin,
      defaultServings: data.defaultServings.present
          ? data.defaultServings.value
          : this.defaultServings,
      tags: data.tags.present ? data.tags.value : this.tags,
      isMealPrep: data.isMealPrep.present
          ? data.isMealPrep.value
          : this.isMealPrep,
      isQuickBreakfast: data.isQuickBreakfast.present
          ? data.isQuickBreakfast.value
          : this.isQuickBreakfast,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
      sourceUrl: data.sourceUrl.present ? data.sourceUrl.value : this.sourceUrl,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Recipe(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('instructions: $instructions, ')
          ..write('prepTimeMin: $prepTimeMin, ')
          ..write('cookTimeMin: $cookTimeMin, ')
          ..write('defaultServings: $defaultServings, ')
          ..write('tags: $tags, ')
          ..write('isMealPrep: $isMealPrep, ')
          ..write('isQuickBreakfast: $isQuickBreakfast, ')
          ..write('imagePath: $imagePath, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    instructions,
    prepTimeMin,
    cookTimeMin,
    defaultServings,
    tags,
    isMealPrep,
    isQuickBreakfast,
    imagePath,
    sourceUrl,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Recipe &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.instructions == this.instructions &&
          other.prepTimeMin == this.prepTimeMin &&
          other.cookTimeMin == this.cookTimeMin &&
          other.defaultServings == this.defaultServings &&
          other.tags == this.tags &&
          other.isMealPrep == this.isMealPrep &&
          other.isQuickBreakfast == this.isQuickBreakfast &&
          other.imagePath == this.imagePath &&
          other.sourceUrl == this.sourceUrl &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RecipesCompanion extends UpdateCompanion<Recipe> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<String?> instructions;
  final Value<int?> prepTimeMin;
  final Value<int?> cookTimeMin;
  final Value<double> defaultServings;
  final Value<String?> tags;
  final Value<bool> isMealPrep;
  final Value<bool> isQuickBreakfast;
  final Value<String?> imagePath;
  final Value<String?> sourceUrl;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const RecipesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.instructions = const Value.absent(),
    this.prepTimeMin = const Value.absent(),
    this.cookTimeMin = const Value.absent(),
    this.defaultServings = const Value.absent(),
    this.tags = const Value.absent(),
    this.isMealPrep = const Value.absent(),
    this.isQuickBreakfast = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecipesCompanion.insert({
    required String id,
    required String name,
    this.description = const Value.absent(),
    this.instructions = const Value.absent(),
    this.prepTimeMin = const Value.absent(),
    this.cookTimeMin = const Value.absent(),
    this.defaultServings = const Value.absent(),
    this.tags = const Value.absent(),
    this.isMealPrep = const Value.absent(),
    this.isQuickBreakfast = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<Recipe> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? instructions,
    Expression<int>? prepTimeMin,
    Expression<int>? cookTimeMin,
    Expression<double>? defaultServings,
    Expression<String>? tags,
    Expression<bool>? isMealPrep,
    Expression<bool>? isQuickBreakfast,
    Expression<String>? imagePath,
    Expression<String>? sourceUrl,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (instructions != null) 'instructions': instructions,
      if (prepTimeMin != null) 'prep_time_min': prepTimeMin,
      if (cookTimeMin != null) 'cook_time_min': cookTimeMin,
      if (defaultServings != null) 'default_servings': defaultServings,
      if (tags != null) 'tags': tags,
      if (isMealPrep != null) 'is_meal_prep': isMealPrep,
      if (isQuickBreakfast != null) 'is_quick_breakfast': isQuickBreakfast,
      if (imagePath != null) 'image_path': imagePath,
      if (sourceUrl != null) 'source_url': sourceUrl,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecipesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? description,
    Value<String?>? instructions,
    Value<int?>? prepTimeMin,
    Value<int?>? cookTimeMin,
    Value<double>? defaultServings,
    Value<String?>? tags,
    Value<bool>? isMealPrep,
    Value<bool>? isQuickBreakfast,
    Value<String?>? imagePath,
    Value<String?>? sourceUrl,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return RecipesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      instructions: instructions ?? this.instructions,
      prepTimeMin: prepTimeMin ?? this.prepTimeMin,
      cookTimeMin: cookTimeMin ?? this.cookTimeMin,
      defaultServings: defaultServings ?? this.defaultServings,
      tags: tags ?? this.tags,
      isMealPrep: isMealPrep ?? this.isMealPrep,
      isQuickBreakfast: isQuickBreakfast ?? this.isQuickBreakfast,
      imagePath: imagePath ?? this.imagePath,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (instructions.present) {
      map['instructions'] = Variable<String>(instructions.value);
    }
    if (prepTimeMin.present) {
      map['prep_time_min'] = Variable<int>(prepTimeMin.value);
    }
    if (cookTimeMin.present) {
      map['cook_time_min'] = Variable<int>(cookTimeMin.value);
    }
    if (defaultServings.present) {
      map['default_servings'] = Variable<double>(defaultServings.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (isMealPrep.present) {
      map['is_meal_prep'] = Variable<bool>(isMealPrep.value);
    }
    if (isQuickBreakfast.present) {
      map['is_quick_breakfast'] = Variable<bool>(isQuickBreakfast.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('instructions: $instructions, ')
          ..write('prepTimeMin: $prepTimeMin, ')
          ..write('cookTimeMin: $cookTimeMin, ')
          ..write('defaultServings: $defaultServings, ')
          ..write('tags: $tags, ')
          ..write('isMealPrep: $isMealPrep, ')
          ..write('isQuickBreakfast: $isQuickBreakfast, ')
          ..write('imagePath: $imagePath, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecipeIngredientsTable extends RecipeIngredients
    with TableInfo<$RecipeIngredientsTable, RecipeIngredient> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeIngredientsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES recipes (id)',
    ),
  );
  static const VerificationMeta _ingredientIdMeta = const VerificationMeta(
    'ingredientId',
  );
  @override
  late final GeneratedColumn<String> ingredientId = GeneratedColumn<String>(
    'ingredient_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ingredients (id)',
    ),
  );
  static const VerificationMeta _amountGramsMeta = const VerificationMeta(
    'amountGrams',
  );
  @override
  late final GeneratedColumn<double> amountGrams = GeneratedColumn<double>(
    'amount_grams',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountDisplayMeta = const VerificationMeta(
    'amountDisplay',
  );
  @override
  late final GeneratedColumn<String> amountDisplay = GeneratedColumn<String>(
    'amount_display',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recipeId,
    ingredientId,
    amountGrams,
    amountDisplay,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipe_ingredients';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecipeIngredient> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('ingredient_id')) {
      context.handle(
        _ingredientIdMeta,
        ingredientId.isAcceptableOrUnknown(
          data['ingredient_id']!,
          _ingredientIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ingredientIdMeta);
    }
    if (data.containsKey('amount_grams')) {
      context.handle(
        _amountGramsMeta,
        amountGrams.isAcceptableOrUnknown(
          data['amount_grams']!,
          _amountGramsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_amountGramsMeta);
    }
    if (data.containsKey('amount_display')) {
      context.handle(
        _amountDisplayMeta,
        amountDisplay.isAcceptableOrUnknown(
          data['amount_display']!,
          _amountDisplayMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeIngredient map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeIngredient(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      )!,
      ingredientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredient_id'],
      )!,
      amountGrams: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount_grams'],
      )!,
      amountDisplay: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}amount_display'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $RecipeIngredientsTable createAlias(String alias) {
    return $RecipeIngredientsTable(attachedDatabase, alias);
  }
}

class RecipeIngredient extends DataClass
    implements Insertable<RecipeIngredient> {
  final String id;
  final String recipeId;
  final String ingredientId;
  final double amountGrams;
  final String? amountDisplay;
  final String? notes;
  const RecipeIngredient({
    required this.id,
    required this.recipeId,
    required this.ingredientId,
    required this.amountGrams,
    this.amountDisplay,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['recipe_id'] = Variable<String>(recipeId);
    map['ingredient_id'] = Variable<String>(ingredientId);
    map['amount_grams'] = Variable<double>(amountGrams);
    if (!nullToAbsent || amountDisplay != null) {
      map['amount_display'] = Variable<String>(amountDisplay);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  RecipeIngredientsCompanion toCompanion(bool nullToAbsent) {
    return RecipeIngredientsCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      ingredientId: Value(ingredientId),
      amountGrams: Value(amountGrams),
      amountDisplay: amountDisplay == null && nullToAbsent
          ? const Value.absent()
          : Value(amountDisplay),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory RecipeIngredient.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeIngredient(
      id: serializer.fromJson<String>(json['id']),
      recipeId: serializer.fromJson<String>(json['recipeId']),
      ingredientId: serializer.fromJson<String>(json['ingredientId']),
      amountGrams: serializer.fromJson<double>(json['amountGrams']),
      amountDisplay: serializer.fromJson<String?>(json['amountDisplay']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'recipeId': serializer.toJson<String>(recipeId),
      'ingredientId': serializer.toJson<String>(ingredientId),
      'amountGrams': serializer.toJson<double>(amountGrams),
      'amountDisplay': serializer.toJson<String?>(amountDisplay),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  RecipeIngredient copyWith({
    String? id,
    String? recipeId,
    String? ingredientId,
    double? amountGrams,
    Value<String?> amountDisplay = const Value.absent(),
    Value<String?> notes = const Value.absent(),
  }) => RecipeIngredient(
    id: id ?? this.id,
    recipeId: recipeId ?? this.recipeId,
    ingredientId: ingredientId ?? this.ingredientId,
    amountGrams: amountGrams ?? this.amountGrams,
    amountDisplay: amountDisplay.present
        ? amountDisplay.value
        : this.amountDisplay,
    notes: notes.present ? notes.value : this.notes,
  );
  RecipeIngredient copyWithCompanion(RecipeIngredientsCompanion data) {
    return RecipeIngredient(
      id: data.id.present ? data.id.value : this.id,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      ingredientId: data.ingredientId.present
          ? data.ingredientId.value
          : this.ingredientId,
      amountGrams: data.amountGrams.present
          ? data.amountGrams.value
          : this.amountGrams,
      amountDisplay: data.amountDisplay.present
          ? data.amountDisplay.value
          : this.amountDisplay,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecipeIngredient(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('amountGrams: $amountGrams, ')
          ..write('amountDisplay: $amountDisplay, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recipeId,
    ingredientId,
    amountGrams,
    amountDisplay,
    notes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeIngredient &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.ingredientId == this.ingredientId &&
          other.amountGrams == this.amountGrams &&
          other.amountDisplay == this.amountDisplay &&
          other.notes == this.notes);
}

class RecipeIngredientsCompanion extends UpdateCompanion<RecipeIngredient> {
  final Value<String> id;
  final Value<String> recipeId;
  final Value<String> ingredientId;
  final Value<double> amountGrams;
  final Value<String?> amountDisplay;
  final Value<String?> notes;
  final Value<int> rowid;
  const RecipeIngredientsCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.ingredientId = const Value.absent(),
    this.amountGrams = const Value.absent(),
    this.amountDisplay = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecipeIngredientsCompanion.insert({
    required String id,
    required String recipeId,
    required String ingredientId,
    required double amountGrams,
    this.amountDisplay = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       recipeId = Value(recipeId),
       ingredientId = Value(ingredientId),
       amountGrams = Value(amountGrams);
  static Insertable<RecipeIngredient> custom({
    Expression<String>? id,
    Expression<String>? recipeId,
    Expression<String>? ingredientId,
    Expression<double>? amountGrams,
    Expression<String>? amountDisplay,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (ingredientId != null) 'ingredient_id': ingredientId,
      if (amountGrams != null) 'amount_grams': amountGrams,
      if (amountDisplay != null) 'amount_display': amountDisplay,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecipeIngredientsCompanion copyWith({
    Value<String>? id,
    Value<String>? recipeId,
    Value<String>? ingredientId,
    Value<double>? amountGrams,
    Value<String?>? amountDisplay,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return RecipeIngredientsCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      ingredientId: ingredientId ?? this.ingredientId,
      amountGrams: amountGrams ?? this.amountGrams,
      amountDisplay: amountDisplay ?? this.amountDisplay,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (ingredientId.present) {
      map['ingredient_id'] = Variable<String>(ingredientId.value);
    }
    if (amountGrams.present) {
      map['amount_grams'] = Variable<double>(amountGrams.value);
    }
    if (amountDisplay.present) {
      map['amount_display'] = Variable<String>(amountDisplay.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeIngredientsCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('amountGrams: $amountGrams, ')
          ..write('amountDisplay: $amountDisplay, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FoodLogsTable extends FoodLogs with TableInfo<$FoodLogsTable, FoodLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FoodLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mealTypeMeta = const VerificationMeta(
    'mealType',
  );
  @override
  late final GeneratedColumn<String> mealType = GeneratedColumn<String>(
    'meal_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _recipeIdMeta = const VerificationMeta(
    'recipeId',
  );
  @override
  late final GeneratedColumn<String> recipeId = GeneratedColumn<String>(
    'recipe_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES recipes (id)',
    ),
  );
  static const VerificationMeta _ingredientIdMeta = const VerificationMeta(
    'ingredientId',
  );
  @override
  late final GeneratedColumn<String> ingredientId = GeneratedColumn<String>(
    'ingredient_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ingredients (id)',
    ),
  );
  static const VerificationMeta _amountGramsMeta = const VerificationMeta(
    'amountGrams',
  );
  @override
  late final GeneratedColumn<double> amountGrams = GeneratedColumn<double>(
    'amount_grams',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fodmapLoadScoreMeta = const VerificationMeta(
    'fodmapLoadScore',
  );
  @override
  late final GeneratedColumn<double> fodmapLoadScore = GeneratedColumn<double>(
    'fodmap_load_score',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    mealType,
    recipeId,
    ingredientId,
    amountGrams,
    fodmapLoadScore,
    notes,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'food_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<FoodLog> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('meal_type')) {
      context.handle(
        _mealTypeMeta,
        mealType.isAcceptableOrUnknown(data['meal_type']!, _mealTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_mealTypeMeta);
    }
    if (data.containsKey('recipe_id')) {
      context.handle(
        _recipeIdMeta,
        recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta),
      );
    }
    if (data.containsKey('ingredient_id')) {
      context.handle(
        _ingredientIdMeta,
        ingredientId.isAcceptableOrUnknown(
          data['ingredient_id']!,
          _ingredientIdMeta,
        ),
      );
    }
    if (data.containsKey('amount_grams')) {
      context.handle(
        _amountGramsMeta,
        amountGrams.isAcceptableOrUnknown(
          data['amount_grams']!,
          _amountGramsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_amountGramsMeta);
    }
    if (data.containsKey('fodmap_load_score')) {
      context.handle(
        _fodmapLoadScoreMeta,
        fodmapLoadScore.isAcceptableOrUnknown(
          data['fodmap_load_score']!,
          _fodmapLoadScoreMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FoodLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FoodLog(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      mealType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}meal_type'],
      )!,
      recipeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}recipe_id'],
      ),
      ingredientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredient_id'],
      ),
      amountGrams: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount_grams'],
      )!,
      fodmapLoadScore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}fodmap_load_score'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FoodLogsTable createAlias(String alias) {
    return $FoodLogsTable(attachedDatabase, alias);
  }
}

class FoodLog extends DataClass implements Insertable<FoodLog> {
  final String id;
  final DateTime date;
  final String mealType;
  final String? recipeId;
  final String? ingredientId;
  final double amountGrams;
  final double? fodmapLoadScore;
  final String? notes;
  final DateTime createdAt;
  const FoodLog({
    required this.id,
    required this.date,
    required this.mealType,
    this.recipeId,
    this.ingredientId,
    required this.amountGrams,
    this.fodmapLoadScore,
    this.notes,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['date'] = Variable<DateTime>(date);
    map['meal_type'] = Variable<String>(mealType);
    if (!nullToAbsent || recipeId != null) {
      map['recipe_id'] = Variable<String>(recipeId);
    }
    if (!nullToAbsent || ingredientId != null) {
      map['ingredient_id'] = Variable<String>(ingredientId);
    }
    map['amount_grams'] = Variable<double>(amountGrams);
    if (!nullToAbsent || fodmapLoadScore != null) {
      map['fodmap_load_score'] = Variable<double>(fodmapLoadScore);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FoodLogsCompanion toCompanion(bool nullToAbsent) {
    return FoodLogsCompanion(
      id: Value(id),
      date: Value(date),
      mealType: Value(mealType),
      recipeId: recipeId == null && nullToAbsent
          ? const Value.absent()
          : Value(recipeId),
      ingredientId: ingredientId == null && nullToAbsent
          ? const Value.absent()
          : Value(ingredientId),
      amountGrams: Value(amountGrams),
      fodmapLoadScore: fodmapLoadScore == null && nullToAbsent
          ? const Value.absent()
          : Value(fodmapLoadScore),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      createdAt: Value(createdAt),
    );
  }

  factory FoodLog.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FoodLog(
      id: serializer.fromJson<String>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      mealType: serializer.fromJson<String>(json['mealType']),
      recipeId: serializer.fromJson<String?>(json['recipeId']),
      ingredientId: serializer.fromJson<String?>(json['ingredientId']),
      amountGrams: serializer.fromJson<double>(json['amountGrams']),
      fodmapLoadScore: serializer.fromJson<double?>(json['fodmapLoadScore']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'date': serializer.toJson<DateTime>(date),
      'mealType': serializer.toJson<String>(mealType),
      'recipeId': serializer.toJson<String?>(recipeId),
      'ingredientId': serializer.toJson<String?>(ingredientId),
      'amountGrams': serializer.toJson<double>(amountGrams),
      'fodmapLoadScore': serializer.toJson<double?>(fodmapLoadScore),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FoodLog copyWith({
    String? id,
    DateTime? date,
    String? mealType,
    Value<String?> recipeId = const Value.absent(),
    Value<String?> ingredientId = const Value.absent(),
    double? amountGrams,
    Value<double?> fodmapLoadScore = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    DateTime? createdAt,
  }) => FoodLog(
    id: id ?? this.id,
    date: date ?? this.date,
    mealType: mealType ?? this.mealType,
    recipeId: recipeId.present ? recipeId.value : this.recipeId,
    ingredientId: ingredientId.present ? ingredientId.value : this.ingredientId,
    amountGrams: amountGrams ?? this.amountGrams,
    fodmapLoadScore: fodmapLoadScore.present
        ? fodmapLoadScore.value
        : this.fodmapLoadScore,
    notes: notes.present ? notes.value : this.notes,
    createdAt: createdAt ?? this.createdAt,
  );
  FoodLog copyWithCompanion(FoodLogsCompanion data) {
    return FoodLog(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      mealType: data.mealType.present ? data.mealType.value : this.mealType,
      recipeId: data.recipeId.present ? data.recipeId.value : this.recipeId,
      ingredientId: data.ingredientId.present
          ? data.ingredientId.value
          : this.ingredientId,
      amountGrams: data.amountGrams.present
          ? data.amountGrams.value
          : this.amountGrams,
      fodmapLoadScore: data.fodmapLoadScore.present
          ? data.fodmapLoadScore.value
          : this.fodmapLoadScore,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FoodLog(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('mealType: $mealType, ')
          ..write('recipeId: $recipeId, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('amountGrams: $amountGrams, ')
          ..write('fodmapLoadScore: $fodmapLoadScore, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    date,
    mealType,
    recipeId,
    ingredientId,
    amountGrams,
    fodmapLoadScore,
    notes,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FoodLog &&
          other.id == this.id &&
          other.date == this.date &&
          other.mealType == this.mealType &&
          other.recipeId == this.recipeId &&
          other.ingredientId == this.ingredientId &&
          other.amountGrams == this.amountGrams &&
          other.fodmapLoadScore == this.fodmapLoadScore &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt);
}

class FoodLogsCompanion extends UpdateCompanion<FoodLog> {
  final Value<String> id;
  final Value<DateTime> date;
  final Value<String> mealType;
  final Value<String?> recipeId;
  final Value<String?> ingredientId;
  final Value<double> amountGrams;
  final Value<double?> fodmapLoadScore;
  final Value<String?> notes;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FoodLogsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.mealType = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.ingredientId = const Value.absent(),
    this.amountGrams = const Value.absent(),
    this.fodmapLoadScore = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FoodLogsCompanion.insert({
    required String id,
    required DateTime date,
    required String mealType,
    this.recipeId = const Value.absent(),
    this.ingredientId = const Value.absent(),
    required double amountGrams,
    this.fodmapLoadScore = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       date = Value(date),
       mealType = Value(mealType),
       amountGrams = Value(amountGrams);
  static Insertable<FoodLog> custom({
    Expression<String>? id,
    Expression<DateTime>? date,
    Expression<String>? mealType,
    Expression<String>? recipeId,
    Expression<String>? ingredientId,
    Expression<double>? amountGrams,
    Expression<double>? fodmapLoadScore,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (mealType != null) 'meal_type': mealType,
      if (recipeId != null) 'recipe_id': recipeId,
      if (ingredientId != null) 'ingredient_id': ingredientId,
      if (amountGrams != null) 'amount_grams': amountGrams,
      if (fodmapLoadScore != null) 'fodmap_load_score': fodmapLoadScore,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FoodLogsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? date,
    Value<String>? mealType,
    Value<String?>? recipeId,
    Value<String?>? ingredientId,
    Value<double>? amountGrams,
    Value<double?>? fodmapLoadScore,
    Value<String?>? notes,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return FoodLogsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      mealType: mealType ?? this.mealType,
      recipeId: recipeId ?? this.recipeId,
      ingredientId: ingredientId ?? this.ingredientId,
      amountGrams: amountGrams ?? this.amountGrams,
      fodmapLoadScore: fodmapLoadScore ?? this.fodmapLoadScore,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (mealType.present) {
      map['meal_type'] = Variable<String>(mealType.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<String>(recipeId.value);
    }
    if (ingredientId.present) {
      map['ingredient_id'] = Variable<String>(ingredientId.value);
    }
    if (amountGrams.present) {
      map['amount_grams'] = Variable<double>(amountGrams.value);
    }
    if (fodmapLoadScore.present) {
      map['fodmap_load_score'] = Variable<double>(fodmapLoadScore.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodLogsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('mealType: $mealType, ')
          ..write('recipeId: $recipeId, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('amountGrams: $amountGrams, ')
          ..write('fodmapLoadScore: $fodmapLoadScore, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SupplementsTable extends Supplements
    with TableInfo<$SupplementsTable, Supplement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupplementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dosagePerUnitMeta = const VerificationMeta(
    'dosagePerUnit',
  );
  @override
  late final GeneratedColumn<double> dosagePerUnit = GeneratedColumn<double>(
    'dosage_per_unit',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nutrientsProvidedMeta = const VerificationMeta(
    'nutrientsProvided',
  );
  @override
  late final GeneratedColumn<String> nutrientsProvided =
      GeneratedColumn<String>(
        'nutrients_provided',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _scheduleTimeMeta = const VerificationMeta(
    'scheduleTime',
  );
  @override
  late final GeneratedColumn<String> scheduleTime = GeneratedColumn<String>(
    'schedule_time',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _withFoodMeta = const VerificationMeta(
    'withFood',
  );
  @override
  late final GeneratedColumn<bool> withFood = GeneratedColumn<bool>(
    'with_food',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("with_food" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _stockCurrentMeta = const VerificationMeta(
    'stockCurrent',
  );
  @override
  late final GeneratedColumn<int> stockCurrent = GeneratedColumn<int>(
    'stock_current',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stockWarningAtMeta = const VerificationMeta(
    'stockWarningAt',
  );
  @override
  late final GeneratedColumn<int> stockWarningAt = GeneratedColumn<int>(
    'stock_warning_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(5),
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    brand,
    dosagePerUnit,
    unit,
    nutrientsProvided,
    scheduleTime,
    withFood,
    stockCurrent,
    stockWarningAt,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'supplements';
  @override
  VerificationContext validateIntegrity(
    Insertable<Supplement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    }
    if (data.containsKey('dosage_per_unit')) {
      context.handle(
        _dosagePerUnitMeta,
        dosagePerUnit.isAcceptableOrUnknown(
          data['dosage_per_unit']!,
          _dosagePerUnitMeta,
        ),
      );
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    }
    if (data.containsKey('nutrients_provided')) {
      context.handle(
        _nutrientsProvidedMeta,
        nutrientsProvided.isAcceptableOrUnknown(
          data['nutrients_provided']!,
          _nutrientsProvidedMeta,
        ),
      );
    }
    if (data.containsKey('schedule_time')) {
      context.handle(
        _scheduleTimeMeta,
        scheduleTime.isAcceptableOrUnknown(
          data['schedule_time']!,
          _scheduleTimeMeta,
        ),
      );
    }
    if (data.containsKey('with_food')) {
      context.handle(
        _withFoodMeta,
        withFood.isAcceptableOrUnknown(data['with_food']!, _withFoodMeta),
      );
    }
    if (data.containsKey('stock_current')) {
      context.handle(
        _stockCurrentMeta,
        stockCurrent.isAcceptableOrUnknown(
          data['stock_current']!,
          _stockCurrentMeta,
        ),
      );
    }
    if (data.containsKey('stock_warning_at')) {
      context.handle(
        _stockWarningAtMeta,
        stockWarningAt.isAcceptableOrUnknown(
          data['stock_warning_at']!,
          _stockWarningAtMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Supplement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Supplement(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      ),
      dosagePerUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}dosage_per_unit'],
      ),
      unit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit'],
      ),
      nutrientsProvided: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nutrients_provided'],
      ),
      scheduleTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}schedule_time'],
      ),
      withFood: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}with_food'],
      )!,
      stockCurrent: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stock_current'],
      ),
      stockWarningAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stock_warning_at'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $SupplementsTable createAlias(String alias) {
    return $SupplementsTable(attachedDatabase, alias);
  }
}

class Supplement extends DataClass implements Insertable<Supplement> {
  final String id;
  final String name;
  final String? brand;
  final double? dosagePerUnit;
  final String? unit;
  final String? nutrientsProvided;
  final String? scheduleTime;
  final bool withFood;
  final int? stockCurrent;
  final int stockWarningAt;
  final bool isActive;
  const Supplement({
    required this.id,
    required this.name,
    this.brand,
    this.dosagePerUnit,
    this.unit,
    this.nutrientsProvided,
    this.scheduleTime,
    required this.withFood,
    this.stockCurrent,
    required this.stockWarningAt,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || dosagePerUnit != null) {
      map['dosage_per_unit'] = Variable<double>(dosagePerUnit);
    }
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    if (!nullToAbsent || nutrientsProvided != null) {
      map['nutrients_provided'] = Variable<String>(nutrientsProvided);
    }
    if (!nullToAbsent || scheduleTime != null) {
      map['schedule_time'] = Variable<String>(scheduleTime);
    }
    map['with_food'] = Variable<bool>(withFood);
    if (!nullToAbsent || stockCurrent != null) {
      map['stock_current'] = Variable<int>(stockCurrent);
    }
    map['stock_warning_at'] = Variable<int>(stockWarningAt);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  SupplementsCompanion toCompanion(bool nullToAbsent) {
    return SupplementsCompanion(
      id: Value(id),
      name: Value(name),
      brand: brand == null && nullToAbsent
          ? const Value.absent()
          : Value(brand),
      dosagePerUnit: dosagePerUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(dosagePerUnit),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      nutrientsProvided: nutrientsProvided == null && nullToAbsent
          ? const Value.absent()
          : Value(nutrientsProvided),
      scheduleTime: scheduleTime == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduleTime),
      withFood: Value(withFood),
      stockCurrent: stockCurrent == null && nullToAbsent
          ? const Value.absent()
          : Value(stockCurrent),
      stockWarningAt: Value(stockWarningAt),
      isActive: Value(isActive),
    );
  }

  factory Supplement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Supplement(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      brand: serializer.fromJson<String?>(json['brand']),
      dosagePerUnit: serializer.fromJson<double?>(json['dosagePerUnit']),
      unit: serializer.fromJson<String?>(json['unit']),
      nutrientsProvided: serializer.fromJson<String?>(
        json['nutrientsProvided'],
      ),
      scheduleTime: serializer.fromJson<String?>(json['scheduleTime']),
      withFood: serializer.fromJson<bool>(json['withFood']),
      stockCurrent: serializer.fromJson<int?>(json['stockCurrent']),
      stockWarningAt: serializer.fromJson<int>(json['stockWarningAt']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'brand': serializer.toJson<String?>(brand),
      'dosagePerUnit': serializer.toJson<double?>(dosagePerUnit),
      'unit': serializer.toJson<String?>(unit),
      'nutrientsProvided': serializer.toJson<String?>(nutrientsProvided),
      'scheduleTime': serializer.toJson<String?>(scheduleTime),
      'withFood': serializer.toJson<bool>(withFood),
      'stockCurrent': serializer.toJson<int?>(stockCurrent),
      'stockWarningAt': serializer.toJson<int>(stockWarningAt),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  Supplement copyWith({
    String? id,
    String? name,
    Value<String?> brand = const Value.absent(),
    Value<double?> dosagePerUnit = const Value.absent(),
    Value<String?> unit = const Value.absent(),
    Value<String?> nutrientsProvided = const Value.absent(),
    Value<String?> scheduleTime = const Value.absent(),
    bool? withFood,
    Value<int?> stockCurrent = const Value.absent(),
    int? stockWarningAt,
    bool? isActive,
  }) => Supplement(
    id: id ?? this.id,
    name: name ?? this.name,
    brand: brand.present ? brand.value : this.brand,
    dosagePerUnit: dosagePerUnit.present
        ? dosagePerUnit.value
        : this.dosagePerUnit,
    unit: unit.present ? unit.value : this.unit,
    nutrientsProvided: nutrientsProvided.present
        ? nutrientsProvided.value
        : this.nutrientsProvided,
    scheduleTime: scheduleTime.present ? scheduleTime.value : this.scheduleTime,
    withFood: withFood ?? this.withFood,
    stockCurrent: stockCurrent.present ? stockCurrent.value : this.stockCurrent,
    stockWarningAt: stockWarningAt ?? this.stockWarningAt,
    isActive: isActive ?? this.isActive,
  );
  Supplement copyWithCompanion(SupplementsCompanion data) {
    return Supplement(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      brand: data.brand.present ? data.brand.value : this.brand,
      dosagePerUnit: data.dosagePerUnit.present
          ? data.dosagePerUnit.value
          : this.dosagePerUnit,
      unit: data.unit.present ? data.unit.value : this.unit,
      nutrientsProvided: data.nutrientsProvided.present
          ? data.nutrientsProvided.value
          : this.nutrientsProvided,
      scheduleTime: data.scheduleTime.present
          ? data.scheduleTime.value
          : this.scheduleTime,
      withFood: data.withFood.present ? data.withFood.value : this.withFood,
      stockCurrent: data.stockCurrent.present
          ? data.stockCurrent.value
          : this.stockCurrent,
      stockWarningAt: data.stockWarningAt.present
          ? data.stockWarningAt.value
          : this.stockWarningAt,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Supplement(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('brand: $brand, ')
          ..write('dosagePerUnit: $dosagePerUnit, ')
          ..write('unit: $unit, ')
          ..write('nutrientsProvided: $nutrientsProvided, ')
          ..write('scheduleTime: $scheduleTime, ')
          ..write('withFood: $withFood, ')
          ..write('stockCurrent: $stockCurrent, ')
          ..write('stockWarningAt: $stockWarningAt, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    brand,
    dosagePerUnit,
    unit,
    nutrientsProvided,
    scheduleTime,
    withFood,
    stockCurrent,
    stockWarningAt,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Supplement &&
          other.id == this.id &&
          other.name == this.name &&
          other.brand == this.brand &&
          other.dosagePerUnit == this.dosagePerUnit &&
          other.unit == this.unit &&
          other.nutrientsProvided == this.nutrientsProvided &&
          other.scheduleTime == this.scheduleTime &&
          other.withFood == this.withFood &&
          other.stockCurrent == this.stockCurrent &&
          other.stockWarningAt == this.stockWarningAt &&
          other.isActive == this.isActive);
}

class SupplementsCompanion extends UpdateCompanion<Supplement> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> brand;
  final Value<double?> dosagePerUnit;
  final Value<String?> unit;
  final Value<String?> nutrientsProvided;
  final Value<String?> scheduleTime;
  final Value<bool> withFood;
  final Value<int?> stockCurrent;
  final Value<int> stockWarningAt;
  final Value<bool> isActive;
  final Value<int> rowid;
  const SupplementsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.brand = const Value.absent(),
    this.dosagePerUnit = const Value.absent(),
    this.unit = const Value.absent(),
    this.nutrientsProvided = const Value.absent(),
    this.scheduleTime = const Value.absent(),
    this.withFood = const Value.absent(),
    this.stockCurrent = const Value.absent(),
    this.stockWarningAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SupplementsCompanion.insert({
    required String id,
    required String name,
    this.brand = const Value.absent(),
    this.dosagePerUnit = const Value.absent(),
    this.unit = const Value.absent(),
    this.nutrientsProvided = const Value.absent(),
    this.scheduleTime = const Value.absent(),
    this.withFood = const Value.absent(),
    this.stockCurrent = const Value.absent(),
    this.stockWarningAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<Supplement> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? brand,
    Expression<double>? dosagePerUnit,
    Expression<String>? unit,
    Expression<String>? nutrientsProvided,
    Expression<String>? scheduleTime,
    Expression<bool>? withFood,
    Expression<int>? stockCurrent,
    Expression<int>? stockWarningAt,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (brand != null) 'brand': brand,
      if (dosagePerUnit != null) 'dosage_per_unit': dosagePerUnit,
      if (unit != null) 'unit': unit,
      if (nutrientsProvided != null) 'nutrients_provided': nutrientsProvided,
      if (scheduleTime != null) 'schedule_time': scheduleTime,
      if (withFood != null) 'with_food': withFood,
      if (stockCurrent != null) 'stock_current': stockCurrent,
      if (stockWarningAt != null) 'stock_warning_at': stockWarningAt,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SupplementsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? brand,
    Value<double?>? dosagePerUnit,
    Value<String?>? unit,
    Value<String?>? nutrientsProvided,
    Value<String?>? scheduleTime,
    Value<bool>? withFood,
    Value<int?>? stockCurrent,
    Value<int>? stockWarningAt,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return SupplementsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      brand: brand ?? this.brand,
      dosagePerUnit: dosagePerUnit ?? this.dosagePerUnit,
      unit: unit ?? this.unit,
      nutrientsProvided: nutrientsProvided ?? this.nutrientsProvided,
      scheduleTime: scheduleTime ?? this.scheduleTime,
      withFood: withFood ?? this.withFood,
      stockCurrent: stockCurrent ?? this.stockCurrent,
      stockWarningAt: stockWarningAt ?? this.stockWarningAt,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (dosagePerUnit.present) {
      map['dosage_per_unit'] = Variable<double>(dosagePerUnit.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (nutrientsProvided.present) {
      map['nutrients_provided'] = Variable<String>(nutrientsProvided.value);
    }
    if (scheduleTime.present) {
      map['schedule_time'] = Variable<String>(scheduleTime.value);
    }
    if (withFood.present) {
      map['with_food'] = Variable<bool>(withFood.value);
    }
    if (stockCurrent.present) {
      map['stock_current'] = Variable<int>(stockCurrent.value);
    }
    if (stockWarningAt.present) {
      map['stock_warning_at'] = Variable<int>(stockWarningAt.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupplementsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('brand: $brand, ')
          ..write('dosagePerUnit: $dosagePerUnit, ')
          ..write('unit: $unit, ')
          ..write('nutrientsProvided: $nutrientsProvided, ')
          ..write('scheduleTime: $scheduleTime, ')
          ..write('withFood: $withFood, ')
          ..write('stockCurrent: $stockCurrent, ')
          ..write('stockWarningAt: $stockWarningAt, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SupplementLogsTable extends SupplementLogs
    with TableInfo<$SupplementLogsTable, SupplementLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SupplementLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _supplementIdMeta = const VerificationMeta(
    'supplementId',
  );
  @override
  late final GeneratedColumn<String> supplementId = GeneratedColumn<String>(
    'supplement_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES supplements (id)',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
    'time',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _takenMeta = const VerificationMeta('taken');
  @override
  late final GeneratedColumn<int> taken = GeneratedColumn<int>(
    'taken',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    supplementId,
    date,
    time,
    taken,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'supplement_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<SupplementLog> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('supplement_id')) {
      context.handle(
        _supplementIdMeta,
        supplementId.isAcceptableOrUnknown(
          data['supplement_id']!,
          _supplementIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_supplementIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    }
    if (data.containsKey('taken')) {
      context.handle(
        _takenMeta,
        taken.isAcceptableOrUnknown(data['taken']!, _takenMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SupplementLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SupplementLog(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      supplementId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}supplement_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time'],
      ),
      taken: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}taken'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $SupplementLogsTable createAlias(String alias) {
    return $SupplementLogsTable(attachedDatabase, alias);
  }
}

class SupplementLog extends DataClass implements Insertable<SupplementLog> {
  final String id;
  final String supplementId;
  final DateTime date;
  final String? time;
  final int taken;
  final String? notes;
  const SupplementLog({
    required this.id,
    required this.supplementId,
    required this.date,
    this.time,
    required this.taken,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['supplement_id'] = Variable<String>(supplementId);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<String>(time);
    }
    map['taken'] = Variable<int>(taken);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  SupplementLogsCompanion toCompanion(bool nullToAbsent) {
    return SupplementLogsCompanion(
      id: Value(id),
      supplementId: Value(supplementId),
      date: Value(date),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      taken: Value(taken),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory SupplementLog.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SupplementLog(
      id: serializer.fromJson<String>(json['id']),
      supplementId: serializer.fromJson<String>(json['supplementId']),
      date: serializer.fromJson<DateTime>(json['date']),
      time: serializer.fromJson<String?>(json['time']),
      taken: serializer.fromJson<int>(json['taken']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'supplementId': serializer.toJson<String>(supplementId),
      'date': serializer.toJson<DateTime>(date),
      'time': serializer.toJson<String?>(time),
      'taken': serializer.toJson<int>(taken),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  SupplementLog copyWith({
    String? id,
    String? supplementId,
    DateTime? date,
    Value<String?> time = const Value.absent(),
    int? taken,
    Value<String?> notes = const Value.absent(),
  }) => SupplementLog(
    id: id ?? this.id,
    supplementId: supplementId ?? this.supplementId,
    date: date ?? this.date,
    time: time.present ? time.value : this.time,
    taken: taken ?? this.taken,
    notes: notes.present ? notes.value : this.notes,
  );
  SupplementLog copyWithCompanion(SupplementLogsCompanion data) {
    return SupplementLog(
      id: data.id.present ? data.id.value : this.id,
      supplementId: data.supplementId.present
          ? data.supplementId.value
          : this.supplementId,
      date: data.date.present ? data.date.value : this.date,
      time: data.time.present ? data.time.value : this.time,
      taken: data.taken.present ? data.taken.value : this.taken,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SupplementLog(')
          ..write('id: $id, ')
          ..write('supplementId: $supplementId, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('taken: $taken, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, supplementId, date, time, taken, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SupplementLog &&
          other.id == this.id &&
          other.supplementId == this.supplementId &&
          other.date == this.date &&
          other.time == this.time &&
          other.taken == this.taken &&
          other.notes == this.notes);
}

class SupplementLogsCompanion extends UpdateCompanion<SupplementLog> {
  final Value<String> id;
  final Value<String> supplementId;
  final Value<DateTime> date;
  final Value<String?> time;
  final Value<int> taken;
  final Value<String?> notes;
  final Value<int> rowid;
  const SupplementLogsCompanion({
    this.id = const Value.absent(),
    this.supplementId = const Value.absent(),
    this.date = const Value.absent(),
    this.time = const Value.absent(),
    this.taken = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SupplementLogsCompanion.insert({
    required String id,
    required String supplementId,
    required DateTime date,
    this.time = const Value.absent(),
    this.taken = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       supplementId = Value(supplementId),
       date = Value(date);
  static Insertable<SupplementLog> custom({
    Expression<String>? id,
    Expression<String>? supplementId,
    Expression<DateTime>? date,
    Expression<String>? time,
    Expression<int>? taken,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (supplementId != null) 'supplement_id': supplementId,
      if (date != null) 'date': date,
      if (time != null) 'time': time,
      if (taken != null) 'taken': taken,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SupplementLogsCompanion copyWith({
    Value<String>? id,
    Value<String>? supplementId,
    Value<DateTime>? date,
    Value<String?>? time,
    Value<int>? taken,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return SupplementLogsCompanion(
      id: id ?? this.id,
      supplementId: supplementId ?? this.supplementId,
      date: date ?? this.date,
      time: time ?? this.time,
      taken: taken ?? this.taken,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (supplementId.present) {
      map['supplement_id'] = Variable<String>(supplementId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (taken.present) {
      map['taken'] = Variable<int>(taken.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SupplementLogsCompanion(')
          ..write('id: $id, ')
          ..write('supplementId: $supplementId, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('taken: $taken, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WorkoutTemplatesTable extends WorkoutTemplates
    with TableInfo<$WorkoutTemplatesTable, WorkoutTemplate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutTemplatesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _exercisesMeta = const VerificationMeta(
    'exercises',
  );
  @override
  late final GeneratedColumn<String> exercises = GeneratedColumn<String>(
    'exercises',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, description, exercises];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout_templates';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkoutTemplate> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('exercises')) {
      context.handle(
        _exercisesMeta,
        exercises.isAcceptableOrUnknown(data['exercises']!, _exercisesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutTemplate map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutTemplate(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      exercises: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}exercises'],
      ),
    );
  }

  @override
  $WorkoutTemplatesTable createAlias(String alias) {
    return $WorkoutTemplatesTable(attachedDatabase, alias);
  }
}

class WorkoutTemplate extends DataClass implements Insertable<WorkoutTemplate> {
  final String id;
  final String name;
  final String? description;
  final String? exercises;
  const WorkoutTemplate({
    required this.id,
    required this.name,
    this.description,
    this.exercises,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || exercises != null) {
      map['exercises'] = Variable<String>(exercises);
    }
    return map;
  }

  WorkoutTemplatesCompanion toCompanion(bool nullToAbsent) {
    return WorkoutTemplatesCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      exercises: exercises == null && nullToAbsent
          ? const Value.absent()
          : Value(exercises),
    );
  }

  factory WorkoutTemplate.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutTemplate(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      exercises: serializer.fromJson<String?>(json['exercises']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'exercises': serializer.toJson<String?>(exercises),
    };
  }

  WorkoutTemplate copyWith({
    String? id,
    String? name,
    Value<String?> description = const Value.absent(),
    Value<String?> exercises = const Value.absent(),
  }) => WorkoutTemplate(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    exercises: exercises.present ? exercises.value : this.exercises,
  );
  WorkoutTemplate copyWithCompanion(WorkoutTemplatesCompanion data) {
    return WorkoutTemplate(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      exercises: data.exercises.present ? data.exercises.value : this.exercises,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutTemplate(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('exercises: $exercises')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, exercises);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutTemplate &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.exercises == this.exercises);
}

class WorkoutTemplatesCompanion extends UpdateCompanion<WorkoutTemplate> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<String?> exercises;
  final Value<int> rowid;
  const WorkoutTemplatesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.exercises = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorkoutTemplatesCompanion.insert({
    required String id,
    required String name,
    this.description = const Value.absent(),
    this.exercises = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<WorkoutTemplate> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? exercises,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (exercises != null) 'exercises': exercises,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorkoutTemplatesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? description,
    Value<String?>? exercises,
    Value<int>? rowid,
  }) {
    return WorkoutTemplatesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      exercises: exercises ?? this.exercises,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (exercises.present) {
      map['exercises'] = Variable<String>(exercises.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutTemplatesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('exercises: $exercises, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WorkoutsTable extends Workouts with TableInfo<$WorkoutsTable, Workout> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _templateIdMeta = const VerificationMeta(
    'templateId',
  );
  @override
  late final GeneratedColumn<String> templateId = GeneratedColumn<String>(
    'template_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES workout_templates (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _durationMinMeta = const VerificationMeta(
    'durationMin',
  );
  @override
  late final GeneratedColumn<int> durationMin = GeneratedColumn<int>(
    'duration_min',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _caloriesEstMeta = const VerificationMeta(
    'caloriesEst',
  );
  @override
  late final GeneratedColumn<double> caloriesEst = GeneratedColumn<double>(
    'calories_est',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rpeAvgMeta = const VerificationMeta('rpeAvg');
  @override
  late final GeneratedColumn<double> rpeAvg = GeneratedColumn<double>(
    'rpe_avg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    templateId,
    name,
    durationMin,
    caloriesEst,
    rpeAvg,
    notes,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workouts';
  @override
  VerificationContext validateIntegrity(
    Insertable<Workout> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('template_id')) {
      context.handle(
        _templateIdMeta,
        templateId.isAcceptableOrUnknown(data['template_id']!, _templateIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('duration_min')) {
      context.handle(
        _durationMinMeta,
        durationMin.isAcceptableOrUnknown(
          data['duration_min']!,
          _durationMinMeta,
        ),
      );
    }
    if (data.containsKey('calories_est')) {
      context.handle(
        _caloriesEstMeta,
        caloriesEst.isAcceptableOrUnknown(
          data['calories_est']!,
          _caloriesEstMeta,
        ),
      );
    }
    if (data.containsKey('rpe_avg')) {
      context.handle(
        _rpeAvgMeta,
        rpeAvg.isAcceptableOrUnknown(data['rpe_avg']!, _rpeAvgMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Workout map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Workout(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      templateId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}template_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      durationMin: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_min'],
      ),
      caloriesEst: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}calories_est'],
      ),
      rpeAvg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rpe_avg'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $WorkoutsTable createAlias(String alias) {
    return $WorkoutsTable(attachedDatabase, alias);
  }
}

class Workout extends DataClass implements Insertable<Workout> {
  final String id;
  final DateTime date;
  final String? templateId;
  final String? name;
  final int? durationMin;
  final double? caloriesEst;
  final double? rpeAvg;
  final String? notes;
  final DateTime createdAt;
  const Workout({
    required this.id,
    required this.date,
    this.templateId,
    this.name,
    this.durationMin,
    this.caloriesEst,
    this.rpeAvg,
    this.notes,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || templateId != null) {
      map['template_id'] = Variable<String>(templateId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || durationMin != null) {
      map['duration_min'] = Variable<int>(durationMin);
    }
    if (!nullToAbsent || caloriesEst != null) {
      map['calories_est'] = Variable<double>(caloriesEst);
    }
    if (!nullToAbsent || rpeAvg != null) {
      map['rpe_avg'] = Variable<double>(rpeAvg);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  WorkoutsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutsCompanion(
      id: Value(id),
      date: Value(date),
      templateId: templateId == null && nullToAbsent
          ? const Value.absent()
          : Value(templateId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      durationMin: durationMin == null && nullToAbsent
          ? const Value.absent()
          : Value(durationMin),
      caloriesEst: caloriesEst == null && nullToAbsent
          ? const Value.absent()
          : Value(caloriesEst),
      rpeAvg: rpeAvg == null && nullToAbsent
          ? const Value.absent()
          : Value(rpeAvg),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      createdAt: Value(createdAt),
    );
  }

  factory Workout.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Workout(
      id: serializer.fromJson<String>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      templateId: serializer.fromJson<String?>(json['templateId']),
      name: serializer.fromJson<String?>(json['name']),
      durationMin: serializer.fromJson<int?>(json['durationMin']),
      caloriesEst: serializer.fromJson<double?>(json['caloriesEst']),
      rpeAvg: serializer.fromJson<double?>(json['rpeAvg']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'date': serializer.toJson<DateTime>(date),
      'templateId': serializer.toJson<String?>(templateId),
      'name': serializer.toJson<String?>(name),
      'durationMin': serializer.toJson<int?>(durationMin),
      'caloriesEst': serializer.toJson<double?>(caloriesEst),
      'rpeAvg': serializer.toJson<double?>(rpeAvg),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Workout copyWith({
    String? id,
    DateTime? date,
    Value<String?> templateId = const Value.absent(),
    Value<String?> name = const Value.absent(),
    Value<int?> durationMin = const Value.absent(),
    Value<double?> caloriesEst = const Value.absent(),
    Value<double?> rpeAvg = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    DateTime? createdAt,
  }) => Workout(
    id: id ?? this.id,
    date: date ?? this.date,
    templateId: templateId.present ? templateId.value : this.templateId,
    name: name.present ? name.value : this.name,
    durationMin: durationMin.present ? durationMin.value : this.durationMin,
    caloriesEst: caloriesEst.present ? caloriesEst.value : this.caloriesEst,
    rpeAvg: rpeAvg.present ? rpeAvg.value : this.rpeAvg,
    notes: notes.present ? notes.value : this.notes,
    createdAt: createdAt ?? this.createdAt,
  );
  Workout copyWithCompanion(WorkoutsCompanion data) {
    return Workout(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      templateId: data.templateId.present
          ? data.templateId.value
          : this.templateId,
      name: data.name.present ? data.name.value : this.name,
      durationMin: data.durationMin.present
          ? data.durationMin.value
          : this.durationMin,
      caloriesEst: data.caloriesEst.present
          ? data.caloriesEst.value
          : this.caloriesEst,
      rpeAvg: data.rpeAvg.present ? data.rpeAvg.value : this.rpeAvg,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Workout(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('templateId: $templateId, ')
          ..write('name: $name, ')
          ..write('durationMin: $durationMin, ')
          ..write('caloriesEst: $caloriesEst, ')
          ..write('rpeAvg: $rpeAvg, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    date,
    templateId,
    name,
    durationMin,
    caloriesEst,
    rpeAvg,
    notes,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Workout &&
          other.id == this.id &&
          other.date == this.date &&
          other.templateId == this.templateId &&
          other.name == this.name &&
          other.durationMin == this.durationMin &&
          other.caloriesEst == this.caloriesEst &&
          other.rpeAvg == this.rpeAvg &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt);
}

class WorkoutsCompanion extends UpdateCompanion<Workout> {
  final Value<String> id;
  final Value<DateTime> date;
  final Value<String?> templateId;
  final Value<String?> name;
  final Value<int?> durationMin;
  final Value<double?> caloriesEst;
  final Value<double?> rpeAvg;
  final Value<String?> notes;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const WorkoutsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.templateId = const Value.absent(),
    this.name = const Value.absent(),
    this.durationMin = const Value.absent(),
    this.caloriesEst = const Value.absent(),
    this.rpeAvg = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorkoutsCompanion.insert({
    required String id,
    required DateTime date,
    this.templateId = const Value.absent(),
    this.name = const Value.absent(),
    this.durationMin = const Value.absent(),
    this.caloriesEst = const Value.absent(),
    this.rpeAvg = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       date = Value(date);
  static Insertable<Workout> custom({
    Expression<String>? id,
    Expression<DateTime>? date,
    Expression<String>? templateId,
    Expression<String>? name,
    Expression<int>? durationMin,
    Expression<double>? caloriesEst,
    Expression<double>? rpeAvg,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (templateId != null) 'template_id': templateId,
      if (name != null) 'name': name,
      if (durationMin != null) 'duration_min': durationMin,
      if (caloriesEst != null) 'calories_est': caloriesEst,
      if (rpeAvg != null) 'rpe_avg': rpeAvg,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorkoutsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? date,
    Value<String?>? templateId,
    Value<String?>? name,
    Value<int?>? durationMin,
    Value<double?>? caloriesEst,
    Value<double?>? rpeAvg,
    Value<String?>? notes,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return WorkoutsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      durationMin: durationMin ?? this.durationMin,
      caloriesEst: caloriesEst ?? this.caloriesEst,
      rpeAvg: rpeAvg ?? this.rpeAvg,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (templateId.present) {
      map['template_id'] = Variable<String>(templateId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (durationMin.present) {
      map['duration_min'] = Variable<int>(durationMin.value);
    }
    if (caloriesEst.present) {
      map['calories_est'] = Variable<double>(caloriesEst.value);
    }
    if (rpeAvg.present) {
      map['rpe_avg'] = Variable<double>(rpeAvg.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('templateId: $templateId, ')
          ..write('name: $name, ')
          ..write('durationMin: $durationMin, ')
          ..write('caloriesEst: $caloriesEst, ')
          ..write('rpeAvg: $rpeAvg, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, Exercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExercisesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _primaryMusclesMeta = const VerificationMeta(
    'primaryMuscles',
  );
  @override
  late final GeneratedColumn<String> primaryMuscles = GeneratedColumn<String>(
    'primary_muscles',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _secondaryMusclesMeta = const VerificationMeta(
    'secondaryMuscles',
  );
  @override
  late final GeneratedColumn<String> secondaryMuscles = GeneratedColumn<String>(
    'secondary_muscles',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _equipmentMeta = const VerificationMeta(
    'equipment',
  );
  @override
  late final GeneratedColumn<String> equipment = GeneratedColumn<String>(
    'equipment',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _metValueMeta = const VerificationMeta(
    'metValue',
  );
  @override
  late final GeneratedColumn<double> metValue = GeneratedColumn<double>(
    'met_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isCustomMeta = const VerificationMeta(
    'isCustom',
  );
  @override
  late final GeneratedColumn<bool> isCustom = GeneratedColumn<bool>(
    'is_custom',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_custom" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    category,
    primaryMuscles,
    secondaryMuscles,
    equipment,
    metValue,
    description,
    isCustom,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercises';
  @override
  VerificationContext validateIntegrity(
    Insertable<Exercise> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('primary_muscles')) {
      context.handle(
        _primaryMusclesMeta,
        primaryMuscles.isAcceptableOrUnknown(
          data['primary_muscles']!,
          _primaryMusclesMeta,
        ),
      );
    }
    if (data.containsKey('secondary_muscles')) {
      context.handle(
        _secondaryMusclesMeta,
        secondaryMuscles.isAcceptableOrUnknown(
          data['secondary_muscles']!,
          _secondaryMusclesMeta,
        ),
      );
    }
    if (data.containsKey('equipment')) {
      context.handle(
        _equipmentMeta,
        equipment.isAcceptableOrUnknown(data['equipment']!, _equipmentMeta),
      );
    }
    if (data.containsKey('met_value')) {
      context.handle(
        _metValueMeta,
        metValue.isAcceptableOrUnknown(data['met_value']!, _metValueMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('is_custom')) {
      context.handle(
        _isCustomMeta,
        isCustom.isAcceptableOrUnknown(data['is_custom']!, _isCustomMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Exercise(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
      primaryMuscles: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}primary_muscles'],
      ),
      secondaryMuscles: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}secondary_muscles'],
      ),
      equipment: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}equipment'],
      ),
      metValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}met_value'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      isCustom: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_custom'],
      )!,
    );
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }
}

class Exercise extends DataClass implements Insertable<Exercise> {
  final String id;
  final String name;
  final String? category;
  final String? primaryMuscles;
  final String? secondaryMuscles;
  final String? equipment;
  final double? metValue;
  final String? description;
  final bool isCustom;
  const Exercise({
    required this.id,
    required this.name,
    this.category,
    this.primaryMuscles,
    this.secondaryMuscles,
    this.equipment,
    this.metValue,
    this.description,
    required this.isCustom,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || primaryMuscles != null) {
      map['primary_muscles'] = Variable<String>(primaryMuscles);
    }
    if (!nullToAbsent || secondaryMuscles != null) {
      map['secondary_muscles'] = Variable<String>(secondaryMuscles);
    }
    if (!nullToAbsent || equipment != null) {
      map['equipment'] = Variable<String>(equipment);
    }
    if (!nullToAbsent || metValue != null) {
      map['met_value'] = Variable<double>(metValue);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['is_custom'] = Variable<bool>(isCustom);
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      id: Value(id),
      name: Value(name),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      primaryMuscles: primaryMuscles == null && nullToAbsent
          ? const Value.absent()
          : Value(primaryMuscles),
      secondaryMuscles: secondaryMuscles == null && nullToAbsent
          ? const Value.absent()
          : Value(secondaryMuscles),
      equipment: equipment == null && nullToAbsent
          ? const Value.absent()
          : Value(equipment),
      metValue: metValue == null && nullToAbsent
          ? const Value.absent()
          : Value(metValue),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isCustom: Value(isCustom),
    );
  }

  factory Exercise.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exercise(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      category: serializer.fromJson<String?>(json['category']),
      primaryMuscles: serializer.fromJson<String?>(json['primaryMuscles']),
      secondaryMuscles: serializer.fromJson<String?>(json['secondaryMuscles']),
      equipment: serializer.fromJson<String?>(json['equipment']),
      metValue: serializer.fromJson<double?>(json['metValue']),
      description: serializer.fromJson<String?>(json['description']),
      isCustom: serializer.fromJson<bool>(json['isCustom']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'category': serializer.toJson<String?>(category),
      'primaryMuscles': serializer.toJson<String?>(primaryMuscles),
      'secondaryMuscles': serializer.toJson<String?>(secondaryMuscles),
      'equipment': serializer.toJson<String?>(equipment),
      'metValue': serializer.toJson<double?>(metValue),
      'description': serializer.toJson<String?>(description),
      'isCustom': serializer.toJson<bool>(isCustom),
    };
  }

  Exercise copyWith({
    String? id,
    String? name,
    Value<String?> category = const Value.absent(),
    Value<String?> primaryMuscles = const Value.absent(),
    Value<String?> secondaryMuscles = const Value.absent(),
    Value<String?> equipment = const Value.absent(),
    Value<double?> metValue = const Value.absent(),
    Value<String?> description = const Value.absent(),
    bool? isCustom,
  }) => Exercise(
    id: id ?? this.id,
    name: name ?? this.name,
    category: category.present ? category.value : this.category,
    primaryMuscles: primaryMuscles.present
        ? primaryMuscles.value
        : this.primaryMuscles,
    secondaryMuscles: secondaryMuscles.present
        ? secondaryMuscles.value
        : this.secondaryMuscles,
    equipment: equipment.present ? equipment.value : this.equipment,
    metValue: metValue.present ? metValue.value : this.metValue,
    description: description.present ? description.value : this.description,
    isCustom: isCustom ?? this.isCustom,
  );
  Exercise copyWithCompanion(ExercisesCompanion data) {
    return Exercise(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      category: data.category.present ? data.category.value : this.category,
      primaryMuscles: data.primaryMuscles.present
          ? data.primaryMuscles.value
          : this.primaryMuscles,
      secondaryMuscles: data.secondaryMuscles.present
          ? data.secondaryMuscles.value
          : this.secondaryMuscles,
      equipment: data.equipment.present ? data.equipment.value : this.equipment,
      metValue: data.metValue.present ? data.metValue.value : this.metValue,
      description: data.description.present
          ? data.description.value
          : this.description,
      isCustom: data.isCustom.present ? data.isCustom.value : this.isCustom,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category, ')
          ..write('primaryMuscles: $primaryMuscles, ')
          ..write('secondaryMuscles: $secondaryMuscles, ')
          ..write('equipment: $equipment, ')
          ..write('metValue: $metValue, ')
          ..write('description: $description, ')
          ..write('isCustom: $isCustom')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    category,
    primaryMuscles,
    secondaryMuscles,
    equipment,
    metValue,
    description,
    isCustom,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.id == this.id &&
          other.name == this.name &&
          other.category == this.category &&
          other.primaryMuscles == this.primaryMuscles &&
          other.secondaryMuscles == this.secondaryMuscles &&
          other.equipment == this.equipment &&
          other.metValue == this.metValue &&
          other.description == this.description &&
          other.isCustom == this.isCustom);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> category;
  final Value<String?> primaryMuscles;
  final Value<String?> secondaryMuscles;
  final Value<String?> equipment;
  final Value<double?> metValue;
  final Value<String?> description;
  final Value<bool> isCustom;
  final Value<int> rowid;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.category = const Value.absent(),
    this.primaryMuscles = const Value.absent(),
    this.secondaryMuscles = const Value.absent(),
    this.equipment = const Value.absent(),
    this.metValue = const Value.absent(),
    this.description = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExercisesCompanion.insert({
    required String id,
    required String name,
    this.category = const Value.absent(),
    this.primaryMuscles = const Value.absent(),
    this.secondaryMuscles = const Value.absent(),
    this.equipment = const Value.absent(),
    this.metValue = const Value.absent(),
    this.description = const Value.absent(),
    this.isCustom = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<Exercise> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? category,
    Expression<String>? primaryMuscles,
    Expression<String>? secondaryMuscles,
    Expression<String>? equipment,
    Expression<double>? metValue,
    Expression<String>? description,
    Expression<bool>? isCustom,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (category != null) 'category': category,
      if (primaryMuscles != null) 'primary_muscles': primaryMuscles,
      if (secondaryMuscles != null) 'secondary_muscles': secondaryMuscles,
      if (equipment != null) 'equipment': equipment,
      if (metValue != null) 'met_value': metValue,
      if (description != null) 'description': description,
      if (isCustom != null) 'is_custom': isCustom,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExercisesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? category,
    Value<String?>? primaryMuscles,
    Value<String?>? secondaryMuscles,
    Value<String?>? equipment,
    Value<double?>? metValue,
    Value<String?>? description,
    Value<bool>? isCustom,
    Value<int>? rowid,
  }) {
    return ExercisesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      primaryMuscles: primaryMuscles ?? this.primaryMuscles,
      secondaryMuscles: secondaryMuscles ?? this.secondaryMuscles,
      equipment: equipment ?? this.equipment,
      metValue: metValue ?? this.metValue,
      description: description ?? this.description,
      isCustom: isCustom ?? this.isCustom,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (primaryMuscles.present) {
      map['primary_muscles'] = Variable<String>(primaryMuscles.value);
    }
    if (secondaryMuscles.present) {
      map['secondary_muscles'] = Variable<String>(secondaryMuscles.value);
    }
    if (equipment.present) {
      map['equipment'] = Variable<String>(equipment.value);
    }
    if (metValue.present) {
      map['met_value'] = Variable<double>(metValue.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isCustom.present) {
      map['is_custom'] = Variable<bool>(isCustom.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('category: $category, ')
          ..write('primaryMuscles: $primaryMuscles, ')
          ..write('secondaryMuscles: $secondaryMuscles, ')
          ..write('equipment: $equipment, ')
          ..write('metValue: $metValue, ')
          ..write('description: $description, ')
          ..write('isCustom: $isCustom, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WorkoutSetsTable extends WorkoutSets
    with TableInfo<$WorkoutSetsTable, WorkoutSet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutSetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _workoutIdMeta = const VerificationMeta(
    'workoutId',
  );
  @override
  late final GeneratedColumn<String> workoutId = GeneratedColumn<String>(
    'workout_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES workouts (id)',
    ),
  );
  static const VerificationMeta _exerciseIdMeta = const VerificationMeta(
    'exerciseId',
  );
  @override
  late final GeneratedColumn<String> exerciseId = GeneratedColumn<String>(
    'exercise_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES exercises (id)',
    ),
  );
  static const VerificationMeta _setNumberMeta = const VerificationMeta(
    'setNumber',
  );
  @override
  late final GeneratedColumn<int> setNumber = GeneratedColumn<int>(
    'set_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _repsMeta = const VerificationMeta('reps');
  @override
  late final GeneratedColumn<int> reps = GeneratedColumn<int>(
    'reps',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weightKgMeta = const VerificationMeta(
    'weightKg',
  );
  @override
  late final GeneratedColumn<double> weightKg = GeneratedColumn<double>(
    'weight_kg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _rpeMeta = const VerificationMeta('rpe');
  @override
  late final GeneratedColumn<double> rpe = GeneratedColumn<double>(
    'rpe',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isWarmupMeta = const VerificationMeta(
    'isWarmup',
  );
  @override
  late final GeneratedColumn<bool> isWarmup = GeneratedColumn<bool>(
    'is_warmup',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_warmup" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    workoutId,
    exerciseId,
    setNumber,
    reps,
    weightKg,
    rpe,
    isWarmup,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout_sets';
  @override
  VerificationContext validateIntegrity(
    Insertable<WorkoutSet> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('workout_id')) {
      context.handle(
        _workoutIdMeta,
        workoutId.isAcceptableOrUnknown(data['workout_id']!, _workoutIdMeta),
      );
    } else if (isInserting) {
      context.missing(_workoutIdMeta);
    }
    if (data.containsKey('exercise_id')) {
      context.handle(
        _exerciseIdMeta,
        exerciseId.isAcceptableOrUnknown(data['exercise_id']!, _exerciseIdMeta),
      );
    } else if (isInserting) {
      context.missing(_exerciseIdMeta);
    }
    if (data.containsKey('set_number')) {
      context.handle(
        _setNumberMeta,
        setNumber.isAcceptableOrUnknown(data['set_number']!, _setNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_setNumberMeta);
    }
    if (data.containsKey('reps')) {
      context.handle(
        _repsMeta,
        reps.isAcceptableOrUnknown(data['reps']!, _repsMeta),
      );
    }
    if (data.containsKey('weight_kg')) {
      context.handle(
        _weightKgMeta,
        weightKg.isAcceptableOrUnknown(data['weight_kg']!, _weightKgMeta),
      );
    }
    if (data.containsKey('rpe')) {
      context.handle(
        _rpeMeta,
        rpe.isAcceptableOrUnknown(data['rpe']!, _rpeMeta),
      );
    }
    if (data.containsKey('is_warmup')) {
      context.handle(
        _isWarmupMeta,
        isWarmup.isAcceptableOrUnknown(data['is_warmup']!, _isWarmupMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutSet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutSet(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      workoutId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}workout_id'],
      )!,
      exerciseId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}exercise_id'],
      )!,
      setNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}set_number'],
      )!,
      reps: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}reps'],
      ),
      weightKg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight_kg'],
      ),
      rpe: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rpe'],
      ),
      isWarmup: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_warmup'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $WorkoutSetsTable createAlias(String alias) {
    return $WorkoutSetsTable(attachedDatabase, alias);
  }
}

class WorkoutSet extends DataClass implements Insertable<WorkoutSet> {
  final String id;
  final String workoutId;
  final String exerciseId;
  final int setNumber;
  final int? reps;
  final double? weightKg;
  final double? rpe;
  final bool isWarmup;
  final String? notes;
  const WorkoutSet({
    required this.id,
    required this.workoutId,
    required this.exerciseId,
    required this.setNumber,
    this.reps,
    this.weightKg,
    this.rpe,
    required this.isWarmup,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['workout_id'] = Variable<String>(workoutId);
    map['exercise_id'] = Variable<String>(exerciseId);
    map['set_number'] = Variable<int>(setNumber);
    if (!nullToAbsent || reps != null) {
      map['reps'] = Variable<int>(reps);
    }
    if (!nullToAbsent || weightKg != null) {
      map['weight_kg'] = Variable<double>(weightKg);
    }
    if (!nullToAbsent || rpe != null) {
      map['rpe'] = Variable<double>(rpe);
    }
    map['is_warmup'] = Variable<bool>(isWarmup);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  WorkoutSetsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutSetsCompanion(
      id: Value(id),
      workoutId: Value(workoutId),
      exerciseId: Value(exerciseId),
      setNumber: Value(setNumber),
      reps: reps == null && nullToAbsent ? const Value.absent() : Value(reps),
      weightKg: weightKg == null && nullToAbsent
          ? const Value.absent()
          : Value(weightKg),
      rpe: rpe == null && nullToAbsent ? const Value.absent() : Value(rpe),
      isWarmup: Value(isWarmup),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory WorkoutSet.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutSet(
      id: serializer.fromJson<String>(json['id']),
      workoutId: serializer.fromJson<String>(json['workoutId']),
      exerciseId: serializer.fromJson<String>(json['exerciseId']),
      setNumber: serializer.fromJson<int>(json['setNumber']),
      reps: serializer.fromJson<int?>(json['reps']),
      weightKg: serializer.fromJson<double?>(json['weightKg']),
      rpe: serializer.fromJson<double?>(json['rpe']),
      isWarmup: serializer.fromJson<bool>(json['isWarmup']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'workoutId': serializer.toJson<String>(workoutId),
      'exerciseId': serializer.toJson<String>(exerciseId),
      'setNumber': serializer.toJson<int>(setNumber),
      'reps': serializer.toJson<int?>(reps),
      'weightKg': serializer.toJson<double?>(weightKg),
      'rpe': serializer.toJson<double?>(rpe),
      'isWarmup': serializer.toJson<bool>(isWarmup),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  WorkoutSet copyWith({
    String? id,
    String? workoutId,
    String? exerciseId,
    int? setNumber,
    Value<int?> reps = const Value.absent(),
    Value<double?> weightKg = const Value.absent(),
    Value<double?> rpe = const Value.absent(),
    bool? isWarmup,
    Value<String?> notes = const Value.absent(),
  }) => WorkoutSet(
    id: id ?? this.id,
    workoutId: workoutId ?? this.workoutId,
    exerciseId: exerciseId ?? this.exerciseId,
    setNumber: setNumber ?? this.setNumber,
    reps: reps.present ? reps.value : this.reps,
    weightKg: weightKg.present ? weightKg.value : this.weightKg,
    rpe: rpe.present ? rpe.value : this.rpe,
    isWarmup: isWarmup ?? this.isWarmup,
    notes: notes.present ? notes.value : this.notes,
  );
  WorkoutSet copyWithCompanion(WorkoutSetsCompanion data) {
    return WorkoutSet(
      id: data.id.present ? data.id.value : this.id,
      workoutId: data.workoutId.present ? data.workoutId.value : this.workoutId,
      exerciseId: data.exerciseId.present
          ? data.exerciseId.value
          : this.exerciseId,
      setNumber: data.setNumber.present ? data.setNumber.value : this.setNumber,
      reps: data.reps.present ? data.reps.value : this.reps,
      weightKg: data.weightKg.present ? data.weightKg.value : this.weightKg,
      rpe: data.rpe.present ? data.rpe.value : this.rpe,
      isWarmup: data.isWarmup.present ? data.isWarmup.value : this.isWarmup,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutSet(')
          ..write('id: $id, ')
          ..write('workoutId: $workoutId, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('setNumber: $setNumber, ')
          ..write('reps: $reps, ')
          ..write('weightKg: $weightKg, ')
          ..write('rpe: $rpe, ')
          ..write('isWarmup: $isWarmup, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    workoutId,
    exerciseId,
    setNumber,
    reps,
    weightKg,
    rpe,
    isWarmup,
    notes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutSet &&
          other.id == this.id &&
          other.workoutId == this.workoutId &&
          other.exerciseId == this.exerciseId &&
          other.setNumber == this.setNumber &&
          other.reps == this.reps &&
          other.weightKg == this.weightKg &&
          other.rpe == this.rpe &&
          other.isWarmup == this.isWarmup &&
          other.notes == this.notes);
}

class WorkoutSetsCompanion extends UpdateCompanion<WorkoutSet> {
  final Value<String> id;
  final Value<String> workoutId;
  final Value<String> exerciseId;
  final Value<int> setNumber;
  final Value<int?> reps;
  final Value<double?> weightKg;
  final Value<double?> rpe;
  final Value<bool> isWarmup;
  final Value<String?> notes;
  final Value<int> rowid;
  const WorkoutSetsCompanion({
    this.id = const Value.absent(),
    this.workoutId = const Value.absent(),
    this.exerciseId = const Value.absent(),
    this.setNumber = const Value.absent(),
    this.reps = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.rpe = const Value.absent(),
    this.isWarmup = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorkoutSetsCompanion.insert({
    required String id,
    required String workoutId,
    required String exerciseId,
    required int setNumber,
    this.reps = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.rpe = const Value.absent(),
    this.isWarmup = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       workoutId = Value(workoutId),
       exerciseId = Value(exerciseId),
       setNumber = Value(setNumber);
  static Insertable<WorkoutSet> custom({
    Expression<String>? id,
    Expression<String>? workoutId,
    Expression<String>? exerciseId,
    Expression<int>? setNumber,
    Expression<int>? reps,
    Expression<double>? weightKg,
    Expression<double>? rpe,
    Expression<bool>? isWarmup,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (workoutId != null) 'workout_id': workoutId,
      if (exerciseId != null) 'exercise_id': exerciseId,
      if (setNumber != null) 'set_number': setNumber,
      if (reps != null) 'reps': reps,
      if (weightKg != null) 'weight_kg': weightKg,
      if (rpe != null) 'rpe': rpe,
      if (isWarmup != null) 'is_warmup': isWarmup,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorkoutSetsCompanion copyWith({
    Value<String>? id,
    Value<String>? workoutId,
    Value<String>? exerciseId,
    Value<int>? setNumber,
    Value<int?>? reps,
    Value<double?>? weightKg,
    Value<double?>? rpe,
    Value<bool>? isWarmup,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return WorkoutSetsCompanion(
      id: id ?? this.id,
      workoutId: workoutId ?? this.workoutId,
      exerciseId: exerciseId ?? this.exerciseId,
      setNumber: setNumber ?? this.setNumber,
      reps: reps ?? this.reps,
      weightKg: weightKg ?? this.weightKg,
      rpe: rpe ?? this.rpe,
      isWarmup: isWarmup ?? this.isWarmup,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (workoutId.present) {
      map['workout_id'] = Variable<String>(workoutId.value);
    }
    if (exerciseId.present) {
      map['exercise_id'] = Variable<String>(exerciseId.value);
    }
    if (setNumber.present) {
      map['set_number'] = Variable<int>(setNumber.value);
    }
    if (reps.present) {
      map['reps'] = Variable<int>(reps.value);
    }
    if (weightKg.present) {
      map['weight_kg'] = Variable<double>(weightKg.value);
    }
    if (rpe.present) {
      map['rpe'] = Variable<double>(rpe.value);
    }
    if (isWarmup.present) {
      map['is_warmup'] = Variable<bool>(isWarmup.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutSetsCompanion(')
          ..write('id: $id, ')
          ..write('workoutId: $workoutId, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('setNumber: $setNumber, ')
          ..write('reps: $reps, ')
          ..write('weightKg: $weightKg, ')
          ..write('rpe: $rpe, ')
          ..write('isWarmup: $isWarmup, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HabitsTable extends Habits with TableInfo<$HabitsTable, Habit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetTypeMeta = const VerificationMeta(
    'targetType',
  );
  @override
  late final GeneratedColumn<String> targetType = GeneratedColumn<String>(
    'target_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetValueMeta = const VerificationMeta(
    'targetValue',
  );
  @override
  late final GeneratedColumn<double> targetValue = GeneratedColumn<double>(
    'target_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _startDateMeta = const VerificationMeta(
    'startDate',
  );
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
    'start_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _moneySavedPerDayMeta = const VerificationMeta(
    'moneySavedPerDay',
  );
  @override
  late final GeneratedColumn<double> moneySavedPerDay = GeneratedColumn<double>(
    'money_saved_per_day',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    type,
    targetType,
    targetValue,
    unit,
    startDate,
    moneySavedPerDay,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habits';
  @override
  VerificationContext validateIntegrity(
    Insertable<Habit> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('target_type')) {
      context.handle(
        _targetTypeMeta,
        targetType.isAcceptableOrUnknown(data['target_type']!, _targetTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_targetTypeMeta);
    }
    if (data.containsKey('target_value')) {
      context.handle(
        _targetValueMeta,
        targetValue.isAcceptableOrUnknown(
          data['target_value']!,
          _targetValueMeta,
        ),
      );
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    }
    if (data.containsKey('start_date')) {
      context.handle(
        _startDateMeta,
        startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta),
      );
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('money_saved_per_day')) {
      context.handle(
        _moneySavedPerDayMeta,
        moneySavedPerDay.isAcceptableOrUnknown(
          data['money_saved_per_day']!,
          _moneySavedPerDayMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Habit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Habit(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      targetType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}target_type'],
      )!,
      targetValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_value'],
      ),
      unit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit'],
      ),
      startDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_date'],
      )!,
      moneySavedPerDay: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}money_saved_per_day'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $HabitsTable createAlias(String alias) {
    return $HabitsTable(attachedDatabase, alias);
  }
}

class Habit extends DataClass implements Insertable<Habit> {
  final String id;
  final String name;
  final String type;
  final String targetType;
  final double? targetValue;
  final String? unit;
  final DateTime startDate;
  final double? moneySavedPerDay;
  final bool isActive;
  const Habit({
    required this.id,
    required this.name,
    required this.type,
    required this.targetType,
    this.targetValue,
    this.unit,
    required this.startDate,
    this.moneySavedPerDay,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['target_type'] = Variable<String>(targetType);
    if (!nullToAbsent || targetValue != null) {
      map['target_value'] = Variable<double>(targetValue);
    }
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || moneySavedPerDay != null) {
      map['money_saved_per_day'] = Variable<double>(moneySavedPerDay);
    }
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  HabitsCompanion toCompanion(bool nullToAbsent) {
    return HabitsCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      targetType: Value(targetType),
      targetValue: targetValue == null && nullToAbsent
          ? const Value.absent()
          : Value(targetValue),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      startDate: Value(startDate),
      moneySavedPerDay: moneySavedPerDay == null && nullToAbsent
          ? const Value.absent()
          : Value(moneySavedPerDay),
      isActive: Value(isActive),
    );
  }

  factory Habit.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Habit(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      targetType: serializer.fromJson<String>(json['targetType']),
      targetValue: serializer.fromJson<double?>(json['targetValue']),
      unit: serializer.fromJson<String?>(json['unit']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      moneySavedPerDay: serializer.fromJson<double?>(json['moneySavedPerDay']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'targetType': serializer.toJson<String>(targetType),
      'targetValue': serializer.toJson<double?>(targetValue),
      'unit': serializer.toJson<String?>(unit),
      'startDate': serializer.toJson<DateTime>(startDate),
      'moneySavedPerDay': serializer.toJson<double?>(moneySavedPerDay),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  Habit copyWith({
    String? id,
    String? name,
    String? type,
    String? targetType,
    Value<double?> targetValue = const Value.absent(),
    Value<String?> unit = const Value.absent(),
    DateTime? startDate,
    Value<double?> moneySavedPerDay = const Value.absent(),
    bool? isActive,
  }) => Habit(
    id: id ?? this.id,
    name: name ?? this.name,
    type: type ?? this.type,
    targetType: targetType ?? this.targetType,
    targetValue: targetValue.present ? targetValue.value : this.targetValue,
    unit: unit.present ? unit.value : this.unit,
    startDate: startDate ?? this.startDate,
    moneySavedPerDay: moneySavedPerDay.present
        ? moneySavedPerDay.value
        : this.moneySavedPerDay,
    isActive: isActive ?? this.isActive,
  );
  Habit copyWithCompanion(HabitsCompanion data) {
    return Habit(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      targetType: data.targetType.present
          ? data.targetType.value
          : this.targetType,
      targetValue: data.targetValue.present
          ? data.targetValue.value
          : this.targetValue,
      unit: data.unit.present ? data.unit.value : this.unit,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      moneySavedPerDay: data.moneySavedPerDay.present
          ? data.moneySavedPerDay.value
          : this.moneySavedPerDay,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Habit(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('targetType: $targetType, ')
          ..write('targetValue: $targetValue, ')
          ..write('unit: $unit, ')
          ..write('startDate: $startDate, ')
          ..write('moneySavedPerDay: $moneySavedPerDay, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    type,
    targetType,
    targetValue,
    unit,
    startDate,
    moneySavedPerDay,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Habit &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.targetType == this.targetType &&
          other.targetValue == this.targetValue &&
          other.unit == this.unit &&
          other.startDate == this.startDate &&
          other.moneySavedPerDay == this.moneySavedPerDay &&
          other.isActive == this.isActive);
}

class HabitsCompanion extends UpdateCompanion<Habit> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> type;
  final Value<String> targetType;
  final Value<double?> targetValue;
  final Value<String?> unit;
  final Value<DateTime> startDate;
  final Value<double?> moneySavedPerDay;
  final Value<bool> isActive;
  final Value<int> rowid;
  const HabitsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.targetType = const Value.absent(),
    this.targetValue = const Value.absent(),
    this.unit = const Value.absent(),
    this.startDate = const Value.absent(),
    this.moneySavedPerDay = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HabitsCompanion.insert({
    required String id,
    required String name,
    required String type,
    required String targetType,
    this.targetValue = const Value.absent(),
    this.unit = const Value.absent(),
    required DateTime startDate,
    this.moneySavedPerDay = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       type = Value(type),
       targetType = Value(targetType),
       startDate = Value(startDate);
  static Insertable<Habit> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? targetType,
    Expression<double>? targetValue,
    Expression<String>? unit,
    Expression<DateTime>? startDate,
    Expression<double>? moneySavedPerDay,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (targetType != null) 'target_type': targetType,
      if (targetValue != null) 'target_value': targetValue,
      if (unit != null) 'unit': unit,
      if (startDate != null) 'start_date': startDate,
      if (moneySavedPerDay != null) 'money_saved_per_day': moneySavedPerDay,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HabitsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? type,
    Value<String>? targetType,
    Value<double?>? targetValue,
    Value<String?>? unit,
    Value<DateTime>? startDate,
    Value<double?>? moneySavedPerDay,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return HabitsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      targetType: targetType ?? this.targetType,
      targetValue: targetValue ?? this.targetValue,
      unit: unit ?? this.unit,
      startDate: startDate ?? this.startDate,
      moneySavedPerDay: moneySavedPerDay ?? this.moneySavedPerDay,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (targetType.present) {
      map['target_type'] = Variable<String>(targetType.value);
    }
    if (targetValue.present) {
      map['target_value'] = Variable<double>(targetValue.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (moneySavedPerDay.present) {
      map['money_saved_per_day'] = Variable<double>(moneySavedPerDay.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('targetType: $targetType, ')
          ..write('targetValue: $targetValue, ')
          ..write('unit: $unit, ')
          ..write('startDate: $startDate, ')
          ..write('moneySavedPerDay: $moneySavedPerDay, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HabitLogsTable extends HabitLogs
    with TableInfo<$HabitLogsTable, HabitLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _habitIdMeta = const VerificationMeta(
    'habitId',
  );
  @override
  late final GeneratedColumn<String> habitId = GeneratedColumn<String>(
    'habit_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES habits (id)',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _triggerMeta = const VerificationMeta(
    'trigger',
  );
  @override
  late final GeneratedColumn<String> trigger = GeneratedColumn<String>(
    'trigger',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _severityMeta = const VerificationMeta(
    'severity',
  );
  @override
  late final GeneratedColumn<int> severity = GeneratedColumn<int>(
    'severity',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    habitId,
    date,
    status,
    amount,
    trigger,
    severity,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habit_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<HabitLog> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('habit_id')) {
      context.handle(
        _habitIdMeta,
        habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta),
      );
    } else if (isInserting) {
      context.missing(_habitIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    }
    if (data.containsKey('trigger')) {
      context.handle(
        _triggerMeta,
        trigger.isAcceptableOrUnknown(data['trigger']!, _triggerMeta),
      );
    }
    if (data.containsKey('severity')) {
      context.handle(
        _severityMeta,
        severity.isAcceptableOrUnknown(data['severity']!, _severityMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HabitLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitLog(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      habitId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}habit_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      ),
      trigger: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trigger'],
      ),
      severity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}severity'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $HabitLogsTable createAlias(String alias) {
    return $HabitLogsTable(attachedDatabase, alias);
  }
}

class HabitLog extends DataClass implements Insertable<HabitLog> {
  final String id;
  final String habitId;
  final DateTime date;
  final String status;
  final double? amount;
  final String? trigger;
  final int? severity;
  final String? notes;
  const HabitLog({
    required this.id,
    required this.habitId,
    required this.date,
    required this.status,
    this.amount,
    this.trigger,
    this.severity,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['habit_id'] = Variable<String>(habitId);
    map['date'] = Variable<DateTime>(date);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    if (!nullToAbsent || trigger != null) {
      map['trigger'] = Variable<String>(trigger);
    }
    if (!nullToAbsent || severity != null) {
      map['severity'] = Variable<int>(severity);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  HabitLogsCompanion toCompanion(bool nullToAbsent) {
    return HabitLogsCompanion(
      id: Value(id),
      habitId: Value(habitId),
      date: Value(date),
      status: Value(status),
      amount: amount == null && nullToAbsent
          ? const Value.absent()
          : Value(amount),
      trigger: trigger == null && nullToAbsent
          ? const Value.absent()
          : Value(trigger),
      severity: severity == null && nullToAbsent
          ? const Value.absent()
          : Value(severity),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory HabitLog.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitLog(
      id: serializer.fromJson<String>(json['id']),
      habitId: serializer.fromJson<String>(json['habitId']),
      date: serializer.fromJson<DateTime>(json['date']),
      status: serializer.fromJson<String>(json['status']),
      amount: serializer.fromJson<double?>(json['amount']),
      trigger: serializer.fromJson<String?>(json['trigger']),
      severity: serializer.fromJson<int?>(json['severity']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'habitId': serializer.toJson<String>(habitId),
      'date': serializer.toJson<DateTime>(date),
      'status': serializer.toJson<String>(status),
      'amount': serializer.toJson<double?>(amount),
      'trigger': serializer.toJson<String?>(trigger),
      'severity': serializer.toJson<int?>(severity),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  HabitLog copyWith({
    String? id,
    String? habitId,
    DateTime? date,
    String? status,
    Value<double?> amount = const Value.absent(),
    Value<String?> trigger = const Value.absent(),
    Value<int?> severity = const Value.absent(),
    Value<String?> notes = const Value.absent(),
  }) => HabitLog(
    id: id ?? this.id,
    habitId: habitId ?? this.habitId,
    date: date ?? this.date,
    status: status ?? this.status,
    amount: amount.present ? amount.value : this.amount,
    trigger: trigger.present ? trigger.value : this.trigger,
    severity: severity.present ? severity.value : this.severity,
    notes: notes.present ? notes.value : this.notes,
  );
  HabitLog copyWithCompanion(HabitLogsCompanion data) {
    return HabitLog(
      id: data.id.present ? data.id.value : this.id,
      habitId: data.habitId.present ? data.habitId.value : this.habitId,
      date: data.date.present ? data.date.value : this.date,
      status: data.status.present ? data.status.value : this.status,
      amount: data.amount.present ? data.amount.value : this.amount,
      trigger: data.trigger.present ? data.trigger.value : this.trigger,
      severity: data.severity.present ? data.severity.value : this.severity,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitLog(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('date: $date, ')
          ..write('status: $status, ')
          ..write('amount: $amount, ')
          ..write('trigger: $trigger, ')
          ..write('severity: $severity, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, habitId, date, status, amount, trigger, severity, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitLog &&
          other.id == this.id &&
          other.habitId == this.habitId &&
          other.date == this.date &&
          other.status == this.status &&
          other.amount == this.amount &&
          other.trigger == this.trigger &&
          other.severity == this.severity &&
          other.notes == this.notes);
}

class HabitLogsCompanion extends UpdateCompanion<HabitLog> {
  final Value<String> id;
  final Value<String> habitId;
  final Value<DateTime> date;
  final Value<String> status;
  final Value<double?> amount;
  final Value<String?> trigger;
  final Value<int?> severity;
  final Value<String?> notes;
  final Value<int> rowid;
  const HabitLogsCompanion({
    this.id = const Value.absent(),
    this.habitId = const Value.absent(),
    this.date = const Value.absent(),
    this.status = const Value.absent(),
    this.amount = const Value.absent(),
    this.trigger = const Value.absent(),
    this.severity = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HabitLogsCompanion.insert({
    required String id,
    required String habitId,
    required DateTime date,
    required String status,
    this.amount = const Value.absent(),
    this.trigger = const Value.absent(),
    this.severity = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       habitId = Value(habitId),
       date = Value(date),
       status = Value(status);
  static Insertable<HabitLog> custom({
    Expression<String>? id,
    Expression<String>? habitId,
    Expression<DateTime>? date,
    Expression<String>? status,
    Expression<double>? amount,
    Expression<String>? trigger,
    Expression<int>? severity,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (habitId != null) 'habit_id': habitId,
      if (date != null) 'date': date,
      if (status != null) 'status': status,
      if (amount != null) 'amount': amount,
      if (trigger != null) 'trigger': trigger,
      if (severity != null) 'severity': severity,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HabitLogsCompanion copyWith({
    Value<String>? id,
    Value<String>? habitId,
    Value<DateTime>? date,
    Value<String>? status,
    Value<double?>? amount,
    Value<String?>? trigger,
    Value<int?>? severity,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return HabitLogsCompanion(
      id: id ?? this.id,
      habitId: habitId ?? this.habitId,
      date: date ?? this.date,
      status: status ?? this.status,
      amount: amount ?? this.amount,
      trigger: trigger ?? this.trigger,
      severity: severity ?? this.severity,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (habitId.present) {
      map['habit_id'] = Variable<String>(habitId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (trigger.present) {
      map['trigger'] = Variable<String>(trigger.value);
    }
    if (severity.present) {
      map['severity'] = Variable<int>(severity.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitLogsCompanion(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('date: $date, ')
          ..write('status: $status, ')
          ..write('amount: $amount, ')
          ..write('trigger: $trigger, ')
          ..write('severity: $severity, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SymptomLogsTable extends SymptomLogs
    with TableInfo<$SymptomLogsTable, SymptomLog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SymptomLogsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _symptomTypeMeta = const VerificationMeta(
    'symptomType',
  );
  @override
  late final GeneratedColumn<String> symptomType = GeneratedColumn<String>(
    'symptom_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _severityMeta = const VerificationMeta(
    'severity',
  );
  @override
  late final GeneratedColumn<int> severity = GeneratedColumn<int>(
    'severity',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bristolStoolTypeMeta = const VerificationMeta(
    'bristolStoolType',
  );
  @override
  late final GeneratedColumn<int> bristolStoolType = GeneratedColumn<int>(
    'bristol_stool_type',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _suspectedTriggerFoodMeta =
      const VerificationMeta('suspectedTriggerFood');
  @override
  late final GeneratedColumn<String> suspectedTriggerFood =
      GeneratedColumn<String>(
        'suspected_trigger_food',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    symptomType,
    severity,
    bristolStoolType,
    suspectedTriggerFood,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'symptom_logs';
  @override
  VerificationContext validateIntegrity(
    Insertable<SymptomLog> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('symptom_type')) {
      context.handle(
        _symptomTypeMeta,
        symptomType.isAcceptableOrUnknown(
          data['symptom_type']!,
          _symptomTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_symptomTypeMeta);
    }
    if (data.containsKey('severity')) {
      context.handle(
        _severityMeta,
        severity.isAcceptableOrUnknown(data['severity']!, _severityMeta),
      );
    }
    if (data.containsKey('bristol_stool_type')) {
      context.handle(
        _bristolStoolTypeMeta,
        bristolStoolType.isAcceptableOrUnknown(
          data['bristol_stool_type']!,
          _bristolStoolTypeMeta,
        ),
      );
    }
    if (data.containsKey('suspected_trigger_food')) {
      context.handle(
        _suspectedTriggerFoodMeta,
        suspectedTriggerFood.isAcceptableOrUnknown(
          data['suspected_trigger_food']!,
          _suspectedTriggerFoodMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SymptomLog map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SymptomLog(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      symptomType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symptom_type'],
      )!,
      severity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}severity'],
      ),
      bristolStoolType: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bristol_stool_type'],
      ),
      suspectedTriggerFood: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}suspected_trigger_food'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $SymptomLogsTable createAlias(String alias) {
    return $SymptomLogsTable(attachedDatabase, alias);
  }
}

class SymptomLog extends DataClass implements Insertable<SymptomLog> {
  final String id;
  final DateTime date;
  final String symptomType;
  final int? severity;
  final int? bristolStoolType;
  final String? suspectedTriggerFood;
  final String? notes;
  const SymptomLog({
    required this.id,
    required this.date,
    required this.symptomType,
    this.severity,
    this.bristolStoolType,
    this.suspectedTriggerFood,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['date'] = Variable<DateTime>(date);
    map['symptom_type'] = Variable<String>(symptomType);
    if (!nullToAbsent || severity != null) {
      map['severity'] = Variable<int>(severity);
    }
    if (!nullToAbsent || bristolStoolType != null) {
      map['bristol_stool_type'] = Variable<int>(bristolStoolType);
    }
    if (!nullToAbsent || suspectedTriggerFood != null) {
      map['suspected_trigger_food'] = Variable<String>(suspectedTriggerFood);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  SymptomLogsCompanion toCompanion(bool nullToAbsent) {
    return SymptomLogsCompanion(
      id: Value(id),
      date: Value(date),
      symptomType: Value(symptomType),
      severity: severity == null && nullToAbsent
          ? const Value.absent()
          : Value(severity),
      bristolStoolType: bristolStoolType == null && nullToAbsent
          ? const Value.absent()
          : Value(bristolStoolType),
      suspectedTriggerFood: suspectedTriggerFood == null && nullToAbsent
          ? const Value.absent()
          : Value(suspectedTriggerFood),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory SymptomLog.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SymptomLog(
      id: serializer.fromJson<String>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      symptomType: serializer.fromJson<String>(json['symptomType']),
      severity: serializer.fromJson<int?>(json['severity']),
      bristolStoolType: serializer.fromJson<int?>(json['bristolStoolType']),
      suspectedTriggerFood: serializer.fromJson<String?>(
        json['suspectedTriggerFood'],
      ),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'date': serializer.toJson<DateTime>(date),
      'symptomType': serializer.toJson<String>(symptomType),
      'severity': serializer.toJson<int?>(severity),
      'bristolStoolType': serializer.toJson<int?>(bristolStoolType),
      'suspectedTriggerFood': serializer.toJson<String?>(suspectedTriggerFood),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  SymptomLog copyWith({
    String? id,
    DateTime? date,
    String? symptomType,
    Value<int?> severity = const Value.absent(),
    Value<int?> bristolStoolType = const Value.absent(),
    Value<String?> suspectedTriggerFood = const Value.absent(),
    Value<String?> notes = const Value.absent(),
  }) => SymptomLog(
    id: id ?? this.id,
    date: date ?? this.date,
    symptomType: symptomType ?? this.symptomType,
    severity: severity.present ? severity.value : this.severity,
    bristolStoolType: bristolStoolType.present
        ? bristolStoolType.value
        : this.bristolStoolType,
    suspectedTriggerFood: suspectedTriggerFood.present
        ? suspectedTriggerFood.value
        : this.suspectedTriggerFood,
    notes: notes.present ? notes.value : this.notes,
  );
  SymptomLog copyWithCompanion(SymptomLogsCompanion data) {
    return SymptomLog(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      symptomType: data.symptomType.present
          ? data.symptomType.value
          : this.symptomType,
      severity: data.severity.present ? data.severity.value : this.severity,
      bristolStoolType: data.bristolStoolType.present
          ? data.bristolStoolType.value
          : this.bristolStoolType,
      suspectedTriggerFood: data.suspectedTriggerFood.present
          ? data.suspectedTriggerFood.value
          : this.suspectedTriggerFood,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SymptomLog(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('symptomType: $symptomType, ')
          ..write('severity: $severity, ')
          ..write('bristolStoolType: $bristolStoolType, ')
          ..write('suspectedTriggerFood: $suspectedTriggerFood, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    date,
    symptomType,
    severity,
    bristolStoolType,
    suspectedTriggerFood,
    notes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SymptomLog &&
          other.id == this.id &&
          other.date == this.date &&
          other.symptomType == this.symptomType &&
          other.severity == this.severity &&
          other.bristolStoolType == this.bristolStoolType &&
          other.suspectedTriggerFood == this.suspectedTriggerFood &&
          other.notes == this.notes);
}

class SymptomLogsCompanion extends UpdateCompanion<SymptomLog> {
  final Value<String> id;
  final Value<DateTime> date;
  final Value<String> symptomType;
  final Value<int?> severity;
  final Value<int?> bristolStoolType;
  final Value<String?> suspectedTriggerFood;
  final Value<String?> notes;
  final Value<int> rowid;
  const SymptomLogsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.symptomType = const Value.absent(),
    this.severity = const Value.absent(),
    this.bristolStoolType = const Value.absent(),
    this.suspectedTriggerFood = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SymptomLogsCompanion.insert({
    required String id,
    required DateTime date,
    required String symptomType,
    this.severity = const Value.absent(),
    this.bristolStoolType = const Value.absent(),
    this.suspectedTriggerFood = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       date = Value(date),
       symptomType = Value(symptomType);
  static Insertable<SymptomLog> custom({
    Expression<String>? id,
    Expression<DateTime>? date,
    Expression<String>? symptomType,
    Expression<int>? severity,
    Expression<int>? bristolStoolType,
    Expression<String>? suspectedTriggerFood,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (symptomType != null) 'symptom_type': symptomType,
      if (severity != null) 'severity': severity,
      if (bristolStoolType != null) 'bristol_stool_type': bristolStoolType,
      if (suspectedTriggerFood != null)
        'suspected_trigger_food': suspectedTriggerFood,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SymptomLogsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? date,
    Value<String>? symptomType,
    Value<int?>? severity,
    Value<int?>? bristolStoolType,
    Value<String?>? suspectedTriggerFood,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return SymptomLogsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      symptomType: symptomType ?? this.symptomType,
      severity: severity ?? this.severity,
      bristolStoolType: bristolStoolType ?? this.bristolStoolType,
      suspectedTriggerFood: suspectedTriggerFood ?? this.suspectedTriggerFood,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (symptomType.present) {
      map['symptom_type'] = Variable<String>(symptomType.value);
    }
    if (severity.present) {
      map['severity'] = Variable<int>(severity.value);
    }
    if (bristolStoolType.present) {
      map['bristol_stool_type'] = Variable<int>(bristolStoolType.value);
    }
    if (suspectedTriggerFood.present) {
      map['suspected_trigger_food'] = Variable<String>(
        suspectedTriggerFood.value,
      );
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SymptomLogsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('symptomType: $symptomType, ')
          ..write('severity: $severity, ')
          ..write('bristolStoolType: $bristolStoolType, ')
          ..write('suspectedTriggerFood: $suspectedTriggerFood, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BodyMeasurementsTable extends BodyMeasurements
    with TableInfo<$BodyMeasurementsTable, BodyMeasurement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BodyMeasurementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightKgMeta = const VerificationMeta(
    'weightKg',
  );
  @override
  late final GeneratedColumn<double> weightKg = GeneratedColumn<double>(
    'weight_kg',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bodyFatPctMeta = const VerificationMeta(
    'bodyFatPct',
  );
  @override
  late final GeneratedColumn<double> bodyFatPct = GeneratedColumn<double>(
    'body_fat_pct',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _waistCmMeta = const VerificationMeta(
    'waistCm',
  );
  @override
  late final GeneratedColumn<double> waistCm = GeneratedColumn<double>(
    'waist_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _chestCmMeta = const VerificationMeta(
    'chestCm',
  );
  @override
  late final GeneratedColumn<double> chestCm = GeneratedColumn<double>(
    'chest_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _armsCmMeta = const VerificationMeta('armsCm');
  @override
  late final GeneratedColumn<double> armsCm = GeneratedColumn<double>(
    'arms_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _thighsCmMeta = const VerificationMeta(
    'thighsCm',
  );
  @override
  late final GeneratedColumn<double> thighsCm = GeneratedColumn<double>(
    'thighs_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hipsCmMeta = const VerificationMeta('hipsCm');
  @override
  late final GeneratedColumn<double> hipsCm = GeneratedColumn<double>(
    'hips_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _neckCmMeta = const VerificationMeta('neckCm');
  @override
  late final GeneratedColumn<double> neckCm = GeneratedColumn<double>(
    'neck_cm',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    weightKg,
    bodyFatPct,
    waistCm,
    chestCm,
    armsCm,
    thighsCm,
    hipsCm,
    neckCm,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'body_measurements';
  @override
  VerificationContext validateIntegrity(
    Insertable<BodyMeasurement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('weight_kg')) {
      context.handle(
        _weightKgMeta,
        weightKg.isAcceptableOrUnknown(data['weight_kg']!, _weightKgMeta),
      );
    }
    if (data.containsKey('body_fat_pct')) {
      context.handle(
        _bodyFatPctMeta,
        bodyFatPct.isAcceptableOrUnknown(
          data['body_fat_pct']!,
          _bodyFatPctMeta,
        ),
      );
    }
    if (data.containsKey('waist_cm')) {
      context.handle(
        _waistCmMeta,
        waistCm.isAcceptableOrUnknown(data['waist_cm']!, _waistCmMeta),
      );
    }
    if (data.containsKey('chest_cm')) {
      context.handle(
        _chestCmMeta,
        chestCm.isAcceptableOrUnknown(data['chest_cm']!, _chestCmMeta),
      );
    }
    if (data.containsKey('arms_cm')) {
      context.handle(
        _armsCmMeta,
        armsCm.isAcceptableOrUnknown(data['arms_cm']!, _armsCmMeta),
      );
    }
    if (data.containsKey('thighs_cm')) {
      context.handle(
        _thighsCmMeta,
        thighsCm.isAcceptableOrUnknown(data['thighs_cm']!, _thighsCmMeta),
      );
    }
    if (data.containsKey('hips_cm')) {
      context.handle(
        _hipsCmMeta,
        hipsCm.isAcceptableOrUnknown(data['hips_cm']!, _hipsCmMeta),
      );
    }
    if (data.containsKey('neck_cm')) {
      context.handle(
        _neckCmMeta,
        neckCm.isAcceptableOrUnknown(data['neck_cm']!, _neckCmMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BodyMeasurement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BodyMeasurement(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      weightKg: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight_kg'],
      ),
      bodyFatPct: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}body_fat_pct'],
      ),
      waistCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}waist_cm'],
      ),
      chestCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}chest_cm'],
      ),
      armsCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}arms_cm'],
      ),
      thighsCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}thighs_cm'],
      ),
      hipsCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}hips_cm'],
      ),
      neckCm: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}neck_cm'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $BodyMeasurementsTable createAlias(String alias) {
    return $BodyMeasurementsTable(attachedDatabase, alias);
  }
}

class BodyMeasurement extends DataClass implements Insertable<BodyMeasurement> {
  final String id;
  final DateTime date;
  final double? weightKg;
  final double? bodyFatPct;
  final double? waistCm;
  final double? chestCm;
  final double? armsCm;
  final double? thighsCm;
  final double? hipsCm;
  final double? neckCm;
  final String? notes;
  const BodyMeasurement({
    required this.id,
    required this.date,
    this.weightKg,
    this.bodyFatPct,
    this.waistCm,
    this.chestCm,
    this.armsCm,
    this.thighsCm,
    this.hipsCm,
    this.neckCm,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || weightKg != null) {
      map['weight_kg'] = Variable<double>(weightKg);
    }
    if (!nullToAbsent || bodyFatPct != null) {
      map['body_fat_pct'] = Variable<double>(bodyFatPct);
    }
    if (!nullToAbsent || waistCm != null) {
      map['waist_cm'] = Variable<double>(waistCm);
    }
    if (!nullToAbsent || chestCm != null) {
      map['chest_cm'] = Variable<double>(chestCm);
    }
    if (!nullToAbsent || armsCm != null) {
      map['arms_cm'] = Variable<double>(armsCm);
    }
    if (!nullToAbsent || thighsCm != null) {
      map['thighs_cm'] = Variable<double>(thighsCm);
    }
    if (!nullToAbsent || hipsCm != null) {
      map['hips_cm'] = Variable<double>(hipsCm);
    }
    if (!nullToAbsent || neckCm != null) {
      map['neck_cm'] = Variable<double>(neckCm);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  BodyMeasurementsCompanion toCompanion(bool nullToAbsent) {
    return BodyMeasurementsCompanion(
      id: Value(id),
      date: Value(date),
      weightKg: weightKg == null && nullToAbsent
          ? const Value.absent()
          : Value(weightKg),
      bodyFatPct: bodyFatPct == null && nullToAbsent
          ? const Value.absent()
          : Value(bodyFatPct),
      waistCm: waistCm == null && nullToAbsent
          ? const Value.absent()
          : Value(waistCm),
      chestCm: chestCm == null && nullToAbsent
          ? const Value.absent()
          : Value(chestCm),
      armsCm: armsCm == null && nullToAbsent
          ? const Value.absent()
          : Value(armsCm),
      thighsCm: thighsCm == null && nullToAbsent
          ? const Value.absent()
          : Value(thighsCm),
      hipsCm: hipsCm == null && nullToAbsent
          ? const Value.absent()
          : Value(hipsCm),
      neckCm: neckCm == null && nullToAbsent
          ? const Value.absent()
          : Value(neckCm),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory BodyMeasurement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BodyMeasurement(
      id: serializer.fromJson<String>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      weightKg: serializer.fromJson<double?>(json['weightKg']),
      bodyFatPct: serializer.fromJson<double?>(json['bodyFatPct']),
      waistCm: serializer.fromJson<double?>(json['waistCm']),
      chestCm: serializer.fromJson<double?>(json['chestCm']),
      armsCm: serializer.fromJson<double?>(json['armsCm']),
      thighsCm: serializer.fromJson<double?>(json['thighsCm']),
      hipsCm: serializer.fromJson<double?>(json['hipsCm']),
      neckCm: serializer.fromJson<double?>(json['neckCm']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'date': serializer.toJson<DateTime>(date),
      'weightKg': serializer.toJson<double?>(weightKg),
      'bodyFatPct': serializer.toJson<double?>(bodyFatPct),
      'waistCm': serializer.toJson<double?>(waistCm),
      'chestCm': serializer.toJson<double?>(chestCm),
      'armsCm': serializer.toJson<double?>(armsCm),
      'thighsCm': serializer.toJson<double?>(thighsCm),
      'hipsCm': serializer.toJson<double?>(hipsCm),
      'neckCm': serializer.toJson<double?>(neckCm),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  BodyMeasurement copyWith({
    String? id,
    DateTime? date,
    Value<double?> weightKg = const Value.absent(),
    Value<double?> bodyFatPct = const Value.absent(),
    Value<double?> waistCm = const Value.absent(),
    Value<double?> chestCm = const Value.absent(),
    Value<double?> armsCm = const Value.absent(),
    Value<double?> thighsCm = const Value.absent(),
    Value<double?> hipsCm = const Value.absent(),
    Value<double?> neckCm = const Value.absent(),
    Value<String?> notes = const Value.absent(),
  }) => BodyMeasurement(
    id: id ?? this.id,
    date: date ?? this.date,
    weightKg: weightKg.present ? weightKg.value : this.weightKg,
    bodyFatPct: bodyFatPct.present ? bodyFatPct.value : this.bodyFatPct,
    waistCm: waistCm.present ? waistCm.value : this.waistCm,
    chestCm: chestCm.present ? chestCm.value : this.chestCm,
    armsCm: armsCm.present ? armsCm.value : this.armsCm,
    thighsCm: thighsCm.present ? thighsCm.value : this.thighsCm,
    hipsCm: hipsCm.present ? hipsCm.value : this.hipsCm,
    neckCm: neckCm.present ? neckCm.value : this.neckCm,
    notes: notes.present ? notes.value : this.notes,
  );
  BodyMeasurement copyWithCompanion(BodyMeasurementsCompanion data) {
    return BodyMeasurement(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      weightKg: data.weightKg.present ? data.weightKg.value : this.weightKg,
      bodyFatPct: data.bodyFatPct.present
          ? data.bodyFatPct.value
          : this.bodyFatPct,
      waistCm: data.waistCm.present ? data.waistCm.value : this.waistCm,
      chestCm: data.chestCm.present ? data.chestCm.value : this.chestCm,
      armsCm: data.armsCm.present ? data.armsCm.value : this.armsCm,
      thighsCm: data.thighsCm.present ? data.thighsCm.value : this.thighsCm,
      hipsCm: data.hipsCm.present ? data.hipsCm.value : this.hipsCm,
      neckCm: data.neckCm.present ? data.neckCm.value : this.neckCm,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BodyMeasurement(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('weightKg: $weightKg, ')
          ..write('bodyFatPct: $bodyFatPct, ')
          ..write('waistCm: $waistCm, ')
          ..write('chestCm: $chestCm, ')
          ..write('armsCm: $armsCm, ')
          ..write('thighsCm: $thighsCm, ')
          ..write('hipsCm: $hipsCm, ')
          ..write('neckCm: $neckCm, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    date,
    weightKg,
    bodyFatPct,
    waistCm,
    chestCm,
    armsCm,
    thighsCm,
    hipsCm,
    neckCm,
    notes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BodyMeasurement &&
          other.id == this.id &&
          other.date == this.date &&
          other.weightKg == this.weightKg &&
          other.bodyFatPct == this.bodyFatPct &&
          other.waistCm == this.waistCm &&
          other.chestCm == this.chestCm &&
          other.armsCm == this.armsCm &&
          other.thighsCm == this.thighsCm &&
          other.hipsCm == this.hipsCm &&
          other.neckCm == this.neckCm &&
          other.notes == this.notes);
}

class BodyMeasurementsCompanion extends UpdateCompanion<BodyMeasurement> {
  final Value<String> id;
  final Value<DateTime> date;
  final Value<double?> weightKg;
  final Value<double?> bodyFatPct;
  final Value<double?> waistCm;
  final Value<double?> chestCm;
  final Value<double?> armsCm;
  final Value<double?> thighsCm;
  final Value<double?> hipsCm;
  final Value<double?> neckCm;
  final Value<String?> notes;
  final Value<int> rowid;
  const BodyMeasurementsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.bodyFatPct = const Value.absent(),
    this.waistCm = const Value.absent(),
    this.chestCm = const Value.absent(),
    this.armsCm = const Value.absent(),
    this.thighsCm = const Value.absent(),
    this.hipsCm = const Value.absent(),
    this.neckCm = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BodyMeasurementsCompanion.insert({
    required String id,
    required DateTime date,
    this.weightKg = const Value.absent(),
    this.bodyFatPct = const Value.absent(),
    this.waistCm = const Value.absent(),
    this.chestCm = const Value.absent(),
    this.armsCm = const Value.absent(),
    this.thighsCm = const Value.absent(),
    this.hipsCm = const Value.absent(),
    this.neckCm = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       date = Value(date);
  static Insertable<BodyMeasurement> custom({
    Expression<String>? id,
    Expression<DateTime>? date,
    Expression<double>? weightKg,
    Expression<double>? bodyFatPct,
    Expression<double>? waistCm,
    Expression<double>? chestCm,
    Expression<double>? armsCm,
    Expression<double>? thighsCm,
    Expression<double>? hipsCm,
    Expression<double>? neckCm,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (weightKg != null) 'weight_kg': weightKg,
      if (bodyFatPct != null) 'body_fat_pct': bodyFatPct,
      if (waistCm != null) 'waist_cm': waistCm,
      if (chestCm != null) 'chest_cm': chestCm,
      if (armsCm != null) 'arms_cm': armsCm,
      if (thighsCm != null) 'thighs_cm': thighsCm,
      if (hipsCm != null) 'hips_cm': hipsCm,
      if (neckCm != null) 'neck_cm': neckCm,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BodyMeasurementsCompanion copyWith({
    Value<String>? id,
    Value<DateTime>? date,
    Value<double?>? weightKg,
    Value<double?>? bodyFatPct,
    Value<double?>? waistCm,
    Value<double?>? chestCm,
    Value<double?>? armsCm,
    Value<double?>? thighsCm,
    Value<double?>? hipsCm,
    Value<double?>? neckCm,
    Value<String?>? notes,
    Value<int>? rowid,
  }) {
    return BodyMeasurementsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      weightKg: weightKg ?? this.weightKg,
      bodyFatPct: bodyFatPct ?? this.bodyFatPct,
      waistCm: waistCm ?? this.waistCm,
      chestCm: chestCm ?? this.chestCm,
      armsCm: armsCm ?? this.armsCm,
      thighsCm: thighsCm ?? this.thighsCm,
      hipsCm: hipsCm ?? this.hipsCm,
      neckCm: neckCm ?? this.neckCm,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (weightKg.present) {
      map['weight_kg'] = Variable<double>(weightKg.value);
    }
    if (bodyFatPct.present) {
      map['body_fat_pct'] = Variable<double>(bodyFatPct.value);
    }
    if (waistCm.present) {
      map['waist_cm'] = Variable<double>(waistCm.value);
    }
    if (chestCm.present) {
      map['chest_cm'] = Variable<double>(chestCm.value);
    }
    if (armsCm.present) {
      map['arms_cm'] = Variable<double>(armsCm.value);
    }
    if (thighsCm.present) {
      map['thighs_cm'] = Variable<double>(thighsCm.value);
    }
    if (hipsCm.present) {
      map['hips_cm'] = Variable<double>(hipsCm.value);
    }
    if (neckCm.present) {
      map['neck_cm'] = Variable<double>(neckCm.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BodyMeasurementsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('weightKg: $weightKg, ')
          ..write('bodyFatPct: $bodyFatPct, ')
          ..write('waistCm: $waistCm, ')
          ..write('chestCm: $chestCm, ')
          ..write('armsCm: $armsCm, ')
          ..write('thighsCm: $thighsCm, ')
          ..write('hipsCm: $hipsCm, ')
          ..write('neckCm: $neckCm, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PantryItemsTable extends PantryItems
    with TableInfo<$PantryItemsTable, PantryItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PantryItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ingredientIdMeta = const VerificationMeta(
    'ingredientId',
  );
  @override
  late final GeneratedColumn<String> ingredientId = GeneratedColumn<String>(
    'ingredient_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ingredients (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityTextMeta = const VerificationMeta(
    'quantityText',
  );
  @override
  late final GeneratedColumn<String> quantityText = GeneratedColumn<String>(
    'quantity_text',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _quantityGramsEstMeta = const VerificationMeta(
    'quantityGramsEst',
  );
  @override
  late final GeneratedColumn<double> quantityGramsEst = GeneratedColumn<double>(
    'quantity_grams_est',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isStapleMeta = const VerificationMeta(
    'isStaple',
  );
  @override
  late final GeneratedColumn<bool> isStaple = GeneratedColumn<bool>(
    'is_staple',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_staple" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _lowStockThresholdMeta = const VerificationMeta(
    'lowStockThreshold',
  );
  @override
  late final GeneratedColumn<String> lowStockThreshold =
      GeneratedColumn<String>(
        'low_stock_threshold',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _purchasedAtMeta = const VerificationMeta(
    'purchasedAt',
  );
  @override
  late final GeneratedColumn<DateTime> purchasedAt = GeneratedColumn<DateTime>(
    'purchased_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    ingredientId,
    name,
    quantityText,
    quantityGramsEst,
    isStaple,
    lowStockThreshold,
    category,
    purchasedAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pantry_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<PantryItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ingredient_id')) {
      context.handle(
        _ingredientIdMeta,
        ingredientId.isAcceptableOrUnknown(
          data['ingredient_id']!,
          _ingredientIdMeta,
        ),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('quantity_text')) {
      context.handle(
        _quantityTextMeta,
        quantityText.isAcceptableOrUnknown(
          data['quantity_text']!,
          _quantityTextMeta,
        ),
      );
    }
    if (data.containsKey('quantity_grams_est')) {
      context.handle(
        _quantityGramsEstMeta,
        quantityGramsEst.isAcceptableOrUnknown(
          data['quantity_grams_est']!,
          _quantityGramsEstMeta,
        ),
      );
    }
    if (data.containsKey('is_staple')) {
      context.handle(
        _isStapleMeta,
        isStaple.isAcceptableOrUnknown(data['is_staple']!, _isStapleMeta),
      );
    }
    if (data.containsKey('low_stock_threshold')) {
      context.handle(
        _lowStockThresholdMeta,
        lowStockThreshold.isAcceptableOrUnknown(
          data['low_stock_threshold']!,
          _lowStockThresholdMeta,
        ),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('purchased_at')) {
      context.handle(
        _purchasedAtMeta,
        purchasedAt.isAcceptableOrUnknown(
          data['purchased_at']!,
          _purchasedAtMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PantryItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PantryItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      ingredientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredient_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      quantityText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quantity_text'],
      ),
      quantityGramsEst: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}quantity_grams_est'],
      ),
      isStaple: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_staple'],
      )!,
      lowStockThreshold: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}low_stock_threshold'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
      purchasedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}purchased_at'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $PantryItemsTable createAlias(String alias) {
    return $PantryItemsTable(attachedDatabase, alias);
  }
}

class PantryItem extends DataClass implements Insertable<PantryItem> {
  final String id;
  final String? ingredientId;
  final String name;
  final String? quantityText;
  final double? quantityGramsEst;
  final bool isStaple;
  final String? lowStockThreshold;
  final String? category;
  final DateTime? purchasedAt;
  final DateTime updatedAt;
  const PantryItem({
    required this.id,
    this.ingredientId,
    required this.name,
    this.quantityText,
    this.quantityGramsEst,
    required this.isStaple,
    this.lowStockThreshold,
    this.category,
    this.purchasedAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || ingredientId != null) {
      map['ingredient_id'] = Variable<String>(ingredientId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || quantityText != null) {
      map['quantity_text'] = Variable<String>(quantityText);
    }
    if (!nullToAbsent || quantityGramsEst != null) {
      map['quantity_grams_est'] = Variable<double>(quantityGramsEst);
    }
    map['is_staple'] = Variable<bool>(isStaple);
    if (!nullToAbsent || lowStockThreshold != null) {
      map['low_stock_threshold'] = Variable<String>(lowStockThreshold);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || purchasedAt != null) {
      map['purchased_at'] = Variable<DateTime>(purchasedAt);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  PantryItemsCompanion toCompanion(bool nullToAbsent) {
    return PantryItemsCompanion(
      id: Value(id),
      ingredientId: ingredientId == null && nullToAbsent
          ? const Value.absent()
          : Value(ingredientId),
      name: Value(name),
      quantityText: quantityText == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityText),
      quantityGramsEst: quantityGramsEst == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityGramsEst),
      isStaple: Value(isStaple),
      lowStockThreshold: lowStockThreshold == null && nullToAbsent
          ? const Value.absent()
          : Value(lowStockThreshold),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      purchasedAt: purchasedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(purchasedAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory PantryItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PantryItem(
      id: serializer.fromJson<String>(json['id']),
      ingredientId: serializer.fromJson<String?>(json['ingredientId']),
      name: serializer.fromJson<String>(json['name']),
      quantityText: serializer.fromJson<String?>(json['quantityText']),
      quantityGramsEst: serializer.fromJson<double?>(json['quantityGramsEst']),
      isStaple: serializer.fromJson<bool>(json['isStaple']),
      lowStockThreshold: serializer.fromJson<String?>(
        json['lowStockThreshold'],
      ),
      category: serializer.fromJson<String?>(json['category']),
      purchasedAt: serializer.fromJson<DateTime?>(json['purchasedAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'ingredientId': serializer.toJson<String?>(ingredientId),
      'name': serializer.toJson<String>(name),
      'quantityText': serializer.toJson<String?>(quantityText),
      'quantityGramsEst': serializer.toJson<double?>(quantityGramsEst),
      'isStaple': serializer.toJson<bool>(isStaple),
      'lowStockThreshold': serializer.toJson<String?>(lowStockThreshold),
      'category': serializer.toJson<String?>(category),
      'purchasedAt': serializer.toJson<DateTime?>(purchasedAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PantryItem copyWith({
    String? id,
    Value<String?> ingredientId = const Value.absent(),
    String? name,
    Value<String?> quantityText = const Value.absent(),
    Value<double?> quantityGramsEst = const Value.absent(),
    bool? isStaple,
    Value<String?> lowStockThreshold = const Value.absent(),
    Value<String?> category = const Value.absent(),
    Value<DateTime?> purchasedAt = const Value.absent(),
    DateTime? updatedAt,
  }) => PantryItem(
    id: id ?? this.id,
    ingredientId: ingredientId.present ? ingredientId.value : this.ingredientId,
    name: name ?? this.name,
    quantityText: quantityText.present ? quantityText.value : this.quantityText,
    quantityGramsEst: quantityGramsEst.present
        ? quantityGramsEst.value
        : this.quantityGramsEst,
    isStaple: isStaple ?? this.isStaple,
    lowStockThreshold: lowStockThreshold.present
        ? lowStockThreshold.value
        : this.lowStockThreshold,
    category: category.present ? category.value : this.category,
    purchasedAt: purchasedAt.present ? purchasedAt.value : this.purchasedAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  PantryItem copyWithCompanion(PantryItemsCompanion data) {
    return PantryItem(
      id: data.id.present ? data.id.value : this.id,
      ingredientId: data.ingredientId.present
          ? data.ingredientId.value
          : this.ingredientId,
      name: data.name.present ? data.name.value : this.name,
      quantityText: data.quantityText.present
          ? data.quantityText.value
          : this.quantityText,
      quantityGramsEst: data.quantityGramsEst.present
          ? data.quantityGramsEst.value
          : this.quantityGramsEst,
      isStaple: data.isStaple.present ? data.isStaple.value : this.isStaple,
      lowStockThreshold: data.lowStockThreshold.present
          ? data.lowStockThreshold.value
          : this.lowStockThreshold,
      category: data.category.present ? data.category.value : this.category,
      purchasedAt: data.purchasedAt.present
          ? data.purchasedAt.value
          : this.purchasedAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PantryItem(')
          ..write('id: $id, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('name: $name, ')
          ..write('quantityText: $quantityText, ')
          ..write('quantityGramsEst: $quantityGramsEst, ')
          ..write('isStaple: $isStaple, ')
          ..write('lowStockThreshold: $lowStockThreshold, ')
          ..write('category: $category, ')
          ..write('purchasedAt: $purchasedAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    ingredientId,
    name,
    quantityText,
    quantityGramsEst,
    isStaple,
    lowStockThreshold,
    category,
    purchasedAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PantryItem &&
          other.id == this.id &&
          other.ingredientId == this.ingredientId &&
          other.name == this.name &&
          other.quantityText == this.quantityText &&
          other.quantityGramsEst == this.quantityGramsEst &&
          other.isStaple == this.isStaple &&
          other.lowStockThreshold == this.lowStockThreshold &&
          other.category == this.category &&
          other.purchasedAt == this.purchasedAt &&
          other.updatedAt == this.updatedAt);
}

class PantryItemsCompanion extends UpdateCompanion<PantryItem> {
  final Value<String> id;
  final Value<String?> ingredientId;
  final Value<String> name;
  final Value<String?> quantityText;
  final Value<double?> quantityGramsEst;
  final Value<bool> isStaple;
  final Value<String?> lowStockThreshold;
  final Value<String?> category;
  final Value<DateTime?> purchasedAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const PantryItemsCompanion({
    this.id = const Value.absent(),
    this.ingredientId = const Value.absent(),
    this.name = const Value.absent(),
    this.quantityText = const Value.absent(),
    this.quantityGramsEst = const Value.absent(),
    this.isStaple = const Value.absent(),
    this.lowStockThreshold = const Value.absent(),
    this.category = const Value.absent(),
    this.purchasedAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PantryItemsCompanion.insert({
    required String id,
    this.ingredientId = const Value.absent(),
    required String name,
    this.quantityText = const Value.absent(),
    this.quantityGramsEst = const Value.absent(),
    this.isStaple = const Value.absent(),
    this.lowStockThreshold = const Value.absent(),
    this.category = const Value.absent(),
    this.purchasedAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<PantryItem> custom({
    Expression<String>? id,
    Expression<String>? ingredientId,
    Expression<String>? name,
    Expression<String>? quantityText,
    Expression<double>? quantityGramsEst,
    Expression<bool>? isStaple,
    Expression<String>? lowStockThreshold,
    Expression<String>? category,
    Expression<DateTime>? purchasedAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ingredientId != null) 'ingredient_id': ingredientId,
      if (name != null) 'name': name,
      if (quantityText != null) 'quantity_text': quantityText,
      if (quantityGramsEst != null) 'quantity_grams_est': quantityGramsEst,
      if (isStaple != null) 'is_staple': isStaple,
      if (lowStockThreshold != null) 'low_stock_threshold': lowStockThreshold,
      if (category != null) 'category': category,
      if (purchasedAt != null) 'purchased_at': purchasedAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PantryItemsCompanion copyWith({
    Value<String>? id,
    Value<String?>? ingredientId,
    Value<String>? name,
    Value<String?>? quantityText,
    Value<double?>? quantityGramsEst,
    Value<bool>? isStaple,
    Value<String?>? lowStockThreshold,
    Value<String?>? category,
    Value<DateTime?>? purchasedAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return PantryItemsCompanion(
      id: id ?? this.id,
      ingredientId: ingredientId ?? this.ingredientId,
      name: name ?? this.name,
      quantityText: quantityText ?? this.quantityText,
      quantityGramsEst: quantityGramsEst ?? this.quantityGramsEst,
      isStaple: isStaple ?? this.isStaple,
      lowStockThreshold: lowStockThreshold ?? this.lowStockThreshold,
      category: category ?? this.category,
      purchasedAt: purchasedAt ?? this.purchasedAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ingredientId.present) {
      map['ingredient_id'] = Variable<String>(ingredientId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (quantityText.present) {
      map['quantity_text'] = Variable<String>(quantityText.value);
    }
    if (quantityGramsEst.present) {
      map['quantity_grams_est'] = Variable<double>(quantityGramsEst.value);
    }
    if (isStaple.present) {
      map['is_staple'] = Variable<bool>(isStaple.value);
    }
    if (lowStockThreshold.present) {
      map['low_stock_threshold'] = Variable<String>(lowStockThreshold.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (purchasedAt.present) {
      map['purchased_at'] = Variable<DateTime>(purchasedAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PantryItemsCompanion(')
          ..write('id: $id, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('name: $name, ')
          ..write('quantityText: $quantityText, ')
          ..write('quantityGramsEst: $quantityGramsEst, ')
          ..write('isStaple: $isStaple, ')
          ..write('lowStockThreshold: $lowStockThreshold, ')
          ..write('category: $category, ')
          ..write('purchasedAt: $purchasedAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ShoppingListsTable extends ShoppingLists
    with TableInfo<$ShoppingListsTable, ShoppingList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShoppingListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weekStartMeta = const VerificationMeta(
    'weekStart',
  );
  @override
  late final GeneratedColumn<DateTime> weekStart = GeneratedColumn<DateTime>(
    'week_start',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    weekStart,
    createdAt,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shopping_lists';
  @override
  VerificationContext validateIntegrity(
    Insertable<ShoppingList> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('week_start')) {
      context.handle(
        _weekStartMeta,
        weekStart.isAcceptableOrUnknown(data['week_start']!, _weekStartMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ShoppingList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShoppingList(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      weekStart: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}week_start'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $ShoppingListsTable createAlias(String alias) {
    return $ShoppingListsTable(attachedDatabase, alias);
  }
}

class ShoppingList extends DataClass implements Insertable<ShoppingList> {
  final String id;
  final String name;
  final DateTime? weekStart;
  final DateTime createdAt;
  final bool isActive;
  const ShoppingList({
    required this.id,
    required this.name,
    this.weekStart,
    required this.createdAt,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || weekStart != null) {
      map['week_start'] = Variable<DateTime>(weekStart);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  ShoppingListsCompanion toCompanion(bool nullToAbsent) {
    return ShoppingListsCompanion(
      id: Value(id),
      name: Value(name),
      weekStart: weekStart == null && nullToAbsent
          ? const Value.absent()
          : Value(weekStart),
      createdAt: Value(createdAt),
      isActive: Value(isActive),
    );
  }

  factory ShoppingList.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShoppingList(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      weekStart: serializer.fromJson<DateTime?>(json['weekStart']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'weekStart': serializer.toJson<DateTime?>(weekStart),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  ShoppingList copyWith({
    String? id,
    String? name,
    Value<DateTime?> weekStart = const Value.absent(),
    DateTime? createdAt,
    bool? isActive,
  }) => ShoppingList(
    id: id ?? this.id,
    name: name ?? this.name,
    weekStart: weekStart.present ? weekStart.value : this.weekStart,
    createdAt: createdAt ?? this.createdAt,
    isActive: isActive ?? this.isActive,
  );
  ShoppingList copyWithCompanion(ShoppingListsCompanion data) {
    return ShoppingList(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      weekStart: data.weekStart.present ? data.weekStart.value : this.weekStart,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ShoppingList(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('weekStart: $weekStart, ')
          ..write('createdAt: $createdAt, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, weekStart, createdAt, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShoppingList &&
          other.id == this.id &&
          other.name == this.name &&
          other.weekStart == this.weekStart &&
          other.createdAt == this.createdAt &&
          other.isActive == this.isActive);
}

class ShoppingListsCompanion extends UpdateCompanion<ShoppingList> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime?> weekStart;
  final Value<DateTime> createdAt;
  final Value<bool> isActive;
  final Value<int> rowid;
  const ShoppingListsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.weekStart = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ShoppingListsCompanion.insert({
    required String id,
    required String name,
    this.weekStart = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name);
  static Insertable<ShoppingList> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? weekStart,
    Expression<DateTime>? createdAt,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (weekStart != null) 'week_start': weekStart,
      if (createdAt != null) 'created_at': createdAt,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ShoppingListsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<DateTime?>? weekStart,
    Value<DateTime>? createdAt,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return ShoppingListsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      weekStart: weekStart ?? this.weekStart,
      createdAt: createdAt ?? this.createdAt,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (weekStart.present) {
      map['week_start'] = Variable<DateTime>(weekStart.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShoppingListsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('weekStart: $weekStart, ')
          ..write('createdAt: $createdAt, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ShoppingItemsTable extends ShoppingItems
    with TableInfo<$ShoppingItemsTable, ShoppingItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShoppingItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _listIdMeta = const VerificationMeta('listId');
  @override
  late final GeneratedColumn<String> listId = GeneratedColumn<String>(
    'list_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES shopping_lists (id)',
    ),
  );
  static const VerificationMeta _ingredientIdMeta = const VerificationMeta(
    'ingredientId',
  );
  @override
  late final GeneratedColumn<String> ingredientId = GeneratedColumn<String>(
    'ingredient_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES ingredients (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<String> amount = GeneratedColumn<String>(
    'amount',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isCheckedMeta = const VerificationMeta(
    'isChecked',
  );
  @override
  late final GeneratedColumn<bool> isChecked = GeneratedColumn<bool>(
    'is_checked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_checked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _fodmapLevelMeta = const VerificationMeta(
    'fodmapLevel',
  );
  @override
  late final GeneratedColumn<String> fodmapLevel = GeneratedColumn<String>(
    'fodmap_level',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isFromMealPlanMeta = const VerificationMeta(
    'isFromMealPlan',
  );
  @override
  late final GeneratedColumn<bool> isFromMealPlan = GeneratedColumn<bool>(
    'is_from_meal_plan',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_from_meal_plan" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    listId,
    ingredientId,
    name,
    amount,
    category,
    isChecked,
    fodmapLevel,
    isFromMealPlan,
    notes,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shopping_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<ShoppingItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('list_id')) {
      context.handle(
        _listIdMeta,
        listId.isAcceptableOrUnknown(data['list_id']!, _listIdMeta),
      );
    } else if (isInserting) {
      context.missing(_listIdMeta);
    }
    if (data.containsKey('ingredient_id')) {
      context.handle(
        _ingredientIdMeta,
        ingredientId.isAcceptableOrUnknown(
          data['ingredient_id']!,
          _ingredientIdMeta,
        ),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('is_checked')) {
      context.handle(
        _isCheckedMeta,
        isChecked.isAcceptableOrUnknown(data['is_checked']!, _isCheckedMeta),
      );
    }
    if (data.containsKey('fodmap_level')) {
      context.handle(
        _fodmapLevelMeta,
        fodmapLevel.isAcceptableOrUnknown(
          data['fodmap_level']!,
          _fodmapLevelMeta,
        ),
      );
    }
    if (data.containsKey('is_from_meal_plan')) {
      context.handle(
        _isFromMealPlanMeta,
        isFromMealPlan.isAcceptableOrUnknown(
          data['is_from_meal_plan']!,
          _isFromMealPlanMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ShoppingItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShoppingItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      listId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}list_id'],
      )!,
      ingredientId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ingredient_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}amount'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
      isChecked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_checked'],
      )!,
      fodmapLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fodmap_level'],
      ),
      isFromMealPlan: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_from_meal_plan'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      ),
    );
  }

  @override
  $ShoppingItemsTable createAlias(String alias) {
    return $ShoppingItemsTable(attachedDatabase, alias);
  }
}

class ShoppingItem extends DataClass implements Insertable<ShoppingItem> {
  final String id;
  final String listId;
  final String? ingredientId;
  final String name;
  final String? amount;
  final String? category;
  final bool isChecked;
  final String? fodmapLevel;
  final bool isFromMealPlan;
  final String? notes;
  final int? sortOrder;
  const ShoppingItem({
    required this.id,
    required this.listId,
    this.ingredientId,
    required this.name,
    this.amount,
    this.category,
    required this.isChecked,
    this.fodmapLevel,
    required this.isFromMealPlan,
    this.notes,
    this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['list_id'] = Variable<String>(listId);
    if (!nullToAbsent || ingredientId != null) {
      map['ingredient_id'] = Variable<String>(ingredientId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<String>(amount);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    map['is_checked'] = Variable<bool>(isChecked);
    if (!nullToAbsent || fodmapLevel != null) {
      map['fodmap_level'] = Variable<String>(fodmapLevel);
    }
    map['is_from_meal_plan'] = Variable<bool>(isFromMealPlan);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || sortOrder != null) {
      map['sort_order'] = Variable<int>(sortOrder);
    }
    return map;
  }

  ShoppingItemsCompanion toCompanion(bool nullToAbsent) {
    return ShoppingItemsCompanion(
      id: Value(id),
      listId: Value(listId),
      ingredientId: ingredientId == null && nullToAbsent
          ? const Value.absent()
          : Value(ingredientId),
      name: Value(name),
      amount: amount == null && nullToAbsent
          ? const Value.absent()
          : Value(amount),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      isChecked: Value(isChecked),
      fodmapLevel: fodmapLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(fodmapLevel),
      isFromMealPlan: Value(isFromMealPlan),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      sortOrder: sortOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(sortOrder),
    );
  }

  factory ShoppingItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShoppingItem(
      id: serializer.fromJson<String>(json['id']),
      listId: serializer.fromJson<String>(json['listId']),
      ingredientId: serializer.fromJson<String?>(json['ingredientId']),
      name: serializer.fromJson<String>(json['name']),
      amount: serializer.fromJson<String?>(json['amount']),
      category: serializer.fromJson<String?>(json['category']),
      isChecked: serializer.fromJson<bool>(json['isChecked']),
      fodmapLevel: serializer.fromJson<String?>(json['fodmapLevel']),
      isFromMealPlan: serializer.fromJson<bool>(json['isFromMealPlan']),
      notes: serializer.fromJson<String?>(json['notes']),
      sortOrder: serializer.fromJson<int?>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'listId': serializer.toJson<String>(listId),
      'ingredientId': serializer.toJson<String?>(ingredientId),
      'name': serializer.toJson<String>(name),
      'amount': serializer.toJson<String?>(amount),
      'category': serializer.toJson<String?>(category),
      'isChecked': serializer.toJson<bool>(isChecked),
      'fodmapLevel': serializer.toJson<String?>(fodmapLevel),
      'isFromMealPlan': serializer.toJson<bool>(isFromMealPlan),
      'notes': serializer.toJson<String?>(notes),
      'sortOrder': serializer.toJson<int?>(sortOrder),
    };
  }

  ShoppingItem copyWith({
    String? id,
    String? listId,
    Value<String?> ingredientId = const Value.absent(),
    String? name,
    Value<String?> amount = const Value.absent(),
    Value<String?> category = const Value.absent(),
    bool? isChecked,
    Value<String?> fodmapLevel = const Value.absent(),
    bool? isFromMealPlan,
    Value<String?> notes = const Value.absent(),
    Value<int?> sortOrder = const Value.absent(),
  }) => ShoppingItem(
    id: id ?? this.id,
    listId: listId ?? this.listId,
    ingredientId: ingredientId.present ? ingredientId.value : this.ingredientId,
    name: name ?? this.name,
    amount: amount.present ? amount.value : this.amount,
    category: category.present ? category.value : this.category,
    isChecked: isChecked ?? this.isChecked,
    fodmapLevel: fodmapLevel.present ? fodmapLevel.value : this.fodmapLevel,
    isFromMealPlan: isFromMealPlan ?? this.isFromMealPlan,
    notes: notes.present ? notes.value : this.notes,
    sortOrder: sortOrder.present ? sortOrder.value : this.sortOrder,
  );
  ShoppingItem copyWithCompanion(ShoppingItemsCompanion data) {
    return ShoppingItem(
      id: data.id.present ? data.id.value : this.id,
      listId: data.listId.present ? data.listId.value : this.listId,
      ingredientId: data.ingredientId.present
          ? data.ingredientId.value
          : this.ingredientId,
      name: data.name.present ? data.name.value : this.name,
      amount: data.amount.present ? data.amount.value : this.amount,
      category: data.category.present ? data.category.value : this.category,
      isChecked: data.isChecked.present ? data.isChecked.value : this.isChecked,
      fodmapLevel: data.fodmapLevel.present
          ? data.fodmapLevel.value
          : this.fodmapLevel,
      isFromMealPlan: data.isFromMealPlan.present
          ? data.isFromMealPlan.value
          : this.isFromMealPlan,
      notes: data.notes.present ? data.notes.value : this.notes,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ShoppingItem(')
          ..write('id: $id, ')
          ..write('listId: $listId, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('category: $category, ')
          ..write('isChecked: $isChecked, ')
          ..write('fodmapLevel: $fodmapLevel, ')
          ..write('isFromMealPlan: $isFromMealPlan, ')
          ..write('notes: $notes, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    listId,
    ingredientId,
    name,
    amount,
    category,
    isChecked,
    fodmapLevel,
    isFromMealPlan,
    notes,
    sortOrder,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShoppingItem &&
          other.id == this.id &&
          other.listId == this.listId &&
          other.ingredientId == this.ingredientId &&
          other.name == this.name &&
          other.amount == this.amount &&
          other.category == this.category &&
          other.isChecked == this.isChecked &&
          other.fodmapLevel == this.fodmapLevel &&
          other.isFromMealPlan == this.isFromMealPlan &&
          other.notes == this.notes &&
          other.sortOrder == this.sortOrder);
}

class ShoppingItemsCompanion extends UpdateCompanion<ShoppingItem> {
  final Value<String> id;
  final Value<String> listId;
  final Value<String?> ingredientId;
  final Value<String> name;
  final Value<String?> amount;
  final Value<String?> category;
  final Value<bool> isChecked;
  final Value<String?> fodmapLevel;
  final Value<bool> isFromMealPlan;
  final Value<String?> notes;
  final Value<int?> sortOrder;
  final Value<int> rowid;
  const ShoppingItemsCompanion({
    this.id = const Value.absent(),
    this.listId = const Value.absent(),
    this.ingredientId = const Value.absent(),
    this.name = const Value.absent(),
    this.amount = const Value.absent(),
    this.category = const Value.absent(),
    this.isChecked = const Value.absent(),
    this.fodmapLevel = const Value.absent(),
    this.isFromMealPlan = const Value.absent(),
    this.notes = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ShoppingItemsCompanion.insert({
    required String id,
    required String listId,
    this.ingredientId = const Value.absent(),
    required String name,
    this.amount = const Value.absent(),
    this.category = const Value.absent(),
    this.isChecked = const Value.absent(),
    this.fodmapLevel = const Value.absent(),
    this.isFromMealPlan = const Value.absent(),
    this.notes = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       listId = Value(listId),
       name = Value(name);
  static Insertable<ShoppingItem> custom({
    Expression<String>? id,
    Expression<String>? listId,
    Expression<String>? ingredientId,
    Expression<String>? name,
    Expression<String>? amount,
    Expression<String>? category,
    Expression<bool>? isChecked,
    Expression<String>? fodmapLevel,
    Expression<bool>? isFromMealPlan,
    Expression<String>? notes,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (listId != null) 'list_id': listId,
      if (ingredientId != null) 'ingredient_id': ingredientId,
      if (name != null) 'name': name,
      if (amount != null) 'amount': amount,
      if (category != null) 'category': category,
      if (isChecked != null) 'is_checked': isChecked,
      if (fodmapLevel != null) 'fodmap_level': fodmapLevel,
      if (isFromMealPlan != null) 'is_from_meal_plan': isFromMealPlan,
      if (notes != null) 'notes': notes,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ShoppingItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? listId,
    Value<String?>? ingredientId,
    Value<String>? name,
    Value<String?>? amount,
    Value<String?>? category,
    Value<bool>? isChecked,
    Value<String?>? fodmapLevel,
    Value<bool>? isFromMealPlan,
    Value<String?>? notes,
    Value<int?>? sortOrder,
    Value<int>? rowid,
  }) {
    return ShoppingItemsCompanion(
      id: id ?? this.id,
      listId: listId ?? this.listId,
      ingredientId: ingredientId ?? this.ingredientId,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      isChecked: isChecked ?? this.isChecked,
      fodmapLevel: fodmapLevel ?? this.fodmapLevel,
      isFromMealPlan: isFromMealPlan ?? this.isFromMealPlan,
      notes: notes ?? this.notes,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (listId.present) {
      map['list_id'] = Variable<String>(listId.value);
    }
    if (ingredientId.present) {
      map['ingredient_id'] = Variable<String>(ingredientId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (amount.present) {
      map['amount'] = Variable<String>(amount.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (isChecked.present) {
      map['is_checked'] = Variable<bool>(isChecked.value);
    }
    if (fodmapLevel.present) {
      map['fodmap_level'] = Variable<String>(fodmapLevel.value);
    }
    if (isFromMealPlan.present) {
      map['is_from_meal_plan'] = Variable<bool>(isFromMealPlan.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShoppingItemsCompanion(')
          ..write('id: $id, ')
          ..write('listId: $listId, ')
          ..write('ingredientId: $ingredientId, ')
          ..write('name: $name, ')
          ..write('amount: $amount, ')
          ..write('category: $category, ')
          ..write('isChecked: $isChecked, ')
          ..write('fodmapLevel: $fodmapLevel, ')
          ..write('isFromMealPlan: $isFromMealPlan, ')
          ..write('notes: $notes, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LlmCacheTable extends LlmCache
    with TableInfo<$LlmCacheTable, LlmCacheData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LlmCacheTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cacheKeyMeta = const VerificationMeta(
    'cacheKey',
  );
  @override
  late final GeneratedColumn<String> cacheKey = GeneratedColumn<String>(
    'cache_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _providerMeta = const VerificationMeta(
    'provider',
  );
  @override
  late final GeneratedColumn<String> provider = GeneratedColumn<String>(
    'provider',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
    'model',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _promptHashMeta = const VerificationMeta(
    'promptHash',
  );
  @override
  late final GeneratedColumn<String> promptHash = GeneratedColumn<String>(
    'prompt_hash',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _responseJsonMeta = const VerificationMeta(
    'responseJson',
  );
  @override
  late final GeneratedColumn<String> responseJson = GeneratedColumn<String>(
    'response_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tokensUsedMeta = const VerificationMeta(
    'tokensUsed',
  );
  @override
  late final GeneratedColumn<int> tokensUsed = GeneratedColumn<int>(
    'tokens_used',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _expiresAtMeta = const VerificationMeta(
    'expiresAt',
  );
  @override
  late final GeneratedColumn<DateTime> expiresAt = GeneratedColumn<DateTime>(
    'expires_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cacheKey,
    provider,
    model,
    promptHash,
    responseJson,
    tokensUsed,
    createdAt,
    expiresAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'llm_cache';
  @override
  VerificationContext validateIntegrity(
    Insertable<LlmCacheData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('cache_key')) {
      context.handle(
        _cacheKeyMeta,
        cacheKey.isAcceptableOrUnknown(data['cache_key']!, _cacheKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_cacheKeyMeta);
    }
    if (data.containsKey('provider')) {
      context.handle(
        _providerMeta,
        provider.isAcceptableOrUnknown(data['provider']!, _providerMeta),
      );
    } else if (isInserting) {
      context.missing(_providerMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
        _modelMeta,
        model.isAcceptableOrUnknown(data['model']!, _modelMeta),
      );
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    if (data.containsKey('prompt_hash')) {
      context.handle(
        _promptHashMeta,
        promptHash.isAcceptableOrUnknown(data['prompt_hash']!, _promptHashMeta),
      );
    } else if (isInserting) {
      context.missing(_promptHashMeta);
    }
    if (data.containsKey('response_json')) {
      context.handle(
        _responseJsonMeta,
        responseJson.isAcceptableOrUnknown(
          data['response_json']!,
          _responseJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_responseJsonMeta);
    }
    if (data.containsKey('tokens_used')) {
      context.handle(
        _tokensUsedMeta,
        tokensUsed.isAcceptableOrUnknown(data['tokens_used']!, _tokensUsedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('expires_at')) {
      context.handle(
        _expiresAtMeta,
        expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LlmCacheData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LlmCacheData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      cacheKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cache_key'],
      )!,
      provider: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}provider'],
      )!,
      model: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}model'],
      )!,
      promptHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}prompt_hash'],
      )!,
      responseJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}response_json'],
      )!,
      tokensUsed: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tokens_used'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      expiresAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}expires_at'],
      ),
    );
  }

  @override
  $LlmCacheTable createAlias(String alias) {
    return $LlmCacheTable(attachedDatabase, alias);
  }
}

class LlmCacheData extends DataClass implements Insertable<LlmCacheData> {
  final String id;
  final String cacheKey;
  final String provider;
  final String model;
  final String promptHash;
  final String responseJson;
  final int? tokensUsed;
  final DateTime createdAt;
  final DateTime? expiresAt;
  const LlmCacheData({
    required this.id,
    required this.cacheKey,
    required this.provider,
    required this.model,
    required this.promptHash,
    required this.responseJson,
    this.tokensUsed,
    required this.createdAt,
    this.expiresAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['cache_key'] = Variable<String>(cacheKey);
    map['provider'] = Variable<String>(provider);
    map['model'] = Variable<String>(model);
    map['prompt_hash'] = Variable<String>(promptHash);
    map['response_json'] = Variable<String>(responseJson);
    if (!nullToAbsent || tokensUsed != null) {
      map['tokens_used'] = Variable<int>(tokensUsed);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || expiresAt != null) {
      map['expires_at'] = Variable<DateTime>(expiresAt);
    }
    return map;
  }

  LlmCacheCompanion toCompanion(bool nullToAbsent) {
    return LlmCacheCompanion(
      id: Value(id),
      cacheKey: Value(cacheKey),
      provider: Value(provider),
      model: Value(model),
      promptHash: Value(promptHash),
      responseJson: Value(responseJson),
      tokensUsed: tokensUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(tokensUsed),
      createdAt: Value(createdAt),
      expiresAt: expiresAt == null && nullToAbsent
          ? const Value.absent()
          : Value(expiresAt),
    );
  }

  factory LlmCacheData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LlmCacheData(
      id: serializer.fromJson<String>(json['id']),
      cacheKey: serializer.fromJson<String>(json['cacheKey']),
      provider: serializer.fromJson<String>(json['provider']),
      model: serializer.fromJson<String>(json['model']),
      promptHash: serializer.fromJson<String>(json['promptHash']),
      responseJson: serializer.fromJson<String>(json['responseJson']),
      tokensUsed: serializer.fromJson<int?>(json['tokensUsed']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      expiresAt: serializer.fromJson<DateTime?>(json['expiresAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'cacheKey': serializer.toJson<String>(cacheKey),
      'provider': serializer.toJson<String>(provider),
      'model': serializer.toJson<String>(model),
      'promptHash': serializer.toJson<String>(promptHash),
      'responseJson': serializer.toJson<String>(responseJson),
      'tokensUsed': serializer.toJson<int?>(tokensUsed),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'expiresAt': serializer.toJson<DateTime?>(expiresAt),
    };
  }

  LlmCacheData copyWith({
    String? id,
    String? cacheKey,
    String? provider,
    String? model,
    String? promptHash,
    String? responseJson,
    Value<int?> tokensUsed = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> expiresAt = const Value.absent(),
  }) => LlmCacheData(
    id: id ?? this.id,
    cacheKey: cacheKey ?? this.cacheKey,
    provider: provider ?? this.provider,
    model: model ?? this.model,
    promptHash: promptHash ?? this.promptHash,
    responseJson: responseJson ?? this.responseJson,
    tokensUsed: tokensUsed.present ? tokensUsed.value : this.tokensUsed,
    createdAt: createdAt ?? this.createdAt,
    expiresAt: expiresAt.present ? expiresAt.value : this.expiresAt,
  );
  LlmCacheData copyWithCompanion(LlmCacheCompanion data) {
    return LlmCacheData(
      id: data.id.present ? data.id.value : this.id,
      cacheKey: data.cacheKey.present ? data.cacheKey.value : this.cacheKey,
      provider: data.provider.present ? data.provider.value : this.provider,
      model: data.model.present ? data.model.value : this.model,
      promptHash: data.promptHash.present
          ? data.promptHash.value
          : this.promptHash,
      responseJson: data.responseJson.present
          ? data.responseJson.value
          : this.responseJson,
      tokensUsed: data.tokensUsed.present
          ? data.tokensUsed.value
          : this.tokensUsed,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LlmCacheData(')
          ..write('id: $id, ')
          ..write('cacheKey: $cacheKey, ')
          ..write('provider: $provider, ')
          ..write('model: $model, ')
          ..write('promptHash: $promptHash, ')
          ..write('responseJson: $responseJson, ')
          ..write('tokensUsed: $tokensUsed, ')
          ..write('createdAt: $createdAt, ')
          ..write('expiresAt: $expiresAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    cacheKey,
    provider,
    model,
    promptHash,
    responseJson,
    tokensUsed,
    createdAt,
    expiresAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LlmCacheData &&
          other.id == this.id &&
          other.cacheKey == this.cacheKey &&
          other.provider == this.provider &&
          other.model == this.model &&
          other.promptHash == this.promptHash &&
          other.responseJson == this.responseJson &&
          other.tokensUsed == this.tokensUsed &&
          other.createdAt == this.createdAt &&
          other.expiresAt == this.expiresAt);
}

class LlmCacheCompanion extends UpdateCompanion<LlmCacheData> {
  final Value<String> id;
  final Value<String> cacheKey;
  final Value<String> provider;
  final Value<String> model;
  final Value<String> promptHash;
  final Value<String> responseJson;
  final Value<int?> tokensUsed;
  final Value<DateTime> createdAt;
  final Value<DateTime?> expiresAt;
  final Value<int> rowid;
  const LlmCacheCompanion({
    this.id = const Value.absent(),
    this.cacheKey = const Value.absent(),
    this.provider = const Value.absent(),
    this.model = const Value.absent(),
    this.promptHash = const Value.absent(),
    this.responseJson = const Value.absent(),
    this.tokensUsed = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LlmCacheCompanion.insert({
    required String id,
    required String cacheKey,
    required String provider,
    required String model,
    required String promptHash,
    required String responseJson,
    this.tokensUsed = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       cacheKey = Value(cacheKey),
       provider = Value(provider),
       model = Value(model),
       promptHash = Value(promptHash),
       responseJson = Value(responseJson);
  static Insertable<LlmCacheData> custom({
    Expression<String>? id,
    Expression<String>? cacheKey,
    Expression<String>? provider,
    Expression<String>? model,
    Expression<String>? promptHash,
    Expression<String>? responseJson,
    Expression<int>? tokensUsed,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? expiresAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cacheKey != null) 'cache_key': cacheKey,
      if (provider != null) 'provider': provider,
      if (model != null) 'model': model,
      if (promptHash != null) 'prompt_hash': promptHash,
      if (responseJson != null) 'response_json': responseJson,
      if (tokensUsed != null) 'tokens_used': tokensUsed,
      if (createdAt != null) 'created_at': createdAt,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LlmCacheCompanion copyWith({
    Value<String>? id,
    Value<String>? cacheKey,
    Value<String>? provider,
    Value<String>? model,
    Value<String>? promptHash,
    Value<String>? responseJson,
    Value<int?>? tokensUsed,
    Value<DateTime>? createdAt,
    Value<DateTime?>? expiresAt,
    Value<int>? rowid,
  }) {
    return LlmCacheCompanion(
      id: id ?? this.id,
      cacheKey: cacheKey ?? this.cacheKey,
      provider: provider ?? this.provider,
      model: model ?? this.model,
      promptHash: promptHash ?? this.promptHash,
      responseJson: responseJson ?? this.responseJson,
      tokensUsed: tokensUsed ?? this.tokensUsed,
      createdAt: createdAt ?? this.createdAt,
      expiresAt: expiresAt ?? this.expiresAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (cacheKey.present) {
      map['cache_key'] = Variable<String>(cacheKey.value);
    }
    if (provider.present) {
      map['provider'] = Variable<String>(provider.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (promptHash.present) {
      map['prompt_hash'] = Variable<String>(promptHash.value);
    }
    if (responseJson.present) {
      map['response_json'] = Variable<String>(responseJson.value);
    }
    if (tokensUsed.present) {
      map['tokens_used'] = Variable<int>(tokensUsed.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<DateTime>(expiresAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LlmCacheCompanion(')
          ..write('id: $id, ')
          ..write('cacheKey: $cacheKey, ')
          ..write('provider: $provider, ')
          ..write('model: $model, ')
          ..write('promptHash: $promptHash, ')
          ..write('responseJson: $responseJson, ')
          ..write('tokensUsed: $tokensUsed, ')
          ..write('createdAt: $createdAt, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings with TableInfo<$SettingsTable, Setting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<Setting> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Setting(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class Setting extends DataClass implements Insertable<Setting> {
  final String key;
  final String value;
  final DateTime updatedAt;
  const Setting({
    required this.key,
    required this.value,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      key: Value(key),
      value: Value(value),
      updatedAt: Value(updatedAt),
    );
  }

  factory Setting.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Setting(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Setting copyWith({String? key, String? value, DateTime? updatedAt}) =>
      Setting(
        key: key ?? this.key,
        value: value ?? this.value,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Setting copyWithCompanion(SettingsCompanion data) {
    return Setting(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting &&
          other.key == this.key &&
          other.value == this.value &&
          other.updatedAt == this.updatedAt);
}

class SettingsCompanion extends UpdateCompanion<Setting> {
  final Value<String> key;
  final Value<String> value;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const SettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsCompanion.insert({
    required String key,
    required String value,
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<Setting> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return SettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $IngredientsTable ingredients = $IngredientsTable(this);
  late final $NutritionDataTableTable nutritionDataTable =
      $NutritionDataTableTable(this);
  late final $FodmapDataTableTable fodmapDataTable = $FodmapDataTableTable(
    this,
  );
  late final $RecipesTable recipes = $RecipesTable(this);
  late final $RecipeIngredientsTable recipeIngredients =
      $RecipeIngredientsTable(this);
  late final $FoodLogsTable foodLogs = $FoodLogsTable(this);
  late final $SupplementsTable supplements = $SupplementsTable(this);
  late final $SupplementLogsTable supplementLogs = $SupplementLogsTable(this);
  late final $WorkoutTemplatesTable workoutTemplates = $WorkoutTemplatesTable(
    this,
  );
  late final $WorkoutsTable workouts = $WorkoutsTable(this);
  late final $ExercisesTable exercises = $ExercisesTable(this);
  late final $WorkoutSetsTable workoutSets = $WorkoutSetsTable(this);
  late final $HabitsTable habits = $HabitsTable(this);
  late final $HabitLogsTable habitLogs = $HabitLogsTable(this);
  late final $SymptomLogsTable symptomLogs = $SymptomLogsTable(this);
  late final $BodyMeasurementsTable bodyMeasurements = $BodyMeasurementsTable(
    this,
  );
  late final $PantryItemsTable pantryItems = $PantryItemsTable(this);
  late final $ShoppingListsTable shoppingLists = $ShoppingListsTable(this);
  late final $ShoppingItemsTable shoppingItems = $ShoppingItemsTable(this);
  late final $LlmCacheTable llmCache = $LlmCacheTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    ingredients,
    nutritionDataTable,
    fodmapDataTable,
    recipes,
    recipeIngredients,
    foodLogs,
    supplements,
    supplementLogs,
    workoutTemplates,
    workouts,
    exercises,
    workoutSets,
    habits,
    habitLogs,
    symptomLogs,
    bodyMeasurements,
    pantryItems,
    shoppingLists,
    shoppingItems,
    llmCache,
    settings,
  ];
}

typedef $$IngredientsTableCreateCompanionBuilder =
    IngredientsCompanion Function({
      required String id,
      required String name,
      Value<String?> nameFr,
      Value<String?> category,
      Value<String?> brand,
      Value<String?> barcode,
      Value<bool> isCustom,
      Value<String?> source,
      Value<String?> sourceId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$IngredientsTableUpdateCompanionBuilder =
    IngredientsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> nameFr,
      Value<String?> category,
      Value<String?> brand,
      Value<String?> barcode,
      Value<bool> isCustom,
      Value<String?> source,
      Value<String?> sourceId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$IngredientsTableReferences
    extends BaseReferences<_$AppDatabase, $IngredientsTable, Ingredient> {
  $$IngredientsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $NutritionDataTableTable,
    List<NutritionDataTableData>
  >
  _nutritionDataTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.nutritionDataTable,
        aliasName: $_aliasNameGenerator(
          db.ingredients.id,
          db.nutritionDataTable.ingredientId,
        ),
      );

  $$NutritionDataTableTableProcessedTableManager get nutritionDataTableRefs {
    final manager = $$NutritionDataTableTableTableManager(
      $_db,
      $_db.nutritionDataTable,
    ).filter((f) => f.ingredientId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _nutritionDataTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FodmapDataTableTable, List<FodmapDataTableData>>
  _fodmapDataTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.fodmapDataTable,
    aliasName: $_aliasNameGenerator(
      db.ingredients.id,
      db.fodmapDataTable.ingredientId,
    ),
  );

  $$FodmapDataTableTableProcessedTableManager get fodmapDataTableRefs {
    final manager = $$FodmapDataTableTableTableManager(
      $_db,
      $_db.fodmapDataTable,
    ).filter((f) => f.ingredientId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _fodmapDataTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecipeIngredientsTable, List<RecipeIngredient>>
  _recipeIngredientsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recipeIngredients,
        aliasName: $_aliasNameGenerator(
          db.ingredients.id,
          db.recipeIngredients.ingredientId,
        ),
      );

  $$RecipeIngredientsTableProcessedTableManager get recipeIngredientsRefs {
    final manager = $$RecipeIngredientsTableTableManager(
      $_db,
      $_db.recipeIngredients,
    ).filter((f) => f.ingredientId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recipeIngredientsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FoodLogsTable, List<FoodLog>> _foodLogsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.foodLogs,
    aliasName: $_aliasNameGenerator(
      db.ingredients.id,
      db.foodLogs.ingredientId,
    ),
  );

  $$FoodLogsTableProcessedTableManager get foodLogsRefs {
    final manager = $$FoodLogsTableTableManager(
      $_db,
      $_db.foodLogs,
    ).filter((f) => f.ingredientId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_foodLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PantryItemsTable, List<PantryItem>>
  _pantryItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.pantryItems,
    aliasName: $_aliasNameGenerator(
      db.ingredients.id,
      db.pantryItems.ingredientId,
    ),
  );

  $$PantryItemsTableProcessedTableManager get pantryItemsRefs {
    final manager = $$PantryItemsTableTableManager(
      $_db,
      $_db.pantryItems,
    ).filter((f) => f.ingredientId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_pantryItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ShoppingItemsTable, List<ShoppingItem>>
  _shoppingItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.shoppingItems,
    aliasName: $_aliasNameGenerator(
      db.ingredients.id,
      db.shoppingItems.ingredientId,
    ),
  );

  $$ShoppingItemsTableProcessedTableManager get shoppingItemsRefs {
    final manager = $$ShoppingItemsTableTableManager(
      $_db,
      $_db.shoppingItems,
    ).filter((f) => f.ingredientId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_shoppingItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$IngredientsTableFilterComposer
    extends Composer<_$AppDatabase, $IngredientsTable> {
  $$IngredientsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nameFr => $composableBuilder(
    column: $table.nameFr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCustom => $composableBuilder(
    column: $table.isCustom,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> nutritionDataTableRefs(
    Expression<bool> Function($$NutritionDataTableTableFilterComposer f) f,
  ) {
    final $$NutritionDataTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.nutritionDataTable,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NutritionDataTableTableFilterComposer(
            $db: $db,
            $table: $db.nutritionDataTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> fodmapDataTableRefs(
    Expression<bool> Function($$FodmapDataTableTableFilterComposer f) f,
  ) {
    final $$FodmapDataTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.fodmapDataTable,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FodmapDataTableTableFilterComposer(
            $db: $db,
            $table: $db.fodmapDataTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recipeIngredientsRefs(
    Expression<bool> Function($$RecipeIngredientsTableFilterComposer f) f,
  ) {
    final $$RecipeIngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recipeIngredients,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipeIngredientsTableFilterComposer(
            $db: $db,
            $table: $db.recipeIngredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> foodLogsRefs(
    Expression<bool> Function($$FoodLogsTableFilterComposer f) f,
  ) {
    final $$FoodLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.foodLogs,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FoodLogsTableFilterComposer(
            $db: $db,
            $table: $db.foodLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> pantryItemsRefs(
    Expression<bool> Function($$PantryItemsTableFilterComposer f) f,
  ) {
    final $$PantryItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pantryItems,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PantryItemsTableFilterComposer(
            $db: $db,
            $table: $db.pantryItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> shoppingItemsRefs(
    Expression<bool> Function($$ShoppingItemsTableFilterComposer f) f,
  ) {
    final $$ShoppingItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.shoppingItems,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShoppingItemsTableFilterComposer(
            $db: $db,
            $table: $db.shoppingItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$IngredientsTableOrderingComposer
    extends Composer<_$AppDatabase, $IngredientsTable> {
  $$IngredientsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nameFr => $composableBuilder(
    column: $table.nameFr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get barcode => $composableBuilder(
    column: $table.barcode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCustom => $composableBuilder(
    column: $table.isCustom,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$IngredientsTableAnnotationComposer
    extends Composer<_$AppDatabase, $IngredientsTable> {
  $$IngredientsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get nameFr =>
      $composableBuilder(column: $table.nameFr, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);

  GeneratedColumn<bool> get isCustom =>
      $composableBuilder(column: $table.isCustom, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<String> get sourceId =>
      $composableBuilder(column: $table.sourceId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> nutritionDataTableRefs<T extends Object>(
    Expression<T> Function($$NutritionDataTableTableAnnotationComposer a) f,
  ) {
    final $$NutritionDataTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.nutritionDataTable,
          getReferencedColumn: (t) => t.ingredientId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$NutritionDataTableTableAnnotationComposer(
                $db: $db,
                $table: $db.nutritionDataTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> fodmapDataTableRefs<T extends Object>(
    Expression<T> Function($$FodmapDataTableTableAnnotationComposer a) f,
  ) {
    final $$FodmapDataTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.fodmapDataTable,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FodmapDataTableTableAnnotationComposer(
            $db: $db,
            $table: $db.fodmapDataTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recipeIngredientsRefs<T extends Object>(
    Expression<T> Function($$RecipeIngredientsTableAnnotationComposer a) f,
  ) {
    final $$RecipeIngredientsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recipeIngredients,
          getReferencedColumn: (t) => t.ingredientId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecipeIngredientsTableAnnotationComposer(
                $db: $db,
                $table: $db.recipeIngredients,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> foodLogsRefs<T extends Object>(
    Expression<T> Function($$FoodLogsTableAnnotationComposer a) f,
  ) {
    final $$FoodLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.foodLogs,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FoodLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.foodLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> pantryItemsRefs<T extends Object>(
    Expression<T> Function($$PantryItemsTableAnnotationComposer a) f,
  ) {
    final $$PantryItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pantryItems,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PantryItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.pantryItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> shoppingItemsRefs<T extends Object>(
    Expression<T> Function($$ShoppingItemsTableAnnotationComposer a) f,
  ) {
    final $$ShoppingItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.shoppingItems,
      getReferencedColumn: (t) => t.ingredientId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShoppingItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.shoppingItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$IngredientsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $IngredientsTable,
          Ingredient,
          $$IngredientsTableFilterComposer,
          $$IngredientsTableOrderingComposer,
          $$IngredientsTableAnnotationComposer,
          $$IngredientsTableCreateCompanionBuilder,
          $$IngredientsTableUpdateCompanionBuilder,
          (Ingredient, $$IngredientsTableReferences),
          Ingredient,
          PrefetchHooks Function({
            bool nutritionDataTableRefs,
            bool fodmapDataTableRefs,
            bool recipeIngredientsRefs,
            bool foodLogsRefs,
            bool pantryItemsRefs,
            bool shoppingItemsRefs,
          })
        > {
  $$IngredientsTableTableManager(_$AppDatabase db, $IngredientsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$IngredientsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$IngredientsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$IngredientsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> nameFr = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<String?> brand = const Value.absent(),
                Value<String?> barcode = const Value.absent(),
                Value<bool> isCustom = const Value.absent(),
                Value<String?> source = const Value.absent(),
                Value<String?> sourceId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => IngredientsCompanion(
                id: id,
                name: name,
                nameFr: nameFr,
                category: category,
                brand: brand,
                barcode: barcode,
                isCustom: isCustom,
                source: source,
                sourceId: sourceId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> nameFr = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<String?> brand = const Value.absent(),
                Value<String?> barcode = const Value.absent(),
                Value<bool> isCustom = const Value.absent(),
                Value<String?> source = const Value.absent(),
                Value<String?> sourceId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => IngredientsCompanion.insert(
                id: id,
                name: name,
                nameFr: nameFr,
                category: category,
                brand: brand,
                barcode: barcode,
                isCustom: isCustom,
                source: source,
                sourceId: sourceId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$IngredientsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                nutritionDataTableRefs = false,
                fodmapDataTableRefs = false,
                recipeIngredientsRefs = false,
                foodLogsRefs = false,
                pantryItemsRefs = false,
                shoppingItemsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (nutritionDataTableRefs) db.nutritionDataTable,
                    if (fodmapDataTableRefs) db.fodmapDataTable,
                    if (recipeIngredientsRefs) db.recipeIngredients,
                    if (foodLogsRefs) db.foodLogs,
                    if (pantryItemsRefs) db.pantryItems,
                    if (shoppingItemsRefs) db.shoppingItems,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (nutritionDataTableRefs)
                        await $_getPrefetchedData<
                          Ingredient,
                          $IngredientsTable,
                          NutritionDataTableData
                        >(
                          currentTable: table,
                          referencedTable: $$IngredientsTableReferences
                              ._nutritionDataTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$IngredientsTableReferences(
                                db,
                                table,
                                p0,
                              ).nutritionDataTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ingredientId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (fodmapDataTableRefs)
                        await $_getPrefetchedData<
                          Ingredient,
                          $IngredientsTable,
                          FodmapDataTableData
                        >(
                          currentTable: table,
                          referencedTable: $$IngredientsTableReferences
                              ._fodmapDataTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$IngredientsTableReferences(
                                db,
                                table,
                                p0,
                              ).fodmapDataTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ingredientId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recipeIngredientsRefs)
                        await $_getPrefetchedData<
                          Ingredient,
                          $IngredientsTable,
                          RecipeIngredient
                        >(
                          currentTable: table,
                          referencedTable: $$IngredientsTableReferences
                              ._recipeIngredientsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$IngredientsTableReferences(
                                db,
                                table,
                                p0,
                              ).recipeIngredientsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ingredientId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (foodLogsRefs)
                        await $_getPrefetchedData<
                          Ingredient,
                          $IngredientsTable,
                          FoodLog
                        >(
                          currentTable: table,
                          referencedTable: $$IngredientsTableReferences
                              ._foodLogsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$IngredientsTableReferences(
                                db,
                                table,
                                p0,
                              ).foodLogsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ingredientId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (pantryItemsRefs)
                        await $_getPrefetchedData<
                          Ingredient,
                          $IngredientsTable,
                          PantryItem
                        >(
                          currentTable: table,
                          referencedTable: $$IngredientsTableReferences
                              ._pantryItemsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$IngredientsTableReferences(
                                db,
                                table,
                                p0,
                              ).pantryItemsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ingredientId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (shoppingItemsRefs)
                        await $_getPrefetchedData<
                          Ingredient,
                          $IngredientsTable,
                          ShoppingItem
                        >(
                          currentTable: table,
                          referencedTable: $$IngredientsTableReferences
                              ._shoppingItemsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$IngredientsTableReferences(
                                db,
                                table,
                                p0,
                              ).shoppingItemsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.ingredientId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$IngredientsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $IngredientsTable,
      Ingredient,
      $$IngredientsTableFilterComposer,
      $$IngredientsTableOrderingComposer,
      $$IngredientsTableAnnotationComposer,
      $$IngredientsTableCreateCompanionBuilder,
      $$IngredientsTableUpdateCompanionBuilder,
      (Ingredient, $$IngredientsTableReferences),
      Ingredient,
      PrefetchHooks Function({
        bool nutritionDataTableRefs,
        bool fodmapDataTableRefs,
        bool recipeIngredientsRefs,
        bool foodLogsRefs,
        bool pantryItemsRefs,
        bool shoppingItemsRefs,
      })
    >;
typedef $$NutritionDataTableTableCreateCompanionBuilder =
    NutritionDataTableCompanion Function({
      required String ingredientId,
      Value<double?> energyKcal,
      Value<double?> energyKj,
      Value<double?> proteinG,
      Value<double?> fatTotalG,
      Value<double?> fatSaturatedG,
      Value<double?> fatMonoG,
      Value<double?> fatPolyG,
      Value<double?> carbsG,
      Value<double?> sugarsG,
      Value<double?> fiberG,
      Value<double?> starchG,
      Value<double?> waterG,
      Value<double?> alcoholG,
      Value<double?> calciumMg,
      Value<double?> ironMg,
      Value<double?> magnesiumMg,
      Value<double?> phosphorusMg,
      Value<double?> potassiumMg,
      Value<double?> sodiumMg,
      Value<double?> zincMg,
      Value<double?> copperMg,
      Value<double?> manganeseMg,
      Value<double?> seleniumUg,
      Value<double?> iodineUg,
      Value<double?> vitaminAUg,
      Value<double?> vitaminB1Mg,
      Value<double?> vitaminB2Mg,
      Value<double?> vitaminB3Mg,
      Value<double?> vitaminB5Mg,
      Value<double?> vitaminB6Mg,
      Value<double?> vitaminB9Ug,
      Value<double?> vitaminB12Ug,
      Value<double?> vitaminCMg,
      Value<double?> vitaminDUg,
      Value<double?> vitaminEMg,
      Value<double?> vitaminKUg,
      Value<int> rowid,
    });
typedef $$NutritionDataTableTableUpdateCompanionBuilder =
    NutritionDataTableCompanion Function({
      Value<String> ingredientId,
      Value<double?> energyKcal,
      Value<double?> energyKj,
      Value<double?> proteinG,
      Value<double?> fatTotalG,
      Value<double?> fatSaturatedG,
      Value<double?> fatMonoG,
      Value<double?> fatPolyG,
      Value<double?> carbsG,
      Value<double?> sugarsG,
      Value<double?> fiberG,
      Value<double?> starchG,
      Value<double?> waterG,
      Value<double?> alcoholG,
      Value<double?> calciumMg,
      Value<double?> ironMg,
      Value<double?> magnesiumMg,
      Value<double?> phosphorusMg,
      Value<double?> potassiumMg,
      Value<double?> sodiumMg,
      Value<double?> zincMg,
      Value<double?> copperMg,
      Value<double?> manganeseMg,
      Value<double?> seleniumUg,
      Value<double?> iodineUg,
      Value<double?> vitaminAUg,
      Value<double?> vitaminB1Mg,
      Value<double?> vitaminB2Mg,
      Value<double?> vitaminB3Mg,
      Value<double?> vitaminB5Mg,
      Value<double?> vitaminB6Mg,
      Value<double?> vitaminB9Ug,
      Value<double?> vitaminB12Ug,
      Value<double?> vitaminCMg,
      Value<double?> vitaminDUg,
      Value<double?> vitaminEMg,
      Value<double?> vitaminKUg,
      Value<int> rowid,
    });

final class $$NutritionDataTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $NutritionDataTableTable,
          NutritionDataTableData
        > {
  $$NutritionDataTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $IngredientsTable _ingredientIdTable(_$AppDatabase db) =>
      db.ingredients.createAlias(
        $_aliasNameGenerator(
          db.nutritionDataTable.ingredientId,
          db.ingredients.id,
        ),
      );

  $$IngredientsTableProcessedTableManager get ingredientId {
    final $_column = $_itemColumn<String>('ingredient_id')!;

    final manager = $$IngredientsTableTableManager(
      $_db,
      $_db.ingredients,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ingredientIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$NutritionDataTableTableFilterComposer
    extends Composer<_$AppDatabase, $NutritionDataTableTable> {
  $$NutritionDataTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<double> get energyKcal => $composableBuilder(
    column: $table.energyKcal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get energyKj => $composableBuilder(
    column: $table.energyKj,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get proteinG => $composableBuilder(
    column: $table.proteinG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fatTotalG => $composableBuilder(
    column: $table.fatTotalG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fatSaturatedG => $composableBuilder(
    column: $table.fatSaturatedG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fatMonoG => $composableBuilder(
    column: $table.fatMonoG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fatPolyG => $composableBuilder(
    column: $table.fatPolyG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get carbsG => $composableBuilder(
    column: $table.carbsG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sugarsG => $composableBuilder(
    column: $table.sugarsG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fiberG => $composableBuilder(
    column: $table.fiberG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get starchG => $composableBuilder(
    column: $table.starchG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get waterG => $composableBuilder(
    column: $table.waterG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get alcoholG => $composableBuilder(
    column: $table.alcoholG,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get calciumMg => $composableBuilder(
    column: $table.calciumMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get ironMg => $composableBuilder(
    column: $table.ironMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get magnesiumMg => $composableBuilder(
    column: $table.magnesiumMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get phosphorusMg => $composableBuilder(
    column: $table.phosphorusMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get potassiumMg => $composableBuilder(
    column: $table.potassiumMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get sodiumMg => $composableBuilder(
    column: $table.sodiumMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get zincMg => $composableBuilder(
    column: $table.zincMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get copperMg => $composableBuilder(
    column: $table.copperMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get manganeseMg => $composableBuilder(
    column: $table.manganeseMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get seleniumUg => $composableBuilder(
    column: $table.seleniumUg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get iodineUg => $composableBuilder(
    column: $table.iodineUg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminAUg => $composableBuilder(
    column: $table.vitaminAUg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminB1Mg => $composableBuilder(
    column: $table.vitaminB1Mg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminB2Mg => $composableBuilder(
    column: $table.vitaminB2Mg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminB3Mg => $composableBuilder(
    column: $table.vitaminB3Mg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminB5Mg => $composableBuilder(
    column: $table.vitaminB5Mg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminB6Mg => $composableBuilder(
    column: $table.vitaminB6Mg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminB9Ug => $composableBuilder(
    column: $table.vitaminB9Ug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminB12Ug => $composableBuilder(
    column: $table.vitaminB12Ug,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminCMg => $composableBuilder(
    column: $table.vitaminCMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminDUg => $composableBuilder(
    column: $table.vitaminDUg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminEMg => $composableBuilder(
    column: $table.vitaminEMg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get vitaminKUg => $composableBuilder(
    column: $table.vitaminKUg,
    builder: (column) => ColumnFilters(column),
  );

  $$IngredientsTableFilterComposer get ingredientId {
    final $$IngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableFilterComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NutritionDataTableTableOrderingComposer
    extends Composer<_$AppDatabase, $NutritionDataTableTable> {
  $$NutritionDataTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<double> get energyKcal => $composableBuilder(
    column: $table.energyKcal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get energyKj => $composableBuilder(
    column: $table.energyKj,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get proteinG => $composableBuilder(
    column: $table.proteinG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fatTotalG => $composableBuilder(
    column: $table.fatTotalG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fatSaturatedG => $composableBuilder(
    column: $table.fatSaturatedG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fatMonoG => $composableBuilder(
    column: $table.fatMonoG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fatPolyG => $composableBuilder(
    column: $table.fatPolyG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get carbsG => $composableBuilder(
    column: $table.carbsG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sugarsG => $composableBuilder(
    column: $table.sugarsG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fiberG => $composableBuilder(
    column: $table.fiberG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get starchG => $composableBuilder(
    column: $table.starchG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get waterG => $composableBuilder(
    column: $table.waterG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get alcoholG => $composableBuilder(
    column: $table.alcoholG,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get calciumMg => $composableBuilder(
    column: $table.calciumMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get ironMg => $composableBuilder(
    column: $table.ironMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get magnesiumMg => $composableBuilder(
    column: $table.magnesiumMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get phosphorusMg => $composableBuilder(
    column: $table.phosphorusMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get potassiumMg => $composableBuilder(
    column: $table.potassiumMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get sodiumMg => $composableBuilder(
    column: $table.sodiumMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get zincMg => $composableBuilder(
    column: $table.zincMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get copperMg => $composableBuilder(
    column: $table.copperMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get manganeseMg => $composableBuilder(
    column: $table.manganeseMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get seleniumUg => $composableBuilder(
    column: $table.seleniumUg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get iodineUg => $composableBuilder(
    column: $table.iodineUg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminAUg => $composableBuilder(
    column: $table.vitaminAUg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminB1Mg => $composableBuilder(
    column: $table.vitaminB1Mg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminB2Mg => $composableBuilder(
    column: $table.vitaminB2Mg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminB3Mg => $composableBuilder(
    column: $table.vitaminB3Mg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminB5Mg => $composableBuilder(
    column: $table.vitaminB5Mg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminB6Mg => $composableBuilder(
    column: $table.vitaminB6Mg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminB9Ug => $composableBuilder(
    column: $table.vitaminB9Ug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminB12Ug => $composableBuilder(
    column: $table.vitaminB12Ug,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminCMg => $composableBuilder(
    column: $table.vitaminCMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminDUg => $composableBuilder(
    column: $table.vitaminDUg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminEMg => $composableBuilder(
    column: $table.vitaminEMg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get vitaminKUg => $composableBuilder(
    column: $table.vitaminKUg,
    builder: (column) => ColumnOrderings(column),
  );

  $$IngredientsTableOrderingComposer get ingredientId {
    final $$IngredientsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableOrderingComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NutritionDataTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $NutritionDataTableTable> {
  $$NutritionDataTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<double> get energyKcal => $composableBuilder(
    column: $table.energyKcal,
    builder: (column) => column,
  );

  GeneratedColumn<double> get energyKj =>
      $composableBuilder(column: $table.energyKj, builder: (column) => column);

  GeneratedColumn<double> get proteinG =>
      $composableBuilder(column: $table.proteinG, builder: (column) => column);

  GeneratedColumn<double> get fatTotalG =>
      $composableBuilder(column: $table.fatTotalG, builder: (column) => column);

  GeneratedColumn<double> get fatSaturatedG => $composableBuilder(
    column: $table.fatSaturatedG,
    builder: (column) => column,
  );

  GeneratedColumn<double> get fatMonoG =>
      $composableBuilder(column: $table.fatMonoG, builder: (column) => column);

  GeneratedColumn<double> get fatPolyG =>
      $composableBuilder(column: $table.fatPolyG, builder: (column) => column);

  GeneratedColumn<double> get carbsG =>
      $composableBuilder(column: $table.carbsG, builder: (column) => column);

  GeneratedColumn<double> get sugarsG =>
      $composableBuilder(column: $table.sugarsG, builder: (column) => column);

  GeneratedColumn<double> get fiberG =>
      $composableBuilder(column: $table.fiberG, builder: (column) => column);

  GeneratedColumn<double> get starchG =>
      $composableBuilder(column: $table.starchG, builder: (column) => column);

  GeneratedColumn<double> get waterG =>
      $composableBuilder(column: $table.waterG, builder: (column) => column);

  GeneratedColumn<double> get alcoholG =>
      $composableBuilder(column: $table.alcoholG, builder: (column) => column);

  GeneratedColumn<double> get calciumMg =>
      $composableBuilder(column: $table.calciumMg, builder: (column) => column);

  GeneratedColumn<double> get ironMg =>
      $composableBuilder(column: $table.ironMg, builder: (column) => column);

  GeneratedColumn<double> get magnesiumMg => $composableBuilder(
    column: $table.magnesiumMg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get phosphorusMg => $composableBuilder(
    column: $table.phosphorusMg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get potassiumMg => $composableBuilder(
    column: $table.potassiumMg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get sodiumMg =>
      $composableBuilder(column: $table.sodiumMg, builder: (column) => column);

  GeneratedColumn<double> get zincMg =>
      $composableBuilder(column: $table.zincMg, builder: (column) => column);

  GeneratedColumn<double> get copperMg =>
      $composableBuilder(column: $table.copperMg, builder: (column) => column);

  GeneratedColumn<double> get manganeseMg => $composableBuilder(
    column: $table.manganeseMg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get seleniumUg => $composableBuilder(
    column: $table.seleniumUg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get iodineUg =>
      $composableBuilder(column: $table.iodineUg, builder: (column) => column);

  GeneratedColumn<double> get vitaminAUg => $composableBuilder(
    column: $table.vitaminAUg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminB1Mg => $composableBuilder(
    column: $table.vitaminB1Mg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminB2Mg => $composableBuilder(
    column: $table.vitaminB2Mg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminB3Mg => $composableBuilder(
    column: $table.vitaminB3Mg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminB5Mg => $composableBuilder(
    column: $table.vitaminB5Mg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminB6Mg => $composableBuilder(
    column: $table.vitaminB6Mg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminB9Ug => $composableBuilder(
    column: $table.vitaminB9Ug,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminB12Ug => $composableBuilder(
    column: $table.vitaminB12Ug,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminCMg => $composableBuilder(
    column: $table.vitaminCMg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminDUg => $composableBuilder(
    column: $table.vitaminDUg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminEMg => $composableBuilder(
    column: $table.vitaminEMg,
    builder: (column) => column,
  );

  GeneratedColumn<double> get vitaminKUg => $composableBuilder(
    column: $table.vitaminKUg,
    builder: (column) => column,
  );

  $$IngredientsTableAnnotationComposer get ingredientId {
    final $$IngredientsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableAnnotationComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NutritionDataTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NutritionDataTableTable,
          NutritionDataTableData,
          $$NutritionDataTableTableFilterComposer,
          $$NutritionDataTableTableOrderingComposer,
          $$NutritionDataTableTableAnnotationComposer,
          $$NutritionDataTableTableCreateCompanionBuilder,
          $$NutritionDataTableTableUpdateCompanionBuilder,
          (NutritionDataTableData, $$NutritionDataTableTableReferences),
          NutritionDataTableData,
          PrefetchHooks Function({bool ingredientId})
        > {
  $$NutritionDataTableTableTableManager(
    _$AppDatabase db,
    $NutritionDataTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NutritionDataTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NutritionDataTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NutritionDataTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> ingredientId = const Value.absent(),
                Value<double?> energyKcal = const Value.absent(),
                Value<double?> energyKj = const Value.absent(),
                Value<double?> proteinG = const Value.absent(),
                Value<double?> fatTotalG = const Value.absent(),
                Value<double?> fatSaturatedG = const Value.absent(),
                Value<double?> fatMonoG = const Value.absent(),
                Value<double?> fatPolyG = const Value.absent(),
                Value<double?> carbsG = const Value.absent(),
                Value<double?> sugarsG = const Value.absent(),
                Value<double?> fiberG = const Value.absent(),
                Value<double?> starchG = const Value.absent(),
                Value<double?> waterG = const Value.absent(),
                Value<double?> alcoholG = const Value.absent(),
                Value<double?> calciumMg = const Value.absent(),
                Value<double?> ironMg = const Value.absent(),
                Value<double?> magnesiumMg = const Value.absent(),
                Value<double?> phosphorusMg = const Value.absent(),
                Value<double?> potassiumMg = const Value.absent(),
                Value<double?> sodiumMg = const Value.absent(),
                Value<double?> zincMg = const Value.absent(),
                Value<double?> copperMg = const Value.absent(),
                Value<double?> manganeseMg = const Value.absent(),
                Value<double?> seleniumUg = const Value.absent(),
                Value<double?> iodineUg = const Value.absent(),
                Value<double?> vitaminAUg = const Value.absent(),
                Value<double?> vitaminB1Mg = const Value.absent(),
                Value<double?> vitaminB2Mg = const Value.absent(),
                Value<double?> vitaminB3Mg = const Value.absent(),
                Value<double?> vitaminB5Mg = const Value.absent(),
                Value<double?> vitaminB6Mg = const Value.absent(),
                Value<double?> vitaminB9Ug = const Value.absent(),
                Value<double?> vitaminB12Ug = const Value.absent(),
                Value<double?> vitaminCMg = const Value.absent(),
                Value<double?> vitaminDUg = const Value.absent(),
                Value<double?> vitaminEMg = const Value.absent(),
                Value<double?> vitaminKUg = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NutritionDataTableCompanion(
                ingredientId: ingredientId,
                energyKcal: energyKcal,
                energyKj: energyKj,
                proteinG: proteinG,
                fatTotalG: fatTotalG,
                fatSaturatedG: fatSaturatedG,
                fatMonoG: fatMonoG,
                fatPolyG: fatPolyG,
                carbsG: carbsG,
                sugarsG: sugarsG,
                fiberG: fiberG,
                starchG: starchG,
                waterG: waterG,
                alcoholG: alcoholG,
                calciumMg: calciumMg,
                ironMg: ironMg,
                magnesiumMg: magnesiumMg,
                phosphorusMg: phosphorusMg,
                potassiumMg: potassiumMg,
                sodiumMg: sodiumMg,
                zincMg: zincMg,
                copperMg: copperMg,
                manganeseMg: manganeseMg,
                seleniumUg: seleniumUg,
                iodineUg: iodineUg,
                vitaminAUg: vitaminAUg,
                vitaminB1Mg: vitaminB1Mg,
                vitaminB2Mg: vitaminB2Mg,
                vitaminB3Mg: vitaminB3Mg,
                vitaminB5Mg: vitaminB5Mg,
                vitaminB6Mg: vitaminB6Mg,
                vitaminB9Ug: vitaminB9Ug,
                vitaminB12Ug: vitaminB12Ug,
                vitaminCMg: vitaminCMg,
                vitaminDUg: vitaminDUg,
                vitaminEMg: vitaminEMg,
                vitaminKUg: vitaminKUg,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String ingredientId,
                Value<double?> energyKcal = const Value.absent(),
                Value<double?> energyKj = const Value.absent(),
                Value<double?> proteinG = const Value.absent(),
                Value<double?> fatTotalG = const Value.absent(),
                Value<double?> fatSaturatedG = const Value.absent(),
                Value<double?> fatMonoG = const Value.absent(),
                Value<double?> fatPolyG = const Value.absent(),
                Value<double?> carbsG = const Value.absent(),
                Value<double?> sugarsG = const Value.absent(),
                Value<double?> fiberG = const Value.absent(),
                Value<double?> starchG = const Value.absent(),
                Value<double?> waterG = const Value.absent(),
                Value<double?> alcoholG = const Value.absent(),
                Value<double?> calciumMg = const Value.absent(),
                Value<double?> ironMg = const Value.absent(),
                Value<double?> magnesiumMg = const Value.absent(),
                Value<double?> phosphorusMg = const Value.absent(),
                Value<double?> potassiumMg = const Value.absent(),
                Value<double?> sodiumMg = const Value.absent(),
                Value<double?> zincMg = const Value.absent(),
                Value<double?> copperMg = const Value.absent(),
                Value<double?> manganeseMg = const Value.absent(),
                Value<double?> seleniumUg = const Value.absent(),
                Value<double?> iodineUg = const Value.absent(),
                Value<double?> vitaminAUg = const Value.absent(),
                Value<double?> vitaminB1Mg = const Value.absent(),
                Value<double?> vitaminB2Mg = const Value.absent(),
                Value<double?> vitaminB3Mg = const Value.absent(),
                Value<double?> vitaminB5Mg = const Value.absent(),
                Value<double?> vitaminB6Mg = const Value.absent(),
                Value<double?> vitaminB9Ug = const Value.absent(),
                Value<double?> vitaminB12Ug = const Value.absent(),
                Value<double?> vitaminCMg = const Value.absent(),
                Value<double?> vitaminDUg = const Value.absent(),
                Value<double?> vitaminEMg = const Value.absent(),
                Value<double?> vitaminKUg = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NutritionDataTableCompanion.insert(
                ingredientId: ingredientId,
                energyKcal: energyKcal,
                energyKj: energyKj,
                proteinG: proteinG,
                fatTotalG: fatTotalG,
                fatSaturatedG: fatSaturatedG,
                fatMonoG: fatMonoG,
                fatPolyG: fatPolyG,
                carbsG: carbsG,
                sugarsG: sugarsG,
                fiberG: fiberG,
                starchG: starchG,
                waterG: waterG,
                alcoholG: alcoholG,
                calciumMg: calciumMg,
                ironMg: ironMg,
                magnesiumMg: magnesiumMg,
                phosphorusMg: phosphorusMg,
                potassiumMg: potassiumMg,
                sodiumMg: sodiumMg,
                zincMg: zincMg,
                copperMg: copperMg,
                manganeseMg: manganeseMg,
                seleniumUg: seleniumUg,
                iodineUg: iodineUg,
                vitaminAUg: vitaminAUg,
                vitaminB1Mg: vitaminB1Mg,
                vitaminB2Mg: vitaminB2Mg,
                vitaminB3Mg: vitaminB3Mg,
                vitaminB5Mg: vitaminB5Mg,
                vitaminB6Mg: vitaminB6Mg,
                vitaminB9Ug: vitaminB9Ug,
                vitaminB12Ug: vitaminB12Ug,
                vitaminCMg: vitaminCMg,
                vitaminDUg: vitaminDUg,
                vitaminEMg: vitaminEMg,
                vitaminKUg: vitaminKUg,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$NutritionDataTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({ingredientId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (ingredientId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ingredientId,
                                referencedTable:
                                    $$NutritionDataTableTableReferences
                                        ._ingredientIdTable(db),
                                referencedColumn:
                                    $$NutritionDataTableTableReferences
                                        ._ingredientIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$NutritionDataTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NutritionDataTableTable,
      NutritionDataTableData,
      $$NutritionDataTableTableFilterComposer,
      $$NutritionDataTableTableOrderingComposer,
      $$NutritionDataTableTableAnnotationComposer,
      $$NutritionDataTableTableCreateCompanionBuilder,
      $$NutritionDataTableTableUpdateCompanionBuilder,
      (NutritionDataTableData, $$NutritionDataTableTableReferences),
      NutritionDataTableData,
      PrefetchHooks Function({bool ingredientId})
    >;
typedef $$FodmapDataTableTableCreateCompanionBuilder =
    FodmapDataTableCompanion Function({
      required String ingredientId,
      required String fodmapLevel,
      Value<int> oligos,
      Value<int> fructose,
      Value<int> polyols,
      Value<int> lactose,
      Value<String?> servingDescription,
      Value<double?> servingGrams,
      Value<String?> fodmapGroups,
      Value<String?> notes,
      Value<String?> source,
      Value<DateTime?> lastVerified,
      Value<int> rowid,
    });
typedef $$FodmapDataTableTableUpdateCompanionBuilder =
    FodmapDataTableCompanion Function({
      Value<String> ingredientId,
      Value<String> fodmapLevel,
      Value<int> oligos,
      Value<int> fructose,
      Value<int> polyols,
      Value<int> lactose,
      Value<String?> servingDescription,
      Value<double?> servingGrams,
      Value<String?> fodmapGroups,
      Value<String?> notes,
      Value<String?> source,
      Value<DateTime?> lastVerified,
      Value<int> rowid,
    });

final class $$FodmapDataTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $FodmapDataTableTable,
          FodmapDataTableData
        > {
  $$FodmapDataTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $IngredientsTable _ingredientIdTable(_$AppDatabase db) =>
      db.ingredients.createAlias(
        $_aliasNameGenerator(
          db.fodmapDataTable.ingredientId,
          db.ingredients.id,
        ),
      );

  $$IngredientsTableProcessedTableManager get ingredientId {
    final $_column = $_itemColumn<String>('ingredient_id')!;

    final manager = $$IngredientsTableTableManager(
      $_db,
      $_db.ingredients,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ingredientIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FodmapDataTableTableFilterComposer
    extends Composer<_$AppDatabase, $FodmapDataTableTable> {
  $$FodmapDataTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get fodmapLevel => $composableBuilder(
    column: $table.fodmapLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get oligos => $composableBuilder(
    column: $table.oligos,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fructose => $composableBuilder(
    column: $table.fructose,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get polyols => $composableBuilder(
    column: $table.polyols,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get lactose => $composableBuilder(
    column: $table.lactose,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get servingDescription => $composableBuilder(
    column: $table.servingDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get servingGrams => $composableBuilder(
    column: $table.servingGrams,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fodmapGroups => $composableBuilder(
    column: $table.fodmapGroups,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastVerified => $composableBuilder(
    column: $table.lastVerified,
    builder: (column) => ColumnFilters(column),
  );

  $$IngredientsTableFilterComposer get ingredientId {
    final $$IngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableFilterComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FodmapDataTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FodmapDataTableTable> {
  $$FodmapDataTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get fodmapLevel => $composableBuilder(
    column: $table.fodmapLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get oligos => $composableBuilder(
    column: $table.oligos,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fructose => $composableBuilder(
    column: $table.fructose,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get polyols => $composableBuilder(
    column: $table.polyols,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get lactose => $composableBuilder(
    column: $table.lactose,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get servingDescription => $composableBuilder(
    column: $table.servingDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get servingGrams => $composableBuilder(
    column: $table.servingGrams,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fodmapGroups => $composableBuilder(
    column: $table.fodmapGroups,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get source => $composableBuilder(
    column: $table.source,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastVerified => $composableBuilder(
    column: $table.lastVerified,
    builder: (column) => ColumnOrderings(column),
  );

  $$IngredientsTableOrderingComposer get ingredientId {
    final $$IngredientsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableOrderingComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FodmapDataTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FodmapDataTableTable> {
  $$FodmapDataTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get fodmapLevel => $composableBuilder(
    column: $table.fodmapLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get oligos =>
      $composableBuilder(column: $table.oligos, builder: (column) => column);

  GeneratedColumn<int> get fructose =>
      $composableBuilder(column: $table.fructose, builder: (column) => column);

  GeneratedColumn<int> get polyols =>
      $composableBuilder(column: $table.polyols, builder: (column) => column);

  GeneratedColumn<int> get lactose =>
      $composableBuilder(column: $table.lactose, builder: (column) => column);

  GeneratedColumn<String> get servingDescription => $composableBuilder(
    column: $table.servingDescription,
    builder: (column) => column,
  );

  GeneratedColumn<double> get servingGrams => $composableBuilder(
    column: $table.servingGrams,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fodmapGroups => $composableBuilder(
    column: $table.fodmapGroups,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<DateTime> get lastVerified => $composableBuilder(
    column: $table.lastVerified,
    builder: (column) => column,
  );

  $$IngredientsTableAnnotationComposer get ingredientId {
    final $$IngredientsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableAnnotationComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FodmapDataTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FodmapDataTableTable,
          FodmapDataTableData,
          $$FodmapDataTableTableFilterComposer,
          $$FodmapDataTableTableOrderingComposer,
          $$FodmapDataTableTableAnnotationComposer,
          $$FodmapDataTableTableCreateCompanionBuilder,
          $$FodmapDataTableTableUpdateCompanionBuilder,
          (FodmapDataTableData, $$FodmapDataTableTableReferences),
          FodmapDataTableData,
          PrefetchHooks Function({bool ingredientId})
        > {
  $$FodmapDataTableTableTableManager(
    _$AppDatabase db,
    $FodmapDataTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FodmapDataTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FodmapDataTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FodmapDataTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> ingredientId = const Value.absent(),
                Value<String> fodmapLevel = const Value.absent(),
                Value<int> oligos = const Value.absent(),
                Value<int> fructose = const Value.absent(),
                Value<int> polyols = const Value.absent(),
                Value<int> lactose = const Value.absent(),
                Value<String?> servingDescription = const Value.absent(),
                Value<double?> servingGrams = const Value.absent(),
                Value<String?> fodmapGroups = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String?> source = const Value.absent(),
                Value<DateTime?> lastVerified = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FodmapDataTableCompanion(
                ingredientId: ingredientId,
                fodmapLevel: fodmapLevel,
                oligos: oligos,
                fructose: fructose,
                polyols: polyols,
                lactose: lactose,
                servingDescription: servingDescription,
                servingGrams: servingGrams,
                fodmapGroups: fodmapGroups,
                notes: notes,
                source: source,
                lastVerified: lastVerified,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String ingredientId,
                required String fodmapLevel,
                Value<int> oligos = const Value.absent(),
                Value<int> fructose = const Value.absent(),
                Value<int> polyols = const Value.absent(),
                Value<int> lactose = const Value.absent(),
                Value<String?> servingDescription = const Value.absent(),
                Value<double?> servingGrams = const Value.absent(),
                Value<String?> fodmapGroups = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<String?> source = const Value.absent(),
                Value<DateTime?> lastVerified = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FodmapDataTableCompanion.insert(
                ingredientId: ingredientId,
                fodmapLevel: fodmapLevel,
                oligos: oligos,
                fructose: fructose,
                polyols: polyols,
                lactose: lactose,
                servingDescription: servingDescription,
                servingGrams: servingGrams,
                fodmapGroups: fodmapGroups,
                notes: notes,
                source: source,
                lastVerified: lastVerified,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FodmapDataTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({ingredientId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (ingredientId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ingredientId,
                                referencedTable:
                                    $$FodmapDataTableTableReferences
                                        ._ingredientIdTable(db),
                                referencedColumn:
                                    $$FodmapDataTableTableReferences
                                        ._ingredientIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FodmapDataTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FodmapDataTableTable,
      FodmapDataTableData,
      $$FodmapDataTableTableFilterComposer,
      $$FodmapDataTableTableOrderingComposer,
      $$FodmapDataTableTableAnnotationComposer,
      $$FodmapDataTableTableCreateCompanionBuilder,
      $$FodmapDataTableTableUpdateCompanionBuilder,
      (FodmapDataTableData, $$FodmapDataTableTableReferences),
      FodmapDataTableData,
      PrefetchHooks Function({bool ingredientId})
    >;
typedef $$RecipesTableCreateCompanionBuilder =
    RecipesCompanion Function({
      required String id,
      required String name,
      Value<String?> description,
      Value<String?> instructions,
      Value<int?> prepTimeMin,
      Value<int?> cookTimeMin,
      Value<double> defaultServings,
      Value<String?> tags,
      Value<bool> isMealPrep,
      Value<bool> isQuickBreakfast,
      Value<String?> imagePath,
      Value<String?> sourceUrl,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$RecipesTableUpdateCompanionBuilder =
    RecipesCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> description,
      Value<String?> instructions,
      Value<int?> prepTimeMin,
      Value<int?> cookTimeMin,
      Value<double> defaultServings,
      Value<String?> tags,
      Value<bool> isMealPrep,
      Value<bool> isQuickBreakfast,
      Value<String?> imagePath,
      Value<String?> sourceUrl,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$RecipesTableReferences
    extends BaseReferences<_$AppDatabase, $RecipesTable, Recipe> {
  $$RecipesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RecipeIngredientsTable, List<RecipeIngredient>>
  _recipeIngredientsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recipeIngredients,
        aliasName: $_aliasNameGenerator(
          db.recipes.id,
          db.recipeIngredients.recipeId,
        ),
      );

  $$RecipeIngredientsTableProcessedTableManager get recipeIngredientsRefs {
    final manager = $$RecipeIngredientsTableTableManager(
      $_db,
      $_db.recipeIngredients,
    ).filter((f) => f.recipeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recipeIngredientsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FoodLogsTable, List<FoodLog>> _foodLogsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.foodLogs,
    aliasName: $_aliasNameGenerator(db.recipes.id, db.foodLogs.recipeId),
  );

  $$FoodLogsTableProcessedTableManager get foodLogsRefs {
    final manager = $$FoodLogsTableTableManager(
      $_db,
      $_db.foodLogs,
    ).filter((f) => f.recipeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_foodLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RecipesTableFilterComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instructions => $composableBuilder(
    column: $table.instructions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get prepTimeMin => $composableBuilder(
    column: $table.prepTimeMin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cookTimeMin => $composableBuilder(
    column: $table.cookTimeMin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get defaultServings => $composableBuilder(
    column: $table.defaultServings,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isMealPrep => $composableBuilder(
    column: $table.isMealPrep,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isQuickBreakfast => $composableBuilder(
    column: $table.isQuickBreakfast,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagePath => $composableBuilder(
    column: $table.imagePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> recipeIngredientsRefs(
    Expression<bool> Function($$RecipeIngredientsTableFilterComposer f) f,
  ) {
    final $$RecipeIngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recipeIngredients,
      getReferencedColumn: (t) => t.recipeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipeIngredientsTableFilterComposer(
            $db: $db,
            $table: $db.recipeIngredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> foodLogsRefs(
    Expression<bool> Function($$FoodLogsTableFilterComposer f) f,
  ) {
    final $$FoodLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.foodLogs,
      getReferencedColumn: (t) => t.recipeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FoodLogsTableFilterComposer(
            $db: $db,
            $table: $db.foodLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecipesTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instructions => $composableBuilder(
    column: $table.instructions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get prepTimeMin => $composableBuilder(
    column: $table.prepTimeMin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cookTimeMin => $composableBuilder(
    column: $table.cookTimeMin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get defaultServings => $composableBuilder(
    column: $table.defaultServings,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isMealPrep => $composableBuilder(
    column: $table.isMealPrep,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isQuickBreakfast => $composableBuilder(
    column: $table.isQuickBreakfast,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagePath => $composableBuilder(
    column: $table.imagePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$RecipesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipesTable> {
  $$RecipesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get instructions => $composableBuilder(
    column: $table.instructions,
    builder: (column) => column,
  );

  GeneratedColumn<int> get prepTimeMin => $composableBuilder(
    column: $table.prepTimeMin,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cookTimeMin => $composableBuilder(
    column: $table.cookTimeMin,
    builder: (column) => column,
  );

  GeneratedColumn<double> get defaultServings => $composableBuilder(
    column: $table.defaultServings,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<bool> get isMealPrep => $composableBuilder(
    column: $table.isMealPrep,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isQuickBreakfast => $composableBuilder(
    column: $table.isQuickBreakfast,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imagePath =>
      $composableBuilder(column: $table.imagePath, builder: (column) => column);

  GeneratedColumn<String> get sourceUrl =>
      $composableBuilder(column: $table.sourceUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> recipeIngredientsRefs<T extends Object>(
    Expression<T> Function($$RecipeIngredientsTableAnnotationComposer a) f,
  ) {
    final $$RecipeIngredientsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recipeIngredients,
          getReferencedColumn: (t) => t.recipeId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecipeIngredientsTableAnnotationComposer(
                $db: $db,
                $table: $db.recipeIngredients,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> foodLogsRefs<T extends Object>(
    Expression<T> Function($$FoodLogsTableAnnotationComposer a) f,
  ) {
    final $$FoodLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.foodLogs,
      getReferencedColumn: (t) => t.recipeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FoodLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.foodLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecipesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecipesTable,
          Recipe,
          $$RecipesTableFilterComposer,
          $$RecipesTableOrderingComposer,
          $$RecipesTableAnnotationComposer,
          $$RecipesTableCreateCompanionBuilder,
          $$RecipesTableUpdateCompanionBuilder,
          (Recipe, $$RecipesTableReferences),
          Recipe,
          PrefetchHooks Function({
            bool recipeIngredientsRefs,
            bool foodLogsRefs,
          })
        > {
  $$RecipesTableTableManager(_$AppDatabase db, $RecipesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> instructions = const Value.absent(),
                Value<int?> prepTimeMin = const Value.absent(),
                Value<int?> cookTimeMin = const Value.absent(),
                Value<double> defaultServings = const Value.absent(),
                Value<String?> tags = const Value.absent(),
                Value<bool> isMealPrep = const Value.absent(),
                Value<bool> isQuickBreakfast = const Value.absent(),
                Value<String?> imagePath = const Value.absent(),
                Value<String?> sourceUrl = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipesCompanion(
                id: id,
                name: name,
                description: description,
                instructions: instructions,
                prepTimeMin: prepTimeMin,
                cookTimeMin: cookTimeMin,
                defaultServings: defaultServings,
                tags: tags,
                isMealPrep: isMealPrep,
                isQuickBreakfast: isQuickBreakfast,
                imagePath: imagePath,
                sourceUrl: sourceUrl,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> description = const Value.absent(),
                Value<String?> instructions = const Value.absent(),
                Value<int?> prepTimeMin = const Value.absent(),
                Value<int?> cookTimeMin = const Value.absent(),
                Value<double> defaultServings = const Value.absent(),
                Value<String?> tags = const Value.absent(),
                Value<bool> isMealPrep = const Value.absent(),
                Value<bool> isQuickBreakfast = const Value.absent(),
                Value<String?> imagePath = const Value.absent(),
                Value<String?> sourceUrl = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipesCompanion.insert(
                id: id,
                name: name,
                description: description,
                instructions: instructions,
                prepTimeMin: prepTimeMin,
                cookTimeMin: cookTimeMin,
                defaultServings: defaultServings,
                tags: tags,
                isMealPrep: isMealPrep,
                isQuickBreakfast: isQuickBreakfast,
                imagePath: imagePath,
                sourceUrl: sourceUrl,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecipesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({recipeIngredientsRefs = false, foodLogsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recipeIngredientsRefs) db.recipeIngredients,
                    if (foodLogsRefs) db.foodLogs,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (recipeIngredientsRefs)
                        await $_getPrefetchedData<
                          Recipe,
                          $RecipesTable,
                          RecipeIngredient
                        >(
                          currentTable: table,
                          referencedTable: $$RecipesTableReferences
                              ._recipeIngredientsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecipesTableReferences(
                                db,
                                table,
                                p0,
                              ).recipeIngredientsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recipeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (foodLogsRefs)
                        await $_getPrefetchedData<
                          Recipe,
                          $RecipesTable,
                          FoodLog
                        >(
                          currentTable: table,
                          referencedTable: $$RecipesTableReferences
                              ._foodLogsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecipesTableReferences(
                                db,
                                table,
                                p0,
                              ).foodLogsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recipeId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RecipesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecipesTable,
      Recipe,
      $$RecipesTableFilterComposer,
      $$RecipesTableOrderingComposer,
      $$RecipesTableAnnotationComposer,
      $$RecipesTableCreateCompanionBuilder,
      $$RecipesTableUpdateCompanionBuilder,
      (Recipe, $$RecipesTableReferences),
      Recipe,
      PrefetchHooks Function({bool recipeIngredientsRefs, bool foodLogsRefs})
    >;
typedef $$RecipeIngredientsTableCreateCompanionBuilder =
    RecipeIngredientsCompanion Function({
      required String id,
      required String recipeId,
      required String ingredientId,
      required double amountGrams,
      Value<String?> amountDisplay,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$RecipeIngredientsTableUpdateCompanionBuilder =
    RecipeIngredientsCompanion Function({
      Value<String> id,
      Value<String> recipeId,
      Value<String> ingredientId,
      Value<double> amountGrams,
      Value<String?> amountDisplay,
      Value<String?> notes,
      Value<int> rowid,
    });

final class $$RecipeIngredientsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RecipeIngredientsTable,
          RecipeIngredient
        > {
  $$RecipeIngredientsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RecipesTable _recipeIdTable(_$AppDatabase db) =>
      db.recipes.createAlias(
        $_aliasNameGenerator(db.recipeIngredients.recipeId, db.recipes.id),
      );

  $$RecipesTableProcessedTableManager get recipeId {
    final $_column = $_itemColumn<String>('recipe_id')!;

    final manager = $$RecipesTableTableManager(
      $_db,
      $_db.recipes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recipeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $IngredientsTable _ingredientIdTable(_$AppDatabase db) =>
      db.ingredients.createAlias(
        $_aliasNameGenerator(
          db.recipeIngredients.ingredientId,
          db.ingredients.id,
        ),
      );

  $$IngredientsTableProcessedTableManager get ingredientId {
    final $_column = $_itemColumn<String>('ingredient_id')!;

    final manager = $$IngredientsTableTableManager(
      $_db,
      $_db.ingredients,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ingredientIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecipeIngredientsTableFilterComposer
    extends Composer<_$AppDatabase, $RecipeIngredientsTable> {
  $$RecipeIngredientsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amountGrams => $composableBuilder(
    column: $table.amountGrams,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get amountDisplay => $composableBuilder(
    column: $table.amountDisplay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  $$RecipesTableFilterComposer get recipeId {
    final $$RecipesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recipeId,
      referencedTable: $db.recipes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipesTableFilterComposer(
            $db: $db,
            $table: $db.recipes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableFilterComposer get ingredientId {
    final $$IngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableFilterComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecipeIngredientsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecipeIngredientsTable> {
  $$RecipeIngredientsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amountGrams => $composableBuilder(
    column: $table.amountGrams,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get amountDisplay => $composableBuilder(
    column: $table.amountDisplay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecipesTableOrderingComposer get recipeId {
    final $$RecipesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recipeId,
      referencedTable: $db.recipes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipesTableOrderingComposer(
            $db: $db,
            $table: $db.recipes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableOrderingComposer get ingredientId {
    final $$IngredientsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableOrderingComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecipeIngredientsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecipeIngredientsTable> {
  $$RecipeIngredientsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get amountGrams => $composableBuilder(
    column: $table.amountGrams,
    builder: (column) => column,
  );

  GeneratedColumn<String> get amountDisplay => $composableBuilder(
    column: $table.amountDisplay,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$RecipesTableAnnotationComposer get recipeId {
    final $$RecipesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recipeId,
      referencedTable: $db.recipes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipesTableAnnotationComposer(
            $db: $db,
            $table: $db.recipes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableAnnotationComposer get ingredientId {
    final $$IngredientsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableAnnotationComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecipeIngredientsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecipeIngredientsTable,
          RecipeIngredient,
          $$RecipeIngredientsTableFilterComposer,
          $$RecipeIngredientsTableOrderingComposer,
          $$RecipeIngredientsTableAnnotationComposer,
          $$RecipeIngredientsTableCreateCompanionBuilder,
          $$RecipeIngredientsTableUpdateCompanionBuilder,
          (RecipeIngredient, $$RecipeIngredientsTableReferences),
          RecipeIngredient,
          PrefetchHooks Function({bool recipeId, bool ingredientId})
        > {
  $$RecipeIngredientsTableTableManager(
    _$AppDatabase db,
    $RecipeIngredientsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecipeIngredientsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecipeIngredientsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecipeIngredientsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> recipeId = const Value.absent(),
                Value<String> ingredientId = const Value.absent(),
                Value<double> amountGrams = const Value.absent(),
                Value<String?> amountDisplay = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipeIngredientsCompanion(
                id: id,
                recipeId: recipeId,
                ingredientId: ingredientId,
                amountGrams: amountGrams,
                amountDisplay: amountDisplay,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String recipeId,
                required String ingredientId,
                required double amountGrams,
                Value<String?> amountDisplay = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RecipeIngredientsCompanion.insert(
                id: id,
                recipeId: recipeId,
                ingredientId: ingredientId,
                amountGrams: amountGrams,
                amountDisplay: amountDisplay,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecipeIngredientsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recipeId = false, ingredientId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (recipeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recipeId,
                                referencedTable:
                                    $$RecipeIngredientsTableReferences
                                        ._recipeIdTable(db),
                                referencedColumn:
                                    $$RecipeIngredientsTableReferences
                                        ._recipeIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (ingredientId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ingredientId,
                                referencedTable:
                                    $$RecipeIngredientsTableReferences
                                        ._ingredientIdTable(db),
                                referencedColumn:
                                    $$RecipeIngredientsTableReferences
                                        ._ingredientIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecipeIngredientsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecipeIngredientsTable,
      RecipeIngredient,
      $$RecipeIngredientsTableFilterComposer,
      $$RecipeIngredientsTableOrderingComposer,
      $$RecipeIngredientsTableAnnotationComposer,
      $$RecipeIngredientsTableCreateCompanionBuilder,
      $$RecipeIngredientsTableUpdateCompanionBuilder,
      (RecipeIngredient, $$RecipeIngredientsTableReferences),
      RecipeIngredient,
      PrefetchHooks Function({bool recipeId, bool ingredientId})
    >;
typedef $$FoodLogsTableCreateCompanionBuilder =
    FoodLogsCompanion Function({
      required String id,
      required DateTime date,
      required String mealType,
      Value<String?> recipeId,
      Value<String?> ingredientId,
      required double amountGrams,
      Value<double?> fodmapLoadScore,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$FoodLogsTableUpdateCompanionBuilder =
    FoodLogsCompanion Function({
      Value<String> id,
      Value<DateTime> date,
      Value<String> mealType,
      Value<String?> recipeId,
      Value<String?> ingredientId,
      Value<double> amountGrams,
      Value<double?> fodmapLoadScore,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$FoodLogsTableReferences
    extends BaseReferences<_$AppDatabase, $FoodLogsTable, FoodLog> {
  $$FoodLogsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecipesTable _recipeIdTable(_$AppDatabase db) => db.recipes
      .createAlias($_aliasNameGenerator(db.foodLogs.recipeId, db.recipes.id));

  $$RecipesTableProcessedTableManager? get recipeId {
    final $_column = $_itemColumn<String>('recipe_id');
    if ($_column == null) return null;
    final manager = $$RecipesTableTableManager(
      $_db,
      $_db.recipes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recipeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $IngredientsTable _ingredientIdTable(_$AppDatabase db) =>
      db.ingredients.createAlias(
        $_aliasNameGenerator(db.foodLogs.ingredientId, db.ingredients.id),
      );

  $$IngredientsTableProcessedTableManager? get ingredientId {
    final $_column = $_itemColumn<String>('ingredient_id');
    if ($_column == null) return null;
    final manager = $$IngredientsTableTableManager(
      $_db,
      $_db.ingredients,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ingredientIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FoodLogsTableFilterComposer
    extends Composer<_$AppDatabase, $FoodLogsTable> {
  $$FoodLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mealType => $composableBuilder(
    column: $table.mealType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amountGrams => $composableBuilder(
    column: $table.amountGrams,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fodmapLoadScore => $composableBuilder(
    column: $table.fodmapLoadScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecipesTableFilterComposer get recipeId {
    final $$RecipesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recipeId,
      referencedTable: $db.recipes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipesTableFilterComposer(
            $db: $db,
            $table: $db.recipes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableFilterComposer get ingredientId {
    final $$IngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableFilterComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FoodLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $FoodLogsTable> {
  $$FoodLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mealType => $composableBuilder(
    column: $table.mealType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amountGrams => $composableBuilder(
    column: $table.amountGrams,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fodmapLoadScore => $composableBuilder(
    column: $table.fodmapLoadScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecipesTableOrderingComposer get recipeId {
    final $$RecipesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recipeId,
      referencedTable: $db.recipes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipesTableOrderingComposer(
            $db: $db,
            $table: $db.recipes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableOrderingComposer get ingredientId {
    final $$IngredientsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableOrderingComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FoodLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FoodLogsTable> {
  $$FoodLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get mealType =>
      $composableBuilder(column: $table.mealType, builder: (column) => column);

  GeneratedColumn<double> get amountGrams => $composableBuilder(
    column: $table.amountGrams,
    builder: (column) => column,
  );

  GeneratedColumn<double> get fodmapLoadScore => $composableBuilder(
    column: $table.fodmapLoadScore,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecipesTableAnnotationComposer get recipeId {
    final $$RecipesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recipeId,
      referencedTable: $db.recipes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecipesTableAnnotationComposer(
            $db: $db,
            $table: $db.recipes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableAnnotationComposer get ingredientId {
    final $$IngredientsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableAnnotationComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FoodLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FoodLogsTable,
          FoodLog,
          $$FoodLogsTableFilterComposer,
          $$FoodLogsTableOrderingComposer,
          $$FoodLogsTableAnnotationComposer,
          $$FoodLogsTableCreateCompanionBuilder,
          $$FoodLogsTableUpdateCompanionBuilder,
          (FoodLog, $$FoodLogsTableReferences),
          FoodLog,
          PrefetchHooks Function({bool recipeId, bool ingredientId})
        > {
  $$FoodLogsTableTableManager(_$AppDatabase db, $FoodLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FoodLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FoodLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FoodLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> mealType = const Value.absent(),
                Value<String?> recipeId = const Value.absent(),
                Value<String?> ingredientId = const Value.absent(),
                Value<double> amountGrams = const Value.absent(),
                Value<double?> fodmapLoadScore = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodLogsCompanion(
                id: id,
                date: date,
                mealType: mealType,
                recipeId: recipeId,
                ingredientId: ingredientId,
                amountGrams: amountGrams,
                fodmapLoadScore: fodmapLoadScore,
                notes: notes,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime date,
                required String mealType,
                Value<String?> recipeId = const Value.absent(),
                Value<String?> ingredientId = const Value.absent(),
                required double amountGrams,
                Value<double?> fodmapLoadScore = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FoodLogsCompanion.insert(
                id: id,
                date: date,
                mealType: mealType,
                recipeId: recipeId,
                ingredientId: ingredientId,
                amountGrams: amountGrams,
                fodmapLoadScore: fodmapLoadScore,
                notes: notes,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FoodLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recipeId = false, ingredientId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (recipeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recipeId,
                                referencedTable: $$FoodLogsTableReferences
                                    ._recipeIdTable(db),
                                referencedColumn: $$FoodLogsTableReferences
                                    ._recipeIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (ingredientId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ingredientId,
                                referencedTable: $$FoodLogsTableReferences
                                    ._ingredientIdTable(db),
                                referencedColumn: $$FoodLogsTableReferences
                                    ._ingredientIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FoodLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FoodLogsTable,
      FoodLog,
      $$FoodLogsTableFilterComposer,
      $$FoodLogsTableOrderingComposer,
      $$FoodLogsTableAnnotationComposer,
      $$FoodLogsTableCreateCompanionBuilder,
      $$FoodLogsTableUpdateCompanionBuilder,
      (FoodLog, $$FoodLogsTableReferences),
      FoodLog,
      PrefetchHooks Function({bool recipeId, bool ingredientId})
    >;
typedef $$SupplementsTableCreateCompanionBuilder =
    SupplementsCompanion Function({
      required String id,
      required String name,
      Value<String?> brand,
      Value<double?> dosagePerUnit,
      Value<String?> unit,
      Value<String?> nutrientsProvided,
      Value<String?> scheduleTime,
      Value<bool> withFood,
      Value<int?> stockCurrent,
      Value<int> stockWarningAt,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$SupplementsTableUpdateCompanionBuilder =
    SupplementsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> brand,
      Value<double?> dosagePerUnit,
      Value<String?> unit,
      Value<String?> nutrientsProvided,
      Value<String?> scheduleTime,
      Value<bool> withFood,
      Value<int?> stockCurrent,
      Value<int> stockWarningAt,
      Value<bool> isActive,
      Value<int> rowid,
    });

final class $$SupplementsTableReferences
    extends BaseReferences<_$AppDatabase, $SupplementsTable, Supplement> {
  $$SupplementsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SupplementLogsTable, List<SupplementLog>>
  _supplementLogsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.supplementLogs,
    aliasName: $_aliasNameGenerator(
      db.supplements.id,
      db.supplementLogs.supplementId,
    ),
  );

  $$SupplementLogsTableProcessedTableManager get supplementLogsRefs {
    final manager = $$SupplementLogsTableTableManager(
      $_db,
      $_db.supplementLogs,
    ).filter((f) => f.supplementId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_supplementLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SupplementsTableFilterComposer
    extends Composer<_$AppDatabase, $SupplementsTable> {
  $$SupplementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dosagePerUnit => $composableBuilder(
    column: $table.dosagePerUnit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nutrientsProvided => $composableBuilder(
    column: $table.nutrientsProvided,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scheduleTime => $composableBuilder(
    column: $table.scheduleTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get withFood => $composableBuilder(
    column: $table.withFood,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stockCurrent => $composableBuilder(
    column: $table.stockCurrent,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stockWarningAt => $composableBuilder(
    column: $table.stockWarningAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> supplementLogsRefs(
    Expression<bool> Function($$SupplementLogsTableFilterComposer f) f,
  ) {
    final $$SupplementLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.supplementLogs,
      getReferencedColumn: (t) => t.supplementId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplementLogsTableFilterComposer(
            $db: $db,
            $table: $db.supplementLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SupplementsTableOrderingComposer
    extends Composer<_$AppDatabase, $SupplementsTable> {
  $$SupplementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dosagePerUnit => $composableBuilder(
    column: $table.dosagePerUnit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nutrientsProvided => $composableBuilder(
    column: $table.nutrientsProvided,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scheduleTime => $composableBuilder(
    column: $table.scheduleTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get withFood => $composableBuilder(
    column: $table.withFood,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stockCurrent => $composableBuilder(
    column: $table.stockCurrent,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stockWarningAt => $composableBuilder(
    column: $table.stockWarningAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SupplementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SupplementsTable> {
  $$SupplementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<double> get dosagePerUnit => $composableBuilder(
    column: $table.dosagePerUnit,
    builder: (column) => column,
  );

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get nutrientsProvided => $composableBuilder(
    column: $table.nutrientsProvided,
    builder: (column) => column,
  );

  GeneratedColumn<String> get scheduleTime => $composableBuilder(
    column: $table.scheduleTime,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get withFood =>
      $composableBuilder(column: $table.withFood, builder: (column) => column);

  GeneratedColumn<int> get stockCurrent => $composableBuilder(
    column: $table.stockCurrent,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stockWarningAt => $composableBuilder(
    column: $table.stockWarningAt,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  Expression<T> supplementLogsRefs<T extends Object>(
    Expression<T> Function($$SupplementLogsTableAnnotationComposer a) f,
  ) {
    final $$SupplementLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.supplementLogs,
      getReferencedColumn: (t) => t.supplementId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplementLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.supplementLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SupplementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SupplementsTable,
          Supplement,
          $$SupplementsTableFilterComposer,
          $$SupplementsTableOrderingComposer,
          $$SupplementsTableAnnotationComposer,
          $$SupplementsTableCreateCompanionBuilder,
          $$SupplementsTableUpdateCompanionBuilder,
          (Supplement, $$SupplementsTableReferences),
          Supplement,
          PrefetchHooks Function({bool supplementLogsRefs})
        > {
  $$SupplementsTableTableManager(_$AppDatabase db, $SupplementsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SupplementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SupplementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SupplementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> brand = const Value.absent(),
                Value<double?> dosagePerUnit = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                Value<String?> nutrientsProvided = const Value.absent(),
                Value<String?> scheduleTime = const Value.absent(),
                Value<bool> withFood = const Value.absent(),
                Value<int?> stockCurrent = const Value.absent(),
                Value<int> stockWarningAt = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SupplementsCompanion(
                id: id,
                name: name,
                brand: brand,
                dosagePerUnit: dosagePerUnit,
                unit: unit,
                nutrientsProvided: nutrientsProvided,
                scheduleTime: scheduleTime,
                withFood: withFood,
                stockCurrent: stockCurrent,
                stockWarningAt: stockWarningAt,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> brand = const Value.absent(),
                Value<double?> dosagePerUnit = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                Value<String?> nutrientsProvided = const Value.absent(),
                Value<String?> scheduleTime = const Value.absent(),
                Value<bool> withFood = const Value.absent(),
                Value<int?> stockCurrent = const Value.absent(),
                Value<int> stockWarningAt = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SupplementsCompanion.insert(
                id: id,
                name: name,
                brand: brand,
                dosagePerUnit: dosagePerUnit,
                unit: unit,
                nutrientsProvided: nutrientsProvided,
                scheduleTime: scheduleTime,
                withFood: withFood,
                stockCurrent: stockCurrent,
                stockWarningAt: stockWarningAt,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SupplementsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({supplementLogsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (supplementLogsRefs) db.supplementLogs,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (supplementLogsRefs)
                    await $_getPrefetchedData<
                      Supplement,
                      $SupplementsTable,
                      SupplementLog
                    >(
                      currentTable: table,
                      referencedTable: $$SupplementsTableReferences
                          ._supplementLogsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$SupplementsTableReferences(
                            db,
                            table,
                            p0,
                          ).supplementLogsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.supplementId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SupplementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SupplementsTable,
      Supplement,
      $$SupplementsTableFilterComposer,
      $$SupplementsTableOrderingComposer,
      $$SupplementsTableAnnotationComposer,
      $$SupplementsTableCreateCompanionBuilder,
      $$SupplementsTableUpdateCompanionBuilder,
      (Supplement, $$SupplementsTableReferences),
      Supplement,
      PrefetchHooks Function({bool supplementLogsRefs})
    >;
typedef $$SupplementLogsTableCreateCompanionBuilder =
    SupplementLogsCompanion Function({
      required String id,
      required String supplementId,
      required DateTime date,
      Value<String?> time,
      Value<int> taken,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$SupplementLogsTableUpdateCompanionBuilder =
    SupplementLogsCompanion Function({
      Value<String> id,
      Value<String> supplementId,
      Value<DateTime> date,
      Value<String?> time,
      Value<int> taken,
      Value<String?> notes,
      Value<int> rowid,
    });

final class $$SupplementLogsTableReferences
    extends BaseReferences<_$AppDatabase, $SupplementLogsTable, SupplementLog> {
  $$SupplementLogsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SupplementsTable _supplementIdTable(_$AppDatabase db) =>
      db.supplements.createAlias(
        $_aliasNameGenerator(db.supplementLogs.supplementId, db.supplements.id),
      );

  $$SupplementsTableProcessedTableManager get supplementId {
    final $_column = $_itemColumn<String>('supplement_id')!;

    final manager = $$SupplementsTableTableManager(
      $_db,
      $_db.supplements,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_supplementIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SupplementLogsTableFilterComposer
    extends Composer<_$AppDatabase, $SupplementLogsTable> {
  $$SupplementLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get taken => $composableBuilder(
    column: $table.taken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  $$SupplementsTableFilterComposer get supplementId {
    final $$SupplementsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplementId,
      referencedTable: $db.supplements,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplementsTableFilterComposer(
            $db: $db,
            $table: $db.supplements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SupplementLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $SupplementLogsTable> {
  $$SupplementLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get taken => $composableBuilder(
    column: $table.taken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  $$SupplementsTableOrderingComposer get supplementId {
    final $$SupplementsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplementId,
      referencedTable: $db.supplements,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplementsTableOrderingComposer(
            $db: $db,
            $table: $db.supplements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SupplementLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SupplementLogsTable> {
  $$SupplementLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<int> get taken =>
      $composableBuilder(column: $table.taken, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$SupplementsTableAnnotationComposer get supplementId {
    final $$SupplementsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.supplementId,
      referencedTable: $db.supplements,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SupplementsTableAnnotationComposer(
            $db: $db,
            $table: $db.supplements,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SupplementLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SupplementLogsTable,
          SupplementLog,
          $$SupplementLogsTableFilterComposer,
          $$SupplementLogsTableOrderingComposer,
          $$SupplementLogsTableAnnotationComposer,
          $$SupplementLogsTableCreateCompanionBuilder,
          $$SupplementLogsTableUpdateCompanionBuilder,
          (SupplementLog, $$SupplementLogsTableReferences),
          SupplementLog,
          PrefetchHooks Function({bool supplementId})
        > {
  $$SupplementLogsTableTableManager(
    _$AppDatabase db,
    $SupplementLogsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SupplementLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SupplementLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SupplementLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> supplementId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String?> time = const Value.absent(),
                Value<int> taken = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SupplementLogsCompanion(
                id: id,
                supplementId: supplementId,
                date: date,
                time: time,
                taken: taken,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String supplementId,
                required DateTime date,
                Value<String?> time = const Value.absent(),
                Value<int> taken = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SupplementLogsCompanion.insert(
                id: id,
                supplementId: supplementId,
                date: date,
                time: time,
                taken: taken,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SupplementLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({supplementId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (supplementId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.supplementId,
                                referencedTable: $$SupplementLogsTableReferences
                                    ._supplementIdTable(db),
                                referencedColumn:
                                    $$SupplementLogsTableReferences
                                        ._supplementIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SupplementLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SupplementLogsTable,
      SupplementLog,
      $$SupplementLogsTableFilterComposer,
      $$SupplementLogsTableOrderingComposer,
      $$SupplementLogsTableAnnotationComposer,
      $$SupplementLogsTableCreateCompanionBuilder,
      $$SupplementLogsTableUpdateCompanionBuilder,
      (SupplementLog, $$SupplementLogsTableReferences),
      SupplementLog,
      PrefetchHooks Function({bool supplementId})
    >;
typedef $$WorkoutTemplatesTableCreateCompanionBuilder =
    WorkoutTemplatesCompanion Function({
      required String id,
      required String name,
      Value<String?> description,
      Value<String?> exercises,
      Value<int> rowid,
    });
typedef $$WorkoutTemplatesTableUpdateCompanionBuilder =
    WorkoutTemplatesCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> description,
      Value<String?> exercises,
      Value<int> rowid,
    });

final class $$WorkoutTemplatesTableReferences
    extends
        BaseReferences<_$AppDatabase, $WorkoutTemplatesTable, WorkoutTemplate> {
  $$WorkoutTemplatesTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$WorkoutsTable, List<Workout>> _workoutsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.workouts,
    aliasName: $_aliasNameGenerator(
      db.workoutTemplates.id,
      db.workouts.templateId,
    ),
  );

  $$WorkoutsTableProcessedTableManager get workoutsRefs {
    final manager = $$WorkoutsTableTableManager(
      $_db,
      $_db.workouts,
    ).filter((f) => f.templateId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_workoutsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WorkoutTemplatesTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutTemplatesTable> {
  $$WorkoutTemplatesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get exercises => $composableBuilder(
    column: $table.exercises,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> workoutsRefs(
    Expression<bool> Function($$WorkoutsTableFilterComposer f) f,
  ) {
    final $$WorkoutsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workouts,
      getReferencedColumn: (t) => t.templateId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutsTableFilterComposer(
            $db: $db,
            $table: $db.workouts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutTemplatesTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutTemplatesTable> {
  $$WorkoutTemplatesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get exercises => $composableBuilder(
    column: $table.exercises,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WorkoutTemplatesTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutTemplatesTable> {
  $$WorkoutTemplatesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get exercises =>
      $composableBuilder(column: $table.exercises, builder: (column) => column);

  Expression<T> workoutsRefs<T extends Object>(
    Expression<T> Function($$WorkoutsTableAnnotationComposer a) f,
  ) {
    final $$WorkoutsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workouts,
      getReferencedColumn: (t) => t.templateId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutsTableAnnotationComposer(
            $db: $db,
            $table: $db.workouts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutTemplatesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutTemplatesTable,
          WorkoutTemplate,
          $$WorkoutTemplatesTableFilterComposer,
          $$WorkoutTemplatesTableOrderingComposer,
          $$WorkoutTemplatesTableAnnotationComposer,
          $$WorkoutTemplatesTableCreateCompanionBuilder,
          $$WorkoutTemplatesTableUpdateCompanionBuilder,
          (WorkoutTemplate, $$WorkoutTemplatesTableReferences),
          WorkoutTemplate,
          PrefetchHooks Function({bool workoutsRefs})
        > {
  $$WorkoutTemplatesTableTableManager(
    _$AppDatabase db,
    $WorkoutTemplatesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutTemplatesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutTemplatesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutTemplatesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> exercises = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkoutTemplatesCompanion(
                id: id,
                name: name,
                description: description,
                exercises: exercises,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> description = const Value.absent(),
                Value<String?> exercises = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkoutTemplatesCompanion.insert(
                id: id,
                name: name,
                description: description,
                exercises: exercises,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WorkoutTemplatesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({workoutsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (workoutsRefs) db.workouts],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (workoutsRefs)
                    await $_getPrefetchedData<
                      WorkoutTemplate,
                      $WorkoutTemplatesTable,
                      Workout
                    >(
                      currentTable: table,
                      referencedTable: $$WorkoutTemplatesTableReferences
                          ._workoutsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$WorkoutTemplatesTableReferences(
                            db,
                            table,
                            p0,
                          ).workoutsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.templateId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$WorkoutTemplatesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutTemplatesTable,
      WorkoutTemplate,
      $$WorkoutTemplatesTableFilterComposer,
      $$WorkoutTemplatesTableOrderingComposer,
      $$WorkoutTemplatesTableAnnotationComposer,
      $$WorkoutTemplatesTableCreateCompanionBuilder,
      $$WorkoutTemplatesTableUpdateCompanionBuilder,
      (WorkoutTemplate, $$WorkoutTemplatesTableReferences),
      WorkoutTemplate,
      PrefetchHooks Function({bool workoutsRefs})
    >;
typedef $$WorkoutsTableCreateCompanionBuilder =
    WorkoutsCompanion Function({
      required String id,
      required DateTime date,
      Value<String?> templateId,
      Value<String?> name,
      Value<int?> durationMin,
      Value<double?> caloriesEst,
      Value<double?> rpeAvg,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$WorkoutsTableUpdateCompanionBuilder =
    WorkoutsCompanion Function({
      Value<String> id,
      Value<DateTime> date,
      Value<String?> templateId,
      Value<String?> name,
      Value<int?> durationMin,
      Value<double?> caloriesEst,
      Value<double?> rpeAvg,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$WorkoutsTableReferences
    extends BaseReferences<_$AppDatabase, $WorkoutsTable, Workout> {
  $$WorkoutsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WorkoutTemplatesTable _templateIdTable(_$AppDatabase db) =>
      db.workoutTemplates.createAlias(
        $_aliasNameGenerator(db.workouts.templateId, db.workoutTemplates.id),
      );

  $$WorkoutTemplatesTableProcessedTableManager? get templateId {
    final $_column = $_itemColumn<String>('template_id');
    if ($_column == null) return null;
    final manager = $$WorkoutTemplatesTableTableManager(
      $_db,
      $_db.workoutTemplates,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_templateIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$WorkoutSetsTable, List<WorkoutSet>>
  _workoutSetsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.workoutSets,
    aliasName: $_aliasNameGenerator(db.workouts.id, db.workoutSets.workoutId),
  );

  $$WorkoutSetsTableProcessedTableManager get workoutSetsRefs {
    final manager = $$WorkoutSetsTableTableManager(
      $_db,
      $_db.workoutSets,
    ).filter((f) => f.workoutId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_workoutSetsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WorkoutsTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutsTable> {
  $$WorkoutsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationMin => $composableBuilder(
    column: $table.durationMin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get caloriesEst => $composableBuilder(
    column: $table.caloriesEst,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rpeAvg => $composableBuilder(
    column: $table.rpeAvg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$WorkoutTemplatesTableFilterComposer get templateId {
    final $$WorkoutTemplatesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.templateId,
      referencedTable: $db.workoutTemplates,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTemplatesTableFilterComposer(
            $db: $db,
            $table: $db.workoutTemplates,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> workoutSetsRefs(
    Expression<bool> Function($$WorkoutSetsTableFilterComposer f) f,
  ) {
    final $$WorkoutSetsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutSets,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutSetsTableFilterComposer(
            $db: $db,
            $table: $db.workoutSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutsTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutsTable> {
  $$WorkoutsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationMin => $composableBuilder(
    column: $table.durationMin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get caloriesEst => $composableBuilder(
    column: $table.caloriesEst,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rpeAvg => $composableBuilder(
    column: $table.rpeAvg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$WorkoutTemplatesTableOrderingComposer get templateId {
    final $$WorkoutTemplatesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.templateId,
      referencedTable: $db.workoutTemplates,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTemplatesTableOrderingComposer(
            $db: $db,
            $table: $db.workoutTemplates,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutsTable> {
  $$WorkoutsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get durationMin => $composableBuilder(
    column: $table.durationMin,
    builder: (column) => column,
  );

  GeneratedColumn<double> get caloriesEst => $composableBuilder(
    column: $table.caloriesEst,
    builder: (column) => column,
  );

  GeneratedColumn<double> get rpeAvg =>
      $composableBuilder(column: $table.rpeAvg, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$WorkoutTemplatesTableAnnotationComposer get templateId {
    final $$WorkoutTemplatesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.templateId,
      referencedTable: $db.workoutTemplates,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutTemplatesTableAnnotationComposer(
            $db: $db,
            $table: $db.workoutTemplates,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> workoutSetsRefs<T extends Object>(
    Expression<T> Function($$WorkoutSetsTableAnnotationComposer a) f,
  ) {
    final $$WorkoutSetsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutSets,
      getReferencedColumn: (t) => t.workoutId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutSetsTableAnnotationComposer(
            $db: $db,
            $table: $db.workoutSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WorkoutsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutsTable,
          Workout,
          $$WorkoutsTableFilterComposer,
          $$WorkoutsTableOrderingComposer,
          $$WorkoutsTableAnnotationComposer,
          $$WorkoutsTableCreateCompanionBuilder,
          $$WorkoutsTableUpdateCompanionBuilder,
          (Workout, $$WorkoutsTableReferences),
          Workout,
          PrefetchHooks Function({bool templateId, bool workoutSetsRefs})
        > {
  $$WorkoutsTableTableManager(_$AppDatabase db, $WorkoutsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String?> templateId = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<int?> durationMin = const Value.absent(),
                Value<double?> caloriesEst = const Value.absent(),
                Value<double?> rpeAvg = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkoutsCompanion(
                id: id,
                date: date,
                templateId: templateId,
                name: name,
                durationMin: durationMin,
                caloriesEst: caloriesEst,
                rpeAvg: rpeAvg,
                notes: notes,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime date,
                Value<String?> templateId = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<int?> durationMin = const Value.absent(),
                Value<double?> caloriesEst = const Value.absent(),
                Value<double?> rpeAvg = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkoutsCompanion.insert(
                id: id,
                date: date,
                templateId: templateId,
                name: name,
                durationMin: durationMin,
                caloriesEst: caloriesEst,
                rpeAvg: rpeAvg,
                notes: notes,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WorkoutsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({templateId = false, workoutSetsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (workoutSetsRefs) db.workoutSets,
                  ],
                  addJoins:
                      <
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
                          dynamic
                        >
                      >(state) {
                        if (templateId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.templateId,
                                    referencedTable: $$WorkoutsTableReferences
                                        ._templateIdTable(db),
                                    referencedColumn: $$WorkoutsTableReferences
                                        ._templateIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (workoutSetsRefs)
                        await $_getPrefetchedData<
                          Workout,
                          $WorkoutsTable,
                          WorkoutSet
                        >(
                          currentTable: table,
                          referencedTable: $$WorkoutsTableReferences
                              ._workoutSetsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$WorkoutsTableReferences(
                                db,
                                table,
                                p0,
                              ).workoutSetsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.workoutId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$WorkoutsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutsTable,
      Workout,
      $$WorkoutsTableFilterComposer,
      $$WorkoutsTableOrderingComposer,
      $$WorkoutsTableAnnotationComposer,
      $$WorkoutsTableCreateCompanionBuilder,
      $$WorkoutsTableUpdateCompanionBuilder,
      (Workout, $$WorkoutsTableReferences),
      Workout,
      PrefetchHooks Function({bool templateId, bool workoutSetsRefs})
    >;
typedef $$ExercisesTableCreateCompanionBuilder =
    ExercisesCompanion Function({
      required String id,
      required String name,
      Value<String?> category,
      Value<String?> primaryMuscles,
      Value<String?> secondaryMuscles,
      Value<String?> equipment,
      Value<double?> metValue,
      Value<String?> description,
      Value<bool> isCustom,
      Value<int> rowid,
    });
typedef $$ExercisesTableUpdateCompanionBuilder =
    ExercisesCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> category,
      Value<String?> primaryMuscles,
      Value<String?> secondaryMuscles,
      Value<String?> equipment,
      Value<double?> metValue,
      Value<String?> description,
      Value<bool> isCustom,
      Value<int> rowid,
    });

final class $$ExercisesTableReferences
    extends BaseReferences<_$AppDatabase, $ExercisesTable, Exercise> {
  $$ExercisesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$WorkoutSetsTable, List<WorkoutSet>>
  _workoutSetsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.workoutSets,
    aliasName: $_aliasNameGenerator(db.exercises.id, db.workoutSets.exerciseId),
  );

  $$WorkoutSetsTableProcessedTableManager get workoutSetsRefs {
    final manager = $$WorkoutSetsTableTableManager(
      $_db,
      $_db.workoutSets,
    ).filter((f) => f.exerciseId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_workoutSetsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ExercisesTableFilterComposer
    extends Composer<_$AppDatabase, $ExercisesTable> {
  $$ExercisesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get primaryMuscles => $composableBuilder(
    column: $table.primaryMuscles,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get secondaryMuscles => $composableBuilder(
    column: $table.secondaryMuscles,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get equipment => $composableBuilder(
    column: $table.equipment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get metValue => $composableBuilder(
    column: $table.metValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCustom => $composableBuilder(
    column: $table.isCustom,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> workoutSetsRefs(
    Expression<bool> Function($$WorkoutSetsTableFilterComposer f) f,
  ) {
    final $$WorkoutSetsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutSets,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutSetsTableFilterComposer(
            $db: $db,
            $table: $db.workoutSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExercisesTableOrderingComposer
    extends Composer<_$AppDatabase, $ExercisesTable> {
  $$ExercisesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get primaryMuscles => $composableBuilder(
    column: $table.primaryMuscles,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get secondaryMuscles => $composableBuilder(
    column: $table.secondaryMuscles,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get equipment => $composableBuilder(
    column: $table.equipment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get metValue => $composableBuilder(
    column: $table.metValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCustom => $composableBuilder(
    column: $table.isCustom,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExercisesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExercisesTable> {
  $$ExercisesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get primaryMuscles => $composableBuilder(
    column: $table.primaryMuscles,
    builder: (column) => column,
  );

  GeneratedColumn<String> get secondaryMuscles => $composableBuilder(
    column: $table.secondaryMuscles,
    builder: (column) => column,
  );

  GeneratedColumn<String> get equipment =>
      $composableBuilder(column: $table.equipment, builder: (column) => column);

  GeneratedColumn<double> get metValue =>
      $composableBuilder(column: $table.metValue, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isCustom =>
      $composableBuilder(column: $table.isCustom, builder: (column) => column);

  Expression<T> workoutSetsRefs<T extends Object>(
    Expression<T> Function($$WorkoutSetsTableAnnotationComposer a) f,
  ) {
    final $$WorkoutSetsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.workoutSets,
      getReferencedColumn: (t) => t.exerciseId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutSetsTableAnnotationComposer(
            $db: $db,
            $table: $db.workoutSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ExercisesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExercisesTable,
          Exercise,
          $$ExercisesTableFilterComposer,
          $$ExercisesTableOrderingComposer,
          $$ExercisesTableAnnotationComposer,
          $$ExercisesTableCreateCompanionBuilder,
          $$ExercisesTableUpdateCompanionBuilder,
          (Exercise, $$ExercisesTableReferences),
          Exercise,
          PrefetchHooks Function({bool workoutSetsRefs})
        > {
  $$ExercisesTableTableManager(_$AppDatabase db, $ExercisesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExercisesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExercisesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExercisesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<String?> primaryMuscles = const Value.absent(),
                Value<String?> secondaryMuscles = const Value.absent(),
                Value<String?> equipment = const Value.absent(),
                Value<double?> metValue = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<bool> isCustom = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExercisesCompanion(
                id: id,
                name: name,
                category: category,
                primaryMuscles: primaryMuscles,
                secondaryMuscles: secondaryMuscles,
                equipment: equipment,
                metValue: metValue,
                description: description,
                isCustom: isCustom,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> category = const Value.absent(),
                Value<String?> primaryMuscles = const Value.absent(),
                Value<String?> secondaryMuscles = const Value.absent(),
                Value<String?> equipment = const Value.absent(),
                Value<double?> metValue = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<bool> isCustom = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ExercisesCompanion.insert(
                id: id,
                name: name,
                category: category,
                primaryMuscles: primaryMuscles,
                secondaryMuscles: secondaryMuscles,
                equipment: equipment,
                metValue: metValue,
                description: description,
                isCustom: isCustom,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ExercisesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({workoutSetsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (workoutSetsRefs) db.workoutSets],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (workoutSetsRefs)
                    await $_getPrefetchedData<
                      Exercise,
                      $ExercisesTable,
                      WorkoutSet
                    >(
                      currentTable: table,
                      referencedTable: $$ExercisesTableReferences
                          ._workoutSetsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ExercisesTableReferences(
                            db,
                            table,
                            p0,
                          ).workoutSetsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.exerciseId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ExercisesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExercisesTable,
      Exercise,
      $$ExercisesTableFilterComposer,
      $$ExercisesTableOrderingComposer,
      $$ExercisesTableAnnotationComposer,
      $$ExercisesTableCreateCompanionBuilder,
      $$ExercisesTableUpdateCompanionBuilder,
      (Exercise, $$ExercisesTableReferences),
      Exercise,
      PrefetchHooks Function({bool workoutSetsRefs})
    >;
typedef $$WorkoutSetsTableCreateCompanionBuilder =
    WorkoutSetsCompanion Function({
      required String id,
      required String workoutId,
      required String exerciseId,
      required int setNumber,
      Value<int?> reps,
      Value<double?> weightKg,
      Value<double?> rpe,
      Value<bool> isWarmup,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$WorkoutSetsTableUpdateCompanionBuilder =
    WorkoutSetsCompanion Function({
      Value<String> id,
      Value<String> workoutId,
      Value<String> exerciseId,
      Value<int> setNumber,
      Value<int?> reps,
      Value<double?> weightKg,
      Value<double?> rpe,
      Value<bool> isWarmup,
      Value<String?> notes,
      Value<int> rowid,
    });

final class $$WorkoutSetsTableReferences
    extends BaseReferences<_$AppDatabase, $WorkoutSetsTable, WorkoutSet> {
  $$WorkoutSetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WorkoutsTable _workoutIdTable(_$AppDatabase db) =>
      db.workouts.createAlias(
        $_aliasNameGenerator(db.workoutSets.workoutId, db.workouts.id),
      );

  $$WorkoutsTableProcessedTableManager get workoutId {
    final $_column = $_itemColumn<String>('workout_id')!;

    final manager = $$WorkoutsTableTableManager(
      $_db,
      $_db.workouts,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_workoutIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ExercisesTable _exerciseIdTable(_$AppDatabase db) =>
      db.exercises.createAlias(
        $_aliasNameGenerator(db.workoutSets.exerciseId, db.exercises.id),
      );

  $$ExercisesTableProcessedTableManager get exerciseId {
    final $_column = $_itemColumn<String>('exercise_id')!;

    final manager = $$ExercisesTableTableManager(
      $_db,
      $_db.exercises,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_exerciseIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$WorkoutSetsTableFilterComposer
    extends Composer<_$AppDatabase, $WorkoutSetsTable> {
  $$WorkoutSetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get setNumber => $composableBuilder(
    column: $table.setNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reps => $composableBuilder(
    column: $table.reps,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rpe => $composableBuilder(
    column: $table.rpe,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isWarmup => $composableBuilder(
    column: $table.isWarmup,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  $$WorkoutsTableFilterComposer get workoutId {
    final $$WorkoutsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workouts,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutsTableFilterComposer(
            $db: $db,
            $table: $db.workouts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExercisesTableFilterComposer get exerciseId {
    final $$ExercisesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExercisesTableFilterComposer(
            $db: $db,
            $table: $db.exercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutSetsTableOrderingComposer
    extends Composer<_$AppDatabase, $WorkoutSetsTable> {
  $$WorkoutSetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get setNumber => $composableBuilder(
    column: $table.setNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reps => $composableBuilder(
    column: $table.reps,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rpe => $composableBuilder(
    column: $table.rpe,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isWarmup => $composableBuilder(
    column: $table.isWarmup,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  $$WorkoutsTableOrderingComposer get workoutId {
    final $$WorkoutsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workouts,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutsTableOrderingComposer(
            $db: $db,
            $table: $db.workouts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExercisesTableOrderingComposer get exerciseId {
    final $$ExercisesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExercisesTableOrderingComposer(
            $db: $db,
            $table: $db.exercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutSetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WorkoutSetsTable> {
  $$WorkoutSetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get setNumber =>
      $composableBuilder(column: $table.setNumber, builder: (column) => column);

  GeneratedColumn<int> get reps =>
      $composableBuilder(column: $table.reps, builder: (column) => column);

  GeneratedColumn<double> get weightKg =>
      $composableBuilder(column: $table.weightKg, builder: (column) => column);

  GeneratedColumn<double> get rpe =>
      $composableBuilder(column: $table.rpe, builder: (column) => column);

  GeneratedColumn<bool> get isWarmup =>
      $composableBuilder(column: $table.isWarmup, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$WorkoutsTableAnnotationComposer get workoutId {
    final $$WorkoutsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.workoutId,
      referencedTable: $db.workouts,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WorkoutsTableAnnotationComposer(
            $db: $db,
            $table: $db.workouts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ExercisesTableAnnotationComposer get exerciseId {
    final $$ExercisesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.exerciseId,
      referencedTable: $db.exercises,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ExercisesTableAnnotationComposer(
            $db: $db,
            $table: $db.exercises,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$WorkoutSetsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WorkoutSetsTable,
          WorkoutSet,
          $$WorkoutSetsTableFilterComposer,
          $$WorkoutSetsTableOrderingComposer,
          $$WorkoutSetsTableAnnotationComposer,
          $$WorkoutSetsTableCreateCompanionBuilder,
          $$WorkoutSetsTableUpdateCompanionBuilder,
          (WorkoutSet, $$WorkoutSetsTableReferences),
          WorkoutSet,
          PrefetchHooks Function({bool workoutId, bool exerciseId})
        > {
  $$WorkoutSetsTableTableManager(_$AppDatabase db, $WorkoutSetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WorkoutSetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WorkoutSetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WorkoutSetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> workoutId = const Value.absent(),
                Value<String> exerciseId = const Value.absent(),
                Value<int> setNumber = const Value.absent(),
                Value<int?> reps = const Value.absent(),
                Value<double?> weightKg = const Value.absent(),
                Value<double?> rpe = const Value.absent(),
                Value<bool> isWarmup = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkoutSetsCompanion(
                id: id,
                workoutId: workoutId,
                exerciseId: exerciseId,
                setNumber: setNumber,
                reps: reps,
                weightKg: weightKg,
                rpe: rpe,
                isWarmup: isWarmup,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String workoutId,
                required String exerciseId,
                required int setNumber,
                Value<int?> reps = const Value.absent(),
                Value<double?> weightKg = const Value.absent(),
                Value<double?> rpe = const Value.absent(),
                Value<bool> isWarmup = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WorkoutSetsCompanion.insert(
                id: id,
                workoutId: workoutId,
                exerciseId: exerciseId,
                setNumber: setNumber,
                reps: reps,
                weightKg: weightKg,
                rpe: rpe,
                isWarmup: isWarmup,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WorkoutSetsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({workoutId = false, exerciseId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (workoutId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.workoutId,
                                referencedTable: $$WorkoutSetsTableReferences
                                    ._workoutIdTable(db),
                                referencedColumn: $$WorkoutSetsTableReferences
                                    ._workoutIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (exerciseId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.exerciseId,
                                referencedTable: $$WorkoutSetsTableReferences
                                    ._exerciseIdTable(db),
                                referencedColumn: $$WorkoutSetsTableReferences
                                    ._exerciseIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$WorkoutSetsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WorkoutSetsTable,
      WorkoutSet,
      $$WorkoutSetsTableFilterComposer,
      $$WorkoutSetsTableOrderingComposer,
      $$WorkoutSetsTableAnnotationComposer,
      $$WorkoutSetsTableCreateCompanionBuilder,
      $$WorkoutSetsTableUpdateCompanionBuilder,
      (WorkoutSet, $$WorkoutSetsTableReferences),
      WorkoutSet,
      PrefetchHooks Function({bool workoutId, bool exerciseId})
    >;
typedef $$HabitsTableCreateCompanionBuilder =
    HabitsCompanion Function({
      required String id,
      required String name,
      required String type,
      required String targetType,
      Value<double?> targetValue,
      Value<String?> unit,
      required DateTime startDate,
      Value<double?> moneySavedPerDay,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$HabitsTableUpdateCompanionBuilder =
    HabitsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> type,
      Value<String> targetType,
      Value<double?> targetValue,
      Value<String?> unit,
      Value<DateTime> startDate,
      Value<double?> moneySavedPerDay,
      Value<bool> isActive,
      Value<int> rowid,
    });

final class $$HabitsTableReferences
    extends BaseReferences<_$AppDatabase, $HabitsTable, Habit> {
  $$HabitsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$HabitLogsTable, List<HabitLog>>
  _habitLogsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.habitLogs,
    aliasName: $_aliasNameGenerator(db.habits.id, db.habitLogs.habitId),
  );

  $$HabitLogsTableProcessedTableManager get habitLogsRefs {
    final manager = $$HabitLogsTableTableManager(
      $_db,
      $_db.habitLogs,
    ).filter((f) => f.habitId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_habitLogsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$HabitsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get targetType => $composableBuilder(
    column: $table.targetType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get moneySavedPerDay => $composableBuilder(
    column: $table.moneySavedPerDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> habitLogsRefs(
    Expression<bool> Function($$HabitLogsTableFilterComposer f) f,
  ) {
    final $$HabitLogsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.habitLogs,
      getReferencedColumn: (t) => t.habitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitLogsTableFilterComposer(
            $db: $db,
            $table: $db.habitLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HabitsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get targetType => $composableBuilder(
    column: $table.targetType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
    column: $table.startDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get moneySavedPerDay => $composableBuilder(
    column: $table.moneySavedPerDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HabitsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get targetType => $composableBuilder(
    column: $table.targetType,
    builder: (column) => column,
  );

  GeneratedColumn<double> get targetValue => $composableBuilder(
    column: $table.targetValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<double> get moneySavedPerDay => $composableBuilder(
    column: $table.moneySavedPerDay,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  Expression<T> habitLogsRefs<T extends Object>(
    Expression<T> Function($$HabitLogsTableAnnotationComposer a) f,
  ) {
    final $$HabitLogsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.habitLogs,
      getReferencedColumn: (t) => t.habitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitLogsTableAnnotationComposer(
            $db: $db,
            $table: $db.habitLogs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$HabitsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HabitsTable,
          Habit,
          $$HabitsTableFilterComposer,
          $$HabitsTableOrderingComposer,
          $$HabitsTableAnnotationComposer,
          $$HabitsTableCreateCompanionBuilder,
          $$HabitsTableUpdateCompanionBuilder,
          (Habit, $$HabitsTableReferences),
          Habit,
          PrefetchHooks Function({bool habitLogsRefs})
        > {
  $$HabitsTableTableManager(_$AppDatabase db, $HabitsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> targetType = const Value.absent(),
                Value<double?> targetValue = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                Value<DateTime> startDate = const Value.absent(),
                Value<double?> moneySavedPerDay = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitsCompanion(
                id: id,
                name: name,
                type: type,
                targetType: targetType,
                targetValue: targetValue,
                unit: unit,
                startDate: startDate,
                moneySavedPerDay: moneySavedPerDay,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String type,
                required String targetType,
                Value<double?> targetValue = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                required DateTime startDate,
                Value<double?> moneySavedPerDay = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitsCompanion.insert(
                id: id,
                name: name,
                type: type,
                targetType: targetType,
                targetValue: targetValue,
                unit: unit,
                startDate: startDate,
                moneySavedPerDay: moneySavedPerDay,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$HabitsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({habitLogsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (habitLogsRefs) db.habitLogs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (habitLogsRefs)
                    await $_getPrefetchedData<Habit, $HabitsTable, HabitLog>(
                      currentTable: table,
                      referencedTable: $$HabitsTableReferences
                          ._habitLogsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$HabitsTableReferences(db, table, p0).habitLogsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.habitId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$HabitsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HabitsTable,
      Habit,
      $$HabitsTableFilterComposer,
      $$HabitsTableOrderingComposer,
      $$HabitsTableAnnotationComposer,
      $$HabitsTableCreateCompanionBuilder,
      $$HabitsTableUpdateCompanionBuilder,
      (Habit, $$HabitsTableReferences),
      Habit,
      PrefetchHooks Function({bool habitLogsRefs})
    >;
typedef $$HabitLogsTableCreateCompanionBuilder =
    HabitLogsCompanion Function({
      required String id,
      required String habitId,
      required DateTime date,
      required String status,
      Value<double?> amount,
      Value<String?> trigger,
      Value<int?> severity,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$HabitLogsTableUpdateCompanionBuilder =
    HabitLogsCompanion Function({
      Value<String> id,
      Value<String> habitId,
      Value<DateTime> date,
      Value<String> status,
      Value<double?> amount,
      Value<String?> trigger,
      Value<int?> severity,
      Value<String?> notes,
      Value<int> rowid,
    });

final class $$HabitLogsTableReferences
    extends BaseReferences<_$AppDatabase, $HabitLogsTable, HabitLog> {
  $$HabitLogsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $HabitsTable _habitIdTable(_$AppDatabase db) => db.habits.createAlias(
    $_aliasNameGenerator(db.habitLogs.habitId, db.habits.id),
  );

  $$HabitsTableProcessedTableManager get habitId {
    final $_column = $_itemColumn<String>('habit_id')!;

    final manager = $$HabitsTableTableManager(
      $_db,
      $_db.habits,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_habitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$HabitLogsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitLogsTable> {
  $$HabitLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get severity => $composableBuilder(
    column: $table.severity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  $$HabitsTableFilterComposer get habitId {
    final $$HabitsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.habitId,
      referencedTable: $db.habits,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitsTableFilterComposer(
            $db: $db,
            $table: $db.habits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HabitLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitLogsTable> {
  $$HabitLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get trigger => $composableBuilder(
    column: $table.trigger,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get severity => $composableBuilder(
    column: $table.severity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  $$HabitsTableOrderingComposer get habitId {
    final $$HabitsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.habitId,
      referencedTable: $db.habits,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitsTableOrderingComposer(
            $db: $db,
            $table: $db.habits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HabitLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitLogsTable> {
  $$HabitLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get trigger =>
      $composableBuilder(column: $table.trigger, builder: (column) => column);

  GeneratedColumn<int> get severity =>
      $composableBuilder(column: $table.severity, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$HabitsTableAnnotationComposer get habitId {
    final $$HabitsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.habitId,
      referencedTable: $db.habits,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HabitsTableAnnotationComposer(
            $db: $db,
            $table: $db.habits,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HabitLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HabitLogsTable,
          HabitLog,
          $$HabitLogsTableFilterComposer,
          $$HabitLogsTableOrderingComposer,
          $$HabitLogsTableAnnotationComposer,
          $$HabitLogsTableCreateCompanionBuilder,
          $$HabitLogsTableUpdateCompanionBuilder,
          (HabitLog, $$HabitLogsTableReferences),
          HabitLog,
          PrefetchHooks Function({bool habitId})
        > {
  $$HabitLogsTableTableManager(_$AppDatabase db, $HabitLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> habitId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<double?> amount = const Value.absent(),
                Value<String?> trigger = const Value.absent(),
                Value<int?> severity = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitLogsCompanion(
                id: id,
                habitId: habitId,
                date: date,
                status: status,
                amount: amount,
                trigger: trigger,
                severity: severity,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String habitId,
                required DateTime date,
                required String status,
                Value<double?> amount = const Value.absent(),
                Value<String?> trigger = const Value.absent(),
                Value<int?> severity = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HabitLogsCompanion.insert(
                id: id,
                habitId: habitId,
                date: date,
                status: status,
                amount: amount,
                trigger: trigger,
                severity: severity,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$HabitLogsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({habitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (habitId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.habitId,
                                referencedTable: $$HabitLogsTableReferences
                                    ._habitIdTable(db),
                                referencedColumn: $$HabitLogsTableReferences
                                    ._habitIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$HabitLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HabitLogsTable,
      HabitLog,
      $$HabitLogsTableFilterComposer,
      $$HabitLogsTableOrderingComposer,
      $$HabitLogsTableAnnotationComposer,
      $$HabitLogsTableCreateCompanionBuilder,
      $$HabitLogsTableUpdateCompanionBuilder,
      (HabitLog, $$HabitLogsTableReferences),
      HabitLog,
      PrefetchHooks Function({bool habitId})
    >;
typedef $$SymptomLogsTableCreateCompanionBuilder =
    SymptomLogsCompanion Function({
      required String id,
      required DateTime date,
      required String symptomType,
      Value<int?> severity,
      Value<int?> bristolStoolType,
      Value<String?> suspectedTriggerFood,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$SymptomLogsTableUpdateCompanionBuilder =
    SymptomLogsCompanion Function({
      Value<String> id,
      Value<DateTime> date,
      Value<String> symptomType,
      Value<int?> severity,
      Value<int?> bristolStoolType,
      Value<String?> suspectedTriggerFood,
      Value<String?> notes,
      Value<int> rowid,
    });

class $$SymptomLogsTableFilterComposer
    extends Composer<_$AppDatabase, $SymptomLogsTable> {
  $$SymptomLogsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symptomType => $composableBuilder(
    column: $table.symptomType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get severity => $composableBuilder(
    column: $table.severity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bristolStoolType => $composableBuilder(
    column: $table.bristolStoolType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get suspectedTriggerFood => $composableBuilder(
    column: $table.suspectedTriggerFood,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SymptomLogsTableOrderingComposer
    extends Composer<_$AppDatabase, $SymptomLogsTable> {
  $$SymptomLogsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symptomType => $composableBuilder(
    column: $table.symptomType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get severity => $composableBuilder(
    column: $table.severity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bristolStoolType => $composableBuilder(
    column: $table.bristolStoolType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get suspectedTriggerFood => $composableBuilder(
    column: $table.suspectedTriggerFood,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SymptomLogsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SymptomLogsTable> {
  $$SymptomLogsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get symptomType => $composableBuilder(
    column: $table.symptomType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get severity =>
      $composableBuilder(column: $table.severity, builder: (column) => column);

  GeneratedColumn<int> get bristolStoolType => $composableBuilder(
    column: $table.bristolStoolType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get suspectedTriggerFood => $composableBuilder(
    column: $table.suspectedTriggerFood,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$SymptomLogsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SymptomLogsTable,
          SymptomLog,
          $$SymptomLogsTableFilterComposer,
          $$SymptomLogsTableOrderingComposer,
          $$SymptomLogsTableAnnotationComposer,
          $$SymptomLogsTableCreateCompanionBuilder,
          $$SymptomLogsTableUpdateCompanionBuilder,
          (
            SymptomLog,
            BaseReferences<_$AppDatabase, $SymptomLogsTable, SymptomLog>,
          ),
          SymptomLog,
          PrefetchHooks Function()
        > {
  $$SymptomLogsTableTableManager(_$AppDatabase db, $SymptomLogsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SymptomLogsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SymptomLogsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SymptomLogsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> symptomType = const Value.absent(),
                Value<int?> severity = const Value.absent(),
                Value<int?> bristolStoolType = const Value.absent(),
                Value<String?> suspectedTriggerFood = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SymptomLogsCompanion(
                id: id,
                date: date,
                symptomType: symptomType,
                severity: severity,
                bristolStoolType: bristolStoolType,
                suspectedTriggerFood: suspectedTriggerFood,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime date,
                required String symptomType,
                Value<int?> severity = const Value.absent(),
                Value<int?> bristolStoolType = const Value.absent(),
                Value<String?> suspectedTriggerFood = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SymptomLogsCompanion.insert(
                id: id,
                date: date,
                symptomType: symptomType,
                severity: severity,
                bristolStoolType: bristolStoolType,
                suspectedTriggerFood: suspectedTriggerFood,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SymptomLogsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SymptomLogsTable,
      SymptomLog,
      $$SymptomLogsTableFilterComposer,
      $$SymptomLogsTableOrderingComposer,
      $$SymptomLogsTableAnnotationComposer,
      $$SymptomLogsTableCreateCompanionBuilder,
      $$SymptomLogsTableUpdateCompanionBuilder,
      (
        SymptomLog,
        BaseReferences<_$AppDatabase, $SymptomLogsTable, SymptomLog>,
      ),
      SymptomLog,
      PrefetchHooks Function()
    >;
typedef $$BodyMeasurementsTableCreateCompanionBuilder =
    BodyMeasurementsCompanion Function({
      required String id,
      required DateTime date,
      Value<double?> weightKg,
      Value<double?> bodyFatPct,
      Value<double?> waistCm,
      Value<double?> chestCm,
      Value<double?> armsCm,
      Value<double?> thighsCm,
      Value<double?> hipsCm,
      Value<double?> neckCm,
      Value<String?> notes,
      Value<int> rowid,
    });
typedef $$BodyMeasurementsTableUpdateCompanionBuilder =
    BodyMeasurementsCompanion Function({
      Value<String> id,
      Value<DateTime> date,
      Value<double?> weightKg,
      Value<double?> bodyFatPct,
      Value<double?> waistCm,
      Value<double?> chestCm,
      Value<double?> armsCm,
      Value<double?> thighsCm,
      Value<double?> hipsCm,
      Value<double?> neckCm,
      Value<String?> notes,
      Value<int> rowid,
    });

class $$BodyMeasurementsTableFilterComposer
    extends Composer<_$AppDatabase, $BodyMeasurementsTable> {
  $$BodyMeasurementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get bodyFatPct => $composableBuilder(
    column: $table.bodyFatPct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get waistCm => $composableBuilder(
    column: $table.waistCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get chestCm => $composableBuilder(
    column: $table.chestCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get armsCm => $composableBuilder(
    column: $table.armsCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get thighsCm => $composableBuilder(
    column: $table.thighsCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get hipsCm => $composableBuilder(
    column: $table.hipsCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get neckCm => $composableBuilder(
    column: $table.neckCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BodyMeasurementsTableOrderingComposer
    extends Composer<_$AppDatabase, $BodyMeasurementsTable> {
  $$BodyMeasurementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weightKg => $composableBuilder(
    column: $table.weightKg,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get bodyFatPct => $composableBuilder(
    column: $table.bodyFatPct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get waistCm => $composableBuilder(
    column: $table.waistCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get chestCm => $composableBuilder(
    column: $table.chestCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get armsCm => $composableBuilder(
    column: $table.armsCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get thighsCm => $composableBuilder(
    column: $table.thighsCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get hipsCm => $composableBuilder(
    column: $table.hipsCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get neckCm => $composableBuilder(
    column: $table.neckCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BodyMeasurementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BodyMeasurementsTable> {
  $$BodyMeasurementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get weightKg =>
      $composableBuilder(column: $table.weightKg, builder: (column) => column);

  GeneratedColumn<double> get bodyFatPct => $composableBuilder(
    column: $table.bodyFatPct,
    builder: (column) => column,
  );

  GeneratedColumn<double> get waistCm =>
      $composableBuilder(column: $table.waistCm, builder: (column) => column);

  GeneratedColumn<double> get chestCm =>
      $composableBuilder(column: $table.chestCm, builder: (column) => column);

  GeneratedColumn<double> get armsCm =>
      $composableBuilder(column: $table.armsCm, builder: (column) => column);

  GeneratedColumn<double> get thighsCm =>
      $composableBuilder(column: $table.thighsCm, builder: (column) => column);

  GeneratedColumn<double> get hipsCm =>
      $composableBuilder(column: $table.hipsCm, builder: (column) => column);

  GeneratedColumn<double> get neckCm =>
      $composableBuilder(column: $table.neckCm, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$BodyMeasurementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BodyMeasurementsTable,
          BodyMeasurement,
          $$BodyMeasurementsTableFilterComposer,
          $$BodyMeasurementsTableOrderingComposer,
          $$BodyMeasurementsTableAnnotationComposer,
          $$BodyMeasurementsTableCreateCompanionBuilder,
          $$BodyMeasurementsTableUpdateCompanionBuilder,
          (
            BodyMeasurement,
            BaseReferences<
              _$AppDatabase,
              $BodyMeasurementsTable,
              BodyMeasurement
            >,
          ),
          BodyMeasurement,
          PrefetchHooks Function()
        > {
  $$BodyMeasurementsTableTableManager(
    _$AppDatabase db,
    $BodyMeasurementsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BodyMeasurementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BodyMeasurementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BodyMeasurementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<double?> weightKg = const Value.absent(),
                Value<double?> bodyFatPct = const Value.absent(),
                Value<double?> waistCm = const Value.absent(),
                Value<double?> chestCm = const Value.absent(),
                Value<double?> armsCm = const Value.absent(),
                Value<double?> thighsCm = const Value.absent(),
                Value<double?> hipsCm = const Value.absent(),
                Value<double?> neckCm = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BodyMeasurementsCompanion(
                id: id,
                date: date,
                weightKg: weightKg,
                bodyFatPct: bodyFatPct,
                waistCm: waistCm,
                chestCm: chestCm,
                armsCm: armsCm,
                thighsCm: thighsCm,
                hipsCm: hipsCm,
                neckCm: neckCm,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required DateTime date,
                Value<double?> weightKg = const Value.absent(),
                Value<double?> bodyFatPct = const Value.absent(),
                Value<double?> waistCm = const Value.absent(),
                Value<double?> chestCm = const Value.absent(),
                Value<double?> armsCm = const Value.absent(),
                Value<double?> thighsCm = const Value.absent(),
                Value<double?> hipsCm = const Value.absent(),
                Value<double?> neckCm = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BodyMeasurementsCompanion.insert(
                id: id,
                date: date,
                weightKg: weightKg,
                bodyFatPct: bodyFatPct,
                waistCm: waistCm,
                chestCm: chestCm,
                armsCm: armsCm,
                thighsCm: thighsCm,
                hipsCm: hipsCm,
                neckCm: neckCm,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BodyMeasurementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BodyMeasurementsTable,
      BodyMeasurement,
      $$BodyMeasurementsTableFilterComposer,
      $$BodyMeasurementsTableOrderingComposer,
      $$BodyMeasurementsTableAnnotationComposer,
      $$BodyMeasurementsTableCreateCompanionBuilder,
      $$BodyMeasurementsTableUpdateCompanionBuilder,
      (
        BodyMeasurement,
        BaseReferences<_$AppDatabase, $BodyMeasurementsTable, BodyMeasurement>,
      ),
      BodyMeasurement,
      PrefetchHooks Function()
    >;
typedef $$PantryItemsTableCreateCompanionBuilder =
    PantryItemsCompanion Function({
      required String id,
      Value<String?> ingredientId,
      required String name,
      Value<String?> quantityText,
      Value<double?> quantityGramsEst,
      Value<bool> isStaple,
      Value<String?> lowStockThreshold,
      Value<String?> category,
      Value<DateTime?> purchasedAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$PantryItemsTableUpdateCompanionBuilder =
    PantryItemsCompanion Function({
      Value<String> id,
      Value<String?> ingredientId,
      Value<String> name,
      Value<String?> quantityText,
      Value<double?> quantityGramsEst,
      Value<bool> isStaple,
      Value<String?> lowStockThreshold,
      Value<String?> category,
      Value<DateTime?> purchasedAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$PantryItemsTableReferences
    extends BaseReferences<_$AppDatabase, $PantryItemsTable, PantryItem> {
  $$PantryItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $IngredientsTable _ingredientIdTable(_$AppDatabase db) =>
      db.ingredients.createAlias(
        $_aliasNameGenerator(db.pantryItems.ingredientId, db.ingredients.id),
      );

  $$IngredientsTableProcessedTableManager? get ingredientId {
    final $_column = $_itemColumn<String>('ingredient_id');
    if ($_column == null) return null;
    final manager = $$IngredientsTableTableManager(
      $_db,
      $_db.ingredients,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ingredientIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PantryItemsTableFilterComposer
    extends Composer<_$AppDatabase, $PantryItemsTable> {
  $$PantryItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get quantityText => $composableBuilder(
    column: $table.quantityText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get quantityGramsEst => $composableBuilder(
    column: $table.quantityGramsEst,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isStaple => $composableBuilder(
    column: $table.isStaple,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lowStockThreshold => $composableBuilder(
    column: $table.lowStockThreshold,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get purchasedAt => $composableBuilder(
    column: $table.purchasedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$IngredientsTableFilterComposer get ingredientId {
    final $$IngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableFilterComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PantryItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $PantryItemsTable> {
  $$PantryItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get quantityText => $composableBuilder(
    column: $table.quantityText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get quantityGramsEst => $composableBuilder(
    column: $table.quantityGramsEst,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isStaple => $composableBuilder(
    column: $table.isStaple,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lowStockThreshold => $composableBuilder(
    column: $table.lowStockThreshold,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get purchasedAt => $composableBuilder(
    column: $table.purchasedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$IngredientsTableOrderingComposer get ingredientId {
    final $$IngredientsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableOrderingComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PantryItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PantryItemsTable> {
  $$PantryItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get quantityText => $composableBuilder(
    column: $table.quantityText,
    builder: (column) => column,
  );

  GeneratedColumn<double> get quantityGramsEst => $composableBuilder(
    column: $table.quantityGramsEst,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isStaple =>
      $composableBuilder(column: $table.isStaple, builder: (column) => column);

  GeneratedColumn<String> get lowStockThreshold => $composableBuilder(
    column: $table.lowStockThreshold,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<DateTime> get purchasedAt => $composableBuilder(
    column: $table.purchasedAt,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$IngredientsTableAnnotationComposer get ingredientId {
    final $$IngredientsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableAnnotationComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PantryItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PantryItemsTable,
          PantryItem,
          $$PantryItemsTableFilterComposer,
          $$PantryItemsTableOrderingComposer,
          $$PantryItemsTableAnnotationComposer,
          $$PantryItemsTableCreateCompanionBuilder,
          $$PantryItemsTableUpdateCompanionBuilder,
          (PantryItem, $$PantryItemsTableReferences),
          PantryItem,
          PrefetchHooks Function({bool ingredientId})
        > {
  $$PantryItemsTableTableManager(_$AppDatabase db, $PantryItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PantryItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PantryItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PantryItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> ingredientId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> quantityText = const Value.absent(),
                Value<double?> quantityGramsEst = const Value.absent(),
                Value<bool> isStaple = const Value.absent(),
                Value<String?> lowStockThreshold = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<DateTime?> purchasedAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PantryItemsCompanion(
                id: id,
                ingredientId: ingredientId,
                name: name,
                quantityText: quantityText,
                quantityGramsEst: quantityGramsEst,
                isStaple: isStaple,
                lowStockThreshold: lowStockThreshold,
                category: category,
                purchasedAt: purchasedAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> ingredientId = const Value.absent(),
                required String name,
                Value<String?> quantityText = const Value.absent(),
                Value<double?> quantityGramsEst = const Value.absent(),
                Value<bool> isStaple = const Value.absent(),
                Value<String?> lowStockThreshold = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<DateTime?> purchasedAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PantryItemsCompanion.insert(
                id: id,
                ingredientId: ingredientId,
                name: name,
                quantityText: quantityText,
                quantityGramsEst: quantityGramsEst,
                isStaple: isStaple,
                lowStockThreshold: lowStockThreshold,
                category: category,
                purchasedAt: purchasedAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PantryItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({ingredientId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (ingredientId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ingredientId,
                                referencedTable: $$PantryItemsTableReferences
                                    ._ingredientIdTable(db),
                                referencedColumn: $$PantryItemsTableReferences
                                    ._ingredientIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PantryItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PantryItemsTable,
      PantryItem,
      $$PantryItemsTableFilterComposer,
      $$PantryItemsTableOrderingComposer,
      $$PantryItemsTableAnnotationComposer,
      $$PantryItemsTableCreateCompanionBuilder,
      $$PantryItemsTableUpdateCompanionBuilder,
      (PantryItem, $$PantryItemsTableReferences),
      PantryItem,
      PrefetchHooks Function({bool ingredientId})
    >;
typedef $$ShoppingListsTableCreateCompanionBuilder =
    ShoppingListsCompanion Function({
      required String id,
      required String name,
      Value<DateTime?> weekStart,
      Value<DateTime> createdAt,
      Value<bool> isActive,
      Value<int> rowid,
    });
typedef $$ShoppingListsTableUpdateCompanionBuilder =
    ShoppingListsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<DateTime?> weekStart,
      Value<DateTime> createdAt,
      Value<bool> isActive,
      Value<int> rowid,
    });

final class $$ShoppingListsTableReferences
    extends BaseReferences<_$AppDatabase, $ShoppingListsTable, ShoppingList> {
  $$ShoppingListsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static MultiTypedResultKey<$ShoppingItemsTable, List<ShoppingItem>>
  _shoppingItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.shoppingItems,
    aliasName: $_aliasNameGenerator(
      db.shoppingLists.id,
      db.shoppingItems.listId,
    ),
  );

  $$ShoppingItemsTableProcessedTableManager get shoppingItemsRefs {
    final manager = $$ShoppingItemsTableTableManager(
      $_db,
      $_db.shoppingItems,
    ).filter((f) => f.listId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_shoppingItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ShoppingListsTableFilterComposer
    extends Composer<_$AppDatabase, $ShoppingListsTable> {
  $$ShoppingListsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get weekStart => $composableBuilder(
    column: $table.weekStart,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> shoppingItemsRefs(
    Expression<bool> Function($$ShoppingItemsTableFilterComposer f) f,
  ) {
    final $$ShoppingItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.shoppingItems,
      getReferencedColumn: (t) => t.listId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShoppingItemsTableFilterComposer(
            $db: $db,
            $table: $db.shoppingItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ShoppingListsTableOrderingComposer
    extends Composer<_$AppDatabase, $ShoppingListsTable> {
  $$ShoppingListsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get weekStart => $composableBuilder(
    column: $table.weekStart,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ShoppingListsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ShoppingListsTable> {
  $$ShoppingListsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get weekStart =>
      $composableBuilder(column: $table.weekStart, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  Expression<T> shoppingItemsRefs<T extends Object>(
    Expression<T> Function($$ShoppingItemsTableAnnotationComposer a) f,
  ) {
    final $$ShoppingItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.shoppingItems,
      getReferencedColumn: (t) => t.listId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShoppingItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.shoppingItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ShoppingListsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ShoppingListsTable,
          ShoppingList,
          $$ShoppingListsTableFilterComposer,
          $$ShoppingListsTableOrderingComposer,
          $$ShoppingListsTableAnnotationComposer,
          $$ShoppingListsTableCreateCompanionBuilder,
          $$ShoppingListsTableUpdateCompanionBuilder,
          (ShoppingList, $$ShoppingListsTableReferences),
          ShoppingList,
          PrefetchHooks Function({bool shoppingItemsRefs})
        > {
  $$ShoppingListsTableTableManager(_$AppDatabase db, $ShoppingListsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ShoppingListsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ShoppingListsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ShoppingListsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<DateTime?> weekStart = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShoppingListsCompanion(
                id: id,
                name: name,
                weekStart: weekStart,
                createdAt: createdAt,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<DateTime?> weekStart = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShoppingListsCompanion.insert(
                id: id,
                name: name,
                weekStart: weekStart,
                createdAt: createdAt,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ShoppingListsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({shoppingItemsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (shoppingItemsRefs) db.shoppingItems,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (shoppingItemsRefs)
                    await $_getPrefetchedData<
                      ShoppingList,
                      $ShoppingListsTable,
                      ShoppingItem
                    >(
                      currentTable: table,
                      referencedTable: $$ShoppingListsTableReferences
                          ._shoppingItemsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ShoppingListsTableReferences(
                            db,
                            table,
                            p0,
                          ).shoppingItemsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.listId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ShoppingListsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ShoppingListsTable,
      ShoppingList,
      $$ShoppingListsTableFilterComposer,
      $$ShoppingListsTableOrderingComposer,
      $$ShoppingListsTableAnnotationComposer,
      $$ShoppingListsTableCreateCompanionBuilder,
      $$ShoppingListsTableUpdateCompanionBuilder,
      (ShoppingList, $$ShoppingListsTableReferences),
      ShoppingList,
      PrefetchHooks Function({bool shoppingItemsRefs})
    >;
typedef $$ShoppingItemsTableCreateCompanionBuilder =
    ShoppingItemsCompanion Function({
      required String id,
      required String listId,
      Value<String?> ingredientId,
      required String name,
      Value<String?> amount,
      Value<String?> category,
      Value<bool> isChecked,
      Value<String?> fodmapLevel,
      Value<bool> isFromMealPlan,
      Value<String?> notes,
      Value<int?> sortOrder,
      Value<int> rowid,
    });
typedef $$ShoppingItemsTableUpdateCompanionBuilder =
    ShoppingItemsCompanion Function({
      Value<String> id,
      Value<String> listId,
      Value<String?> ingredientId,
      Value<String> name,
      Value<String?> amount,
      Value<String?> category,
      Value<bool> isChecked,
      Value<String?> fodmapLevel,
      Value<bool> isFromMealPlan,
      Value<String?> notes,
      Value<int?> sortOrder,
      Value<int> rowid,
    });

final class $$ShoppingItemsTableReferences
    extends BaseReferences<_$AppDatabase, $ShoppingItemsTable, ShoppingItem> {
  $$ShoppingItemsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ShoppingListsTable _listIdTable(_$AppDatabase db) =>
      db.shoppingLists.createAlias(
        $_aliasNameGenerator(db.shoppingItems.listId, db.shoppingLists.id),
      );

  $$ShoppingListsTableProcessedTableManager get listId {
    final $_column = $_itemColumn<String>('list_id')!;

    final manager = $$ShoppingListsTableTableManager(
      $_db,
      $_db.shoppingLists,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_listIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $IngredientsTable _ingredientIdTable(_$AppDatabase db) =>
      db.ingredients.createAlias(
        $_aliasNameGenerator(db.shoppingItems.ingredientId, db.ingredients.id),
      );

  $$IngredientsTableProcessedTableManager? get ingredientId {
    final $_column = $_itemColumn<String>('ingredient_id');
    if ($_column == null) return null;
    final manager = $$IngredientsTableTableManager(
      $_db,
      $_db.ingredients,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_ingredientIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ShoppingItemsTableFilterComposer
    extends Composer<_$AppDatabase, $ShoppingItemsTable> {
  $$ShoppingItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isChecked => $composableBuilder(
    column: $table.isChecked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fodmapLevel => $composableBuilder(
    column: $table.fodmapLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFromMealPlan => $composableBuilder(
    column: $table.isFromMealPlan,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  $$ShoppingListsTableFilterComposer get listId {
    final $$ShoppingListsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.listId,
      referencedTable: $db.shoppingLists,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShoppingListsTableFilterComposer(
            $db: $db,
            $table: $db.shoppingLists,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableFilterComposer get ingredientId {
    final $$IngredientsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableFilterComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ShoppingItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $ShoppingItemsTable> {
  $$ShoppingItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isChecked => $composableBuilder(
    column: $table.isChecked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fodmapLevel => $composableBuilder(
    column: $table.fodmapLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFromMealPlan => $composableBuilder(
    column: $table.isFromMealPlan,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  $$ShoppingListsTableOrderingComposer get listId {
    final $$ShoppingListsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.listId,
      referencedTable: $db.shoppingLists,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShoppingListsTableOrderingComposer(
            $db: $db,
            $table: $db.shoppingLists,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableOrderingComposer get ingredientId {
    final $$IngredientsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableOrderingComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ShoppingItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ShoppingItemsTable> {
  $$ShoppingItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<bool> get isChecked =>
      $composableBuilder(column: $table.isChecked, builder: (column) => column);

  GeneratedColumn<String> get fodmapLevel => $composableBuilder(
    column: $table.fodmapLevel,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isFromMealPlan => $composableBuilder(
    column: $table.isFromMealPlan,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  $$ShoppingListsTableAnnotationComposer get listId {
    final $$ShoppingListsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.listId,
      referencedTable: $db.shoppingLists,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ShoppingListsTableAnnotationComposer(
            $db: $db,
            $table: $db.shoppingLists,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$IngredientsTableAnnotationComposer get ingredientId {
    final $$IngredientsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.ingredientId,
      referencedTable: $db.ingredients,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$IngredientsTableAnnotationComposer(
            $db: $db,
            $table: $db.ingredients,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ShoppingItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ShoppingItemsTable,
          ShoppingItem,
          $$ShoppingItemsTableFilterComposer,
          $$ShoppingItemsTableOrderingComposer,
          $$ShoppingItemsTableAnnotationComposer,
          $$ShoppingItemsTableCreateCompanionBuilder,
          $$ShoppingItemsTableUpdateCompanionBuilder,
          (ShoppingItem, $$ShoppingItemsTableReferences),
          ShoppingItem,
          PrefetchHooks Function({bool listId, bool ingredientId})
        > {
  $$ShoppingItemsTableTableManager(_$AppDatabase db, $ShoppingItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ShoppingItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ShoppingItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ShoppingItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> listId = const Value.absent(),
                Value<String?> ingredientId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> amount = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<bool> isChecked = const Value.absent(),
                Value<String?> fodmapLevel = const Value.absent(),
                Value<bool> isFromMealPlan = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int?> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShoppingItemsCompanion(
                id: id,
                listId: listId,
                ingredientId: ingredientId,
                name: name,
                amount: amount,
                category: category,
                isChecked: isChecked,
                fodmapLevel: fodmapLevel,
                isFromMealPlan: isFromMealPlan,
                notes: notes,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String listId,
                Value<String?> ingredientId = const Value.absent(),
                required String name,
                Value<String?> amount = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<bool> isChecked = const Value.absent(),
                Value<String?> fodmapLevel = const Value.absent(),
                Value<bool> isFromMealPlan = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int?> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ShoppingItemsCompanion.insert(
                id: id,
                listId: listId,
                ingredientId: ingredientId,
                name: name,
                amount: amount,
                category: category,
                isChecked: isChecked,
                fodmapLevel: fodmapLevel,
                isFromMealPlan: isFromMealPlan,
                notes: notes,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ShoppingItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({listId = false, ingredientId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
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
                      dynamic
                    >
                  >(state) {
                    if (listId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.listId,
                                referencedTable: $$ShoppingItemsTableReferences
                                    ._listIdTable(db),
                                referencedColumn: $$ShoppingItemsTableReferences
                                    ._listIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (ingredientId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.ingredientId,
                                referencedTable: $$ShoppingItemsTableReferences
                                    ._ingredientIdTable(db),
                                referencedColumn: $$ShoppingItemsTableReferences
                                    ._ingredientIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ShoppingItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ShoppingItemsTable,
      ShoppingItem,
      $$ShoppingItemsTableFilterComposer,
      $$ShoppingItemsTableOrderingComposer,
      $$ShoppingItemsTableAnnotationComposer,
      $$ShoppingItemsTableCreateCompanionBuilder,
      $$ShoppingItemsTableUpdateCompanionBuilder,
      (ShoppingItem, $$ShoppingItemsTableReferences),
      ShoppingItem,
      PrefetchHooks Function({bool listId, bool ingredientId})
    >;
typedef $$LlmCacheTableCreateCompanionBuilder =
    LlmCacheCompanion Function({
      required String id,
      required String cacheKey,
      required String provider,
      required String model,
      required String promptHash,
      required String responseJson,
      Value<int?> tokensUsed,
      Value<DateTime> createdAt,
      Value<DateTime?> expiresAt,
      Value<int> rowid,
    });
typedef $$LlmCacheTableUpdateCompanionBuilder =
    LlmCacheCompanion Function({
      Value<String> id,
      Value<String> cacheKey,
      Value<String> provider,
      Value<String> model,
      Value<String> promptHash,
      Value<String> responseJson,
      Value<int?> tokensUsed,
      Value<DateTime> createdAt,
      Value<DateTime?> expiresAt,
      Value<int> rowid,
    });

class $$LlmCacheTableFilterComposer
    extends Composer<_$AppDatabase, $LlmCacheTable> {
  $$LlmCacheTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cacheKey => $composableBuilder(
    column: $table.cacheKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get promptHash => $composableBuilder(
    column: $table.promptHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get responseJson => $composableBuilder(
    column: $table.responseJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tokensUsed => $composableBuilder(
    column: $table.tokensUsed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LlmCacheTableOrderingComposer
    extends Composer<_$AppDatabase, $LlmCacheTable> {
  $$LlmCacheTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cacheKey => $composableBuilder(
    column: $table.cacheKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get provider => $composableBuilder(
    column: $table.provider,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get promptHash => $composableBuilder(
    column: $table.promptHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get responseJson => $composableBuilder(
    column: $table.responseJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tokensUsed => $composableBuilder(
    column: $table.tokensUsed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
    column: $table.expiresAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LlmCacheTableAnnotationComposer
    extends Composer<_$AppDatabase, $LlmCacheTable> {
  $$LlmCacheTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get cacheKey =>
      $composableBuilder(column: $table.cacheKey, builder: (column) => column);

  GeneratedColumn<String> get provider =>
      $composableBuilder(column: $table.provider, builder: (column) => column);

  GeneratedColumn<String> get model =>
      $composableBuilder(column: $table.model, builder: (column) => column);

  GeneratedColumn<String> get promptHash => $composableBuilder(
    column: $table.promptHash,
    builder: (column) => column,
  );

  GeneratedColumn<String> get responseJson => $composableBuilder(
    column: $table.responseJson,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tokensUsed => $composableBuilder(
    column: $table.tokensUsed,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);
}

class $$LlmCacheTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LlmCacheTable,
          LlmCacheData,
          $$LlmCacheTableFilterComposer,
          $$LlmCacheTableOrderingComposer,
          $$LlmCacheTableAnnotationComposer,
          $$LlmCacheTableCreateCompanionBuilder,
          $$LlmCacheTableUpdateCompanionBuilder,
          (
            LlmCacheData,
            BaseReferences<_$AppDatabase, $LlmCacheTable, LlmCacheData>,
          ),
          LlmCacheData,
          PrefetchHooks Function()
        > {
  $$LlmCacheTableTableManager(_$AppDatabase db, $LlmCacheTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LlmCacheTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LlmCacheTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LlmCacheTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> cacheKey = const Value.absent(),
                Value<String> provider = const Value.absent(),
                Value<String> model = const Value.absent(),
                Value<String> promptHash = const Value.absent(),
                Value<String> responseJson = const Value.absent(),
                Value<int?> tokensUsed = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> expiresAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LlmCacheCompanion(
                id: id,
                cacheKey: cacheKey,
                provider: provider,
                model: model,
                promptHash: promptHash,
                responseJson: responseJson,
                tokensUsed: tokensUsed,
                createdAt: createdAt,
                expiresAt: expiresAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String cacheKey,
                required String provider,
                required String model,
                required String promptHash,
                required String responseJson,
                Value<int?> tokensUsed = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> expiresAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LlmCacheCompanion.insert(
                id: id,
                cacheKey: cacheKey,
                provider: provider,
                model: model,
                promptHash: promptHash,
                responseJson: responseJson,
                tokensUsed: tokensUsed,
                createdAt: createdAt,
                expiresAt: expiresAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LlmCacheTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LlmCacheTable,
      LlmCacheData,
      $$LlmCacheTableFilterComposer,
      $$LlmCacheTableOrderingComposer,
      $$LlmCacheTableAnnotationComposer,
      $$LlmCacheTableCreateCompanionBuilder,
      $$LlmCacheTableUpdateCompanionBuilder,
      (
        LlmCacheData,
        BaseReferences<_$AppDatabase, $LlmCacheTable, LlmCacheData>,
      ),
      LlmCacheData,
      PrefetchHooks Function()
    >;
typedef $$SettingsTableCreateCompanionBuilder =
    SettingsCompanion Function({
      required String key,
      required String value,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });
typedef $$SettingsTableUpdateCompanionBuilder =
    SettingsCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$SettingsTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$SettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsTable,
          Setting,
          $$SettingsTableFilterComposer,
          $$SettingsTableOrderingComposer,
          $$SettingsTableAnnotationComposer,
          $$SettingsTableCreateCompanionBuilder,
          $$SettingsTableUpdateCompanionBuilder,
          (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
          Setting,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableManager(_$AppDatabase db, $SettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion(
                key: key,
                value: value,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion.insert(
                key: key,
                value: value,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsTable,
      Setting,
      $$SettingsTableFilterComposer,
      $$SettingsTableOrderingComposer,
      $$SettingsTableAnnotationComposer,
      $$SettingsTableCreateCompanionBuilder,
      $$SettingsTableUpdateCompanionBuilder,
      (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
      Setting,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$IngredientsTableTableManager get ingredients =>
      $$IngredientsTableTableManager(_db, _db.ingredients);
  $$NutritionDataTableTableTableManager get nutritionDataTable =>
      $$NutritionDataTableTableTableManager(_db, _db.nutritionDataTable);
  $$FodmapDataTableTableTableManager get fodmapDataTable =>
      $$FodmapDataTableTableTableManager(_db, _db.fodmapDataTable);
  $$RecipesTableTableManager get recipes =>
      $$RecipesTableTableManager(_db, _db.recipes);
  $$RecipeIngredientsTableTableManager get recipeIngredients =>
      $$RecipeIngredientsTableTableManager(_db, _db.recipeIngredients);
  $$FoodLogsTableTableManager get foodLogs =>
      $$FoodLogsTableTableManager(_db, _db.foodLogs);
  $$SupplementsTableTableManager get supplements =>
      $$SupplementsTableTableManager(_db, _db.supplements);
  $$SupplementLogsTableTableManager get supplementLogs =>
      $$SupplementLogsTableTableManager(_db, _db.supplementLogs);
  $$WorkoutTemplatesTableTableManager get workoutTemplates =>
      $$WorkoutTemplatesTableTableManager(_db, _db.workoutTemplates);
  $$WorkoutsTableTableManager get workouts =>
      $$WorkoutsTableTableManager(_db, _db.workouts);
  $$ExercisesTableTableManager get exercises =>
      $$ExercisesTableTableManager(_db, _db.exercises);
  $$WorkoutSetsTableTableManager get workoutSets =>
      $$WorkoutSetsTableTableManager(_db, _db.workoutSets);
  $$HabitsTableTableManager get habits =>
      $$HabitsTableTableManager(_db, _db.habits);
  $$HabitLogsTableTableManager get habitLogs =>
      $$HabitLogsTableTableManager(_db, _db.habitLogs);
  $$SymptomLogsTableTableManager get symptomLogs =>
      $$SymptomLogsTableTableManager(_db, _db.symptomLogs);
  $$BodyMeasurementsTableTableManager get bodyMeasurements =>
      $$BodyMeasurementsTableTableManager(_db, _db.bodyMeasurements);
  $$PantryItemsTableTableManager get pantryItems =>
      $$PantryItemsTableTableManager(_db, _db.pantryItems);
  $$ShoppingListsTableTableManager get shoppingLists =>
      $$ShoppingListsTableTableManager(_db, _db.shoppingLists);
  $$ShoppingItemsTableTableManager get shoppingItems =>
      $$ShoppingItemsTableTableManager(_db, _db.shoppingItems);
  $$LlmCacheTableTableManager get llmCache =>
      $$LlmCacheTableTableManager(_db, _db.llmCache);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
}
