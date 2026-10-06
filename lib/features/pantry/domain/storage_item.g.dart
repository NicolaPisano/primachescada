// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStorageItemCollection on Isar {
  IsarCollection<StorageItem> get storageItems => this.collection();
}

const StorageItemSchema = CollectionSchema(
  name: r'StorageItem',
  id: -431757290192779884,
  properties: {
    r'expirationDate': PropertySchema(
      id: 0,
      name: r'expirationDate',
      type: IsarType.dateTime,
    ),
    r'location': PropertySchema(
      id: 1,
      name: r'location',
      type: IsarType.string,
      enumMap: _StorageItemlocationEnumValueMap,
    ),
    r'openedDate': PropertySchema(
      id: 2,
      name: r'openedDate',
      type: IsarType.dateTime,
    ),
    r'status': PropertySchema(
      id: 3,
      name: r'status',
      type: IsarType.string,
      enumMap: _StorageItemstatusEnumValueMap,
    )
  },
  estimateSize: _storageItemEstimateSize,
  serialize: _storageItemSerialize,
  deserialize: _storageItemDeserialize,
  deserializeProp: _storageItemDeserializeProp,
  idName: r'id',
  indexes: {
    r'expirationDate': IndexSchema(
      id: 6847547838636911328,
      name: r'expirationDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'expirationDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'product': LinkSchema(
      id: 2707806301527674310,
      name: r'product',
      target: r'Product',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _storageItemGetId,
  getLinks: _storageItemGetLinks,
  attach: _storageItemAttach,
  version: '3.1.0+1',
);

int _storageItemEstimateSize(
  StorageItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.location.name.length * 3;
  bytesCount += 3 + object.status.name.length * 3;
  return bytesCount;
}

void _storageItemSerialize(
  StorageItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.expirationDate);
  writer.writeString(offsets[1], object.location.name);
  writer.writeDateTime(offsets[2], object.openedDate);
  writer.writeString(offsets[3], object.status.name);
}

StorageItem _storageItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StorageItem();
  object.expirationDate = reader.readDateTime(offsets[0]);
  object.id = id;
  object.location =
      _StorageItemlocationValueEnumMap[reader.readStringOrNull(offsets[1])] ??
          StorageLocation.frigo;
  object.openedDate = reader.readDateTimeOrNull(offsets[2]);
  object.status =
      _StorageItemstatusValueEnumMap[reader.readStringOrNull(offsets[3])] ??
          ItemStatus.disponibile;
  return object;
}

P _storageItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (_StorageItemlocationValueEnumMap[
              reader.readStringOrNull(offset)] ??
          StorageLocation.frigo) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (_StorageItemstatusValueEnumMap[reader.readStringOrNull(offset)] ??
          ItemStatus.disponibile) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _StorageItemlocationEnumValueMap = {
  r'frigo': r'frigo',
  r'freezer': r'freezer',
  r'dispensa': r'dispensa',
  r'bagno': r'bagno',
};
const _StorageItemlocationValueEnumMap = {
  r'frigo': StorageLocation.frigo,
  r'freezer': StorageLocation.freezer,
  r'dispensa': StorageLocation.dispensa,
  r'bagno': StorageLocation.bagno,
};
const _StorageItemstatusEnumValueMap = {
  r'disponibile': r'disponibile',
  r'consumato': r'consumato',
  r'buttato': r'buttato',
};
const _StorageItemstatusValueEnumMap = {
  r'disponibile': ItemStatus.disponibile,
  r'consumato': ItemStatus.consumato,
  r'buttato': ItemStatus.buttato,
};

Id _storageItemGetId(StorageItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _storageItemGetLinks(StorageItem object) {
  return [object.product];
}

void _storageItemAttach(
    IsarCollection<dynamic> col, Id id, StorageItem object) {
  object.id = id;
  object.product.attach(col, col.isar.collection<Product>(), r'product', id);
}

extension StorageItemQueryWhereSort
    on QueryBuilder<StorageItem, StorageItem, QWhere> {
  QueryBuilder<StorageItem, StorageItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhere> anyExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'expirationDate'),
      );
    });
  }
}

extension StorageItemQueryWhere
    on QueryBuilder<StorageItem, StorageItem, QWhereClause> {
  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause>
      expirationDateEqualTo(DateTime expirationDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'expirationDate',
        value: [expirationDate],
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause>
      expirationDateNotEqualTo(DateTime expirationDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expirationDate',
              lower: [],
              upper: [expirationDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expirationDate',
              lower: [expirationDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expirationDate',
              lower: [expirationDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'expirationDate',
              lower: [],
              upper: [expirationDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause>
      expirationDateGreaterThan(
    DateTime expirationDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expirationDate',
        lower: [expirationDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause>
      expirationDateLessThan(
    DateTime expirationDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expirationDate',
        lower: [],
        upper: [expirationDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterWhereClause>
      expirationDateBetween(
    DateTime lowerExpirationDate,
    DateTime upperExpirationDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'expirationDate',
        lower: [lowerExpirationDate],
        includeLower: includeLower,
        upper: [upperExpirationDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StorageItemQueryFilter
    on QueryBuilder<StorageItem, StorageItem, QFilterCondition> {
  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      expirationDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      expirationDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      expirationDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expirationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      expirationDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expirationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> locationEqualTo(
    StorageLocation value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      locationGreaterThan(
    StorageLocation value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      locationLessThan(
    StorageLocation value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> locationBetween(
    StorageLocation lower,
    StorageLocation upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      locationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      openedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'openedDate',
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      openedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'openedDate',
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      openedDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      openedDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      openedDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      openedDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> statusEqualTo(
    ItemStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      statusGreaterThan(
    ItemStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> statusLessThan(
    ItemStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> statusBetween(
    ItemStatus lower,
    ItemStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension StorageItemQueryObject
    on QueryBuilder<StorageItem, StorageItem, QFilterCondition> {}

extension StorageItemQueryLinks
    on QueryBuilder<StorageItem, StorageItem, QFilterCondition> {
  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition> product(
      FilterQuery<Product> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'product');
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterFilterCondition>
      productIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'product', 0, true, 0, true);
    });
  }
}

extension StorageItemQuerySortBy
    on QueryBuilder<StorageItem, StorageItem, QSortBy> {
  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> sortByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy>
      sortByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> sortByOpenedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedDate', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> sortByOpenedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedDate', Sort.desc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension StorageItemQuerySortThenBy
    on QueryBuilder<StorageItem, StorageItem, QSortThenBy> {
  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy>
      thenByExpirationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expirationDate', Sort.desc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByOpenedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedDate', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByOpenedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedDate', Sort.desc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension StorageItemQueryWhereDistinct
    on QueryBuilder<StorageItem, StorageItem, QDistinct> {
  QueryBuilder<StorageItem, StorageItem, QDistinct> distinctByExpirationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expirationDate');
    });
  }

  QueryBuilder<StorageItem, StorageItem, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StorageItem, StorageItem, QDistinct> distinctByOpenedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'openedDate');
    });
  }

  QueryBuilder<StorageItem, StorageItem, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension StorageItemQueryProperty
    on QueryBuilder<StorageItem, StorageItem, QQueryProperty> {
  QueryBuilder<StorageItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StorageItem, DateTime, QQueryOperations>
      expirationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expirationDate');
    });
  }

  QueryBuilder<StorageItem, StorageLocation, QQueryOperations>
      locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<StorageItem, DateTime?, QQueryOperations> openedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'openedDate');
    });
  }

  QueryBuilder<StorageItem, ItemStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
