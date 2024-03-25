// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetResultModelCollection on Isar {
  IsarCollection<ResultModel> get resultModels => this.collection();
}

const ResultModelSchema = CollectionSchema(
  name: r'ResultModel',
  id: 423619455610324032,
  properties: {
    r'authors': PropertySchema(
      id: 0,
      name: r'authors',
      type: IsarType.string,
    ),
    r'bookshelves': PropertySchema(
      id: 1,
      name: r'bookshelves',
      type: IsarType.string,
    ),
    r'copyright': PropertySchema(
      id: 2,
      name: r'copyright',
      type: IsarType.bool,
    ),
    r'downloadCount': PropertySchema(
      id: 3,
      name: r'downloadCount',
      type: IsarType.long,
    ),
    r'languages': PropertySchema(
      id: 4,
      name: r'languages',
      type: IsarType.string,
    ),
    r'lastPage': PropertySchema(
      id: 5,
      name: r'lastPage',
      type: IsarType.string,
    ),
    r'localImgPath': PropertySchema(
      id: 6,
      name: r'localImgPath',
      type: IsarType.string,
    ),
    r'localPath': PropertySchema(
      id: 7,
      name: r'localPath',
      type: IsarType.string,
    ),
    r'mediaType': PropertySchema(
      id: 8,
      name: r'mediaType',
      type: IsarType.string,
    ),
    r'remoteId': PropertySchema(
      id: 9,
      name: r'remoteId',
      type: IsarType.long,
    ),
    r'subjects': PropertySchema(
      id: 10,
      name: r'subjects',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 11,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _resultModelEstimateSize,
  serialize: _resultModelSerialize,
  deserialize: _resultModelDeserialize,
  deserializeProp: _resultModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _resultModelGetId,
  getLinks: _resultModelGetLinks,
  attach: _resultModelAttach,
  version: '3.1.0+1',
);

int _resultModelEstimateSize(
  ResultModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.authors;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bookshelves;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.languages;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastPage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.localImgPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.localPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mediaType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subjects;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _resultModelSerialize(
  ResultModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.authors);
  writer.writeString(offsets[1], object.bookshelves);
  writer.writeBool(offsets[2], object.copyright);
  writer.writeLong(offsets[3], object.downloadCount);
  writer.writeString(offsets[4], object.languages);
  writer.writeString(offsets[5], object.lastPage);
  writer.writeString(offsets[6], object.localImgPath);
  writer.writeString(offsets[7], object.localPath);
  writer.writeString(offsets[8], object.mediaType);
  writer.writeLong(offsets[9], object.remoteId);
  writer.writeString(offsets[10], object.subjects);
  writer.writeString(offsets[11], object.title);
}

ResultModel _resultModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ResultModel(
    authors: reader.readStringOrNull(offsets[0]),
    bookshelves: reader.readStringOrNull(offsets[1]),
    copyright: reader.readBoolOrNull(offsets[2]),
    downloadCount: reader.readLongOrNull(offsets[3]),
    languages: reader.readStringOrNull(offsets[4]),
    lastPage: reader.readStringOrNull(offsets[5]),
    localImgPath: reader.readStringOrNull(offsets[6]),
    localPath: reader.readStringOrNull(offsets[7]),
    mediaType: reader.readStringOrNull(offsets[8]),
    remoteId: reader.readLongOrNull(offsets[9]),
    subjects: reader.readStringOrNull(offsets[10]),
    title: reader.readStringOrNull(offsets[11]),
  );
  object.id = id;
  return object;
}

P _resultModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _resultModelGetId(ResultModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _resultModelGetLinks(ResultModel object) {
  return [];
}

void _resultModelAttach(
    IsarCollection<dynamic> col, Id id, ResultModel object) {
  object.id = id;
}

extension ResultModelQueryWhereSort
    on QueryBuilder<ResultModel, ResultModel, QWhere> {
  QueryBuilder<ResultModel, ResultModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ResultModelQueryWhere
    on QueryBuilder<ResultModel, ResultModel, QWhereClause> {
  QueryBuilder<ResultModel, ResultModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ResultModel, ResultModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterWhereClause> idBetween(
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
}

extension ResultModelQueryFilter
    on QueryBuilder<ResultModel, ResultModel, QFilterCondition> {
  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      authorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'authors',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      authorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'authors',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> authorsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      authorsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'authors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> authorsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'authors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> authorsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'authors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      authorsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'authors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> authorsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'authors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> authorsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'authors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> authorsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'authors',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      authorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'authors',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      authorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'authors',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookshelves',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookshelves',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookshelves',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bookshelves',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bookshelves',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bookshelves',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bookshelves',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bookshelves',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookshelves',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookshelves',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookshelves',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      bookshelvesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookshelves',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      copyrightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'copyright',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      copyrightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'copyright',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      copyrightEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'copyright',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      downloadCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'downloadCount',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      downloadCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'downloadCount',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      downloadCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'downloadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      downloadCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'downloadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      downloadCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'downloadCount',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      downloadCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'downloadCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'languages',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'languages',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'languages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'languages',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'languages',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'languages',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      languagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'languages',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastPage',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastPage',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> lastPageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> lastPageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastPage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> lastPageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastPage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastPage',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      lastPageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastPage',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'localImgPath',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'localImgPath',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localImgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localImgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localImgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localImgPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localImgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localImgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localImgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localImgPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localImgPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localImgPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localImgPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'localPath',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'localPath',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      localPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localPath',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaType',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaType',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mediaType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mediaType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mediaType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mediaType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaType',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      mediaTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mediaType',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      remoteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remoteId',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      remoteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remoteId',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> remoteIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      remoteIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      remoteIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> remoteIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remoteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subjects',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subjects',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> subjectsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subjects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subjects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> subjectsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subjects',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subjects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subjects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subjects',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> subjectsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subjects',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subjects',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      subjectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subjects',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension ResultModelQueryObject
    on QueryBuilder<ResultModel, ResultModel, QFilterCondition> {}

extension ResultModelQueryLinks
    on QueryBuilder<ResultModel, ResultModel, QFilterCondition> {}

extension ResultModelQuerySortBy
    on QueryBuilder<ResultModel, ResultModel, QSortBy> {
  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByAuthors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authors', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByAuthorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authors', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByBookshelves() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookshelves', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByBookshelvesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookshelves', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByCopyrightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByDownloadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadCount', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy>
      sortByDownloadCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadCount', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByLanguages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languages', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByLanguagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languages', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByLastPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPage', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByLastPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPage', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByLocalImgPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImgPath', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy>
      sortByLocalImgPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImgPath', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByLocalPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByLocalPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByMediaType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByMediaTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortBySubjects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjects', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortBySubjectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjects', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension ResultModelQuerySortThenBy
    on QueryBuilder<ResultModel, ResultModel, QSortThenBy> {
  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByAuthors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authors', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByAuthorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'authors', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByBookshelves() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookshelves', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByBookshelvesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookshelves', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByCopyrightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'copyright', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByDownloadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadCount', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy>
      thenByDownloadCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'downloadCount', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByLanguages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languages', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByLanguagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'languages', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByLastPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPage', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByLastPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastPage', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByLocalImgPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImgPath', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy>
      thenByLocalImgPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImgPath', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByLocalPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByLocalPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localPath', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByMediaType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByMediaTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenBySubjects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjects', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenBySubjectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subjects', Sort.desc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension ResultModelQueryWhereDistinct
    on QueryBuilder<ResultModel, ResultModel, QDistinct> {
  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByAuthors(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'authors', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByBookshelves(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookshelves', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByCopyright() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'copyright');
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByDownloadCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'downloadCount');
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByLanguages(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'languages', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByLastPage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastPage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByLocalImgPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localImgPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByLocalPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByMediaType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remoteId');
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctBySubjects(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subjects', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ResultModel, ResultModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension ResultModelQueryProperty
    on QueryBuilder<ResultModel, ResultModel, QQueryProperty> {
  QueryBuilder<ResultModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> authorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'authors');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> bookshelvesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookshelves');
    });
  }

  QueryBuilder<ResultModel, bool?, QQueryOperations> copyrightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'copyright');
    });
  }

  QueryBuilder<ResultModel, int?, QQueryOperations> downloadCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'downloadCount');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> languagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'languages');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> lastPageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastPage');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> localImgPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localImgPath');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> localPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localPath');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> mediaTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaType');
    });
  }

  QueryBuilder<ResultModel, int?, QQueryOperations> remoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remoteId');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> subjectsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subjects');
    });
  }

  QueryBuilder<ResultModel, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
