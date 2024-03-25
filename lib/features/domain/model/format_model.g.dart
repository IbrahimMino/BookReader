// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFormatModelCollection on Isar {
  IsarCollection<FormatModel> get formatModels => this.collection();
}

const FormatModelSchema = CollectionSchema(
  name: r'FormatModel',
  id: -8004821984628817389,
  properties: {
    r'applicationEpubZip': PropertySchema(
      id: 0,
      name: r'applicationEpubZip',
      type: IsarType.string,
    ),
    r'applicationOctetStream': PropertySchema(
      id: 1,
      name: r'applicationOctetStream',
      type: IsarType.string,
    ),
    r'imageJpeg': PropertySchema(
      id: 2,
      name: r'imageJpeg',
      type: IsarType.string,
    ),
    r'resultModelRemoteId': PropertySchema(
      id: 3,
      name: r'resultModelRemoteId',
      type: IsarType.long,
    ),
    r'textHtml': PropertySchema(
      id: 4,
      name: r'textHtml',
      type: IsarType.string,
    ),
    r'textPlainCharsetUsAscii': PropertySchema(
      id: 5,
      name: r'textPlainCharsetUsAscii',
      type: IsarType.string,
    )
  },
  estimateSize: _formatModelEstimateSize,
  serialize: _formatModelSerialize,
  deserialize: _formatModelDeserialize,
  deserializeProp: _formatModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _formatModelGetId,
  getLinks: _formatModelGetLinks,
  attach: _formatModelAttach,
  version: '3.1.0+1',
);

int _formatModelEstimateSize(
  FormatModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.applicationEpubZip;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.applicationOctetStream;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imageJpeg;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.textHtml;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.textPlainCharsetUsAscii;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _formatModelSerialize(
  FormatModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.applicationEpubZip);
  writer.writeString(offsets[1], object.applicationOctetStream);
  writer.writeString(offsets[2], object.imageJpeg);
  writer.writeLong(offsets[3], object.resultModelRemoteId);
  writer.writeString(offsets[4], object.textHtml);
  writer.writeString(offsets[5], object.textPlainCharsetUsAscii);
}

FormatModel _formatModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FormatModel(
    applicationEpubZip: reader.readStringOrNull(offsets[0]),
    applicationOctetStream: reader.readStringOrNull(offsets[1]),
    imageJpeg: reader.readStringOrNull(offsets[2]),
    resultModelRemoteId: reader.readLongOrNull(offsets[3]),
    textHtml: reader.readStringOrNull(offsets[4]),
    textPlainCharsetUsAscii: reader.readStringOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _formatModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _formatModelGetId(FormatModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _formatModelGetLinks(FormatModel object) {
  return [];
}

void _formatModelAttach(
    IsarCollection<dynamic> col, Id id, FormatModel object) {
  object.id = id;
}

extension FormatModelQueryWhereSort
    on QueryBuilder<FormatModel, FormatModel, QWhere> {
  QueryBuilder<FormatModel, FormatModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FormatModelQueryWhere
    on QueryBuilder<FormatModel, FormatModel, QWhereClause> {
  QueryBuilder<FormatModel, FormatModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<FormatModel, FormatModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterWhereClause> idBetween(
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

extension FormatModelQueryFilter
    on QueryBuilder<FormatModel, FormatModel, QFilterCondition> {
  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'applicationEpubZip',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'applicationEpubZip',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'applicationEpubZip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'applicationEpubZip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'applicationEpubZip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'applicationEpubZip',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'applicationEpubZip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'applicationEpubZip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'applicationEpubZip',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'applicationEpubZip',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'applicationEpubZip',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationEpubZipIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'applicationEpubZip',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'applicationOctetStream',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'applicationOctetStream',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'applicationOctetStream',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'applicationOctetStream',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'applicationOctetStream',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'applicationOctetStream',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'applicationOctetStream',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'applicationOctetStream',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'applicationOctetStream',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'applicationOctetStream',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'applicationOctetStream',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      applicationOctetStreamIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'applicationOctetStream',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageJpeg',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageJpeg',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageJpeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageJpeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageJpeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageJpeg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageJpeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageJpeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageJpeg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageJpeg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageJpeg',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      imageJpegIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageJpeg',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      resultModelRemoteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resultModelRemoteId',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      resultModelRemoteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resultModelRemoteId',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      resultModelRemoteIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultModelRemoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      resultModelRemoteIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resultModelRemoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      resultModelRemoteIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resultModelRemoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      resultModelRemoteIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resultModelRemoteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'textHtml',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'textHtml',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition> textHtmlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textHtml',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textHtml',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textHtml',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition> textHtmlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textHtml',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textHtml',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textHtml',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textHtml',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition> textHtmlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textHtml',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textHtml',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textHtmlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textHtml',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'textPlainCharsetUsAscii',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'textPlainCharsetUsAscii',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textPlainCharsetUsAscii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'textPlainCharsetUsAscii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'textPlainCharsetUsAscii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'textPlainCharsetUsAscii',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'textPlainCharsetUsAscii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'textPlainCharsetUsAscii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'textPlainCharsetUsAscii',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'textPlainCharsetUsAscii',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'textPlainCharsetUsAscii',
        value: '',
      ));
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterFilterCondition>
      textPlainCharsetUsAsciiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'textPlainCharsetUsAscii',
        value: '',
      ));
    });
  }
}

extension FormatModelQueryObject
    on QueryBuilder<FormatModel, FormatModel, QFilterCondition> {}

extension FormatModelQueryLinks
    on QueryBuilder<FormatModel, FormatModel, QFilterCondition> {}

extension FormatModelQuerySortBy
    on QueryBuilder<FormatModel, FormatModel, QSortBy> {
  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByApplicationEpubZip() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationEpubZip', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByApplicationEpubZipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationEpubZip', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByApplicationOctetStream() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationOctetStream', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByApplicationOctetStreamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationOctetStream', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> sortByImageJpeg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageJpeg', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> sortByImageJpegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageJpeg', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByResultModelRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultModelRemoteId', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByResultModelRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultModelRemoteId', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> sortByTextHtml() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textHtml', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> sortByTextHtmlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textHtml', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByTextPlainCharsetUsAscii() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textPlainCharsetUsAscii', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      sortByTextPlainCharsetUsAsciiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textPlainCharsetUsAscii', Sort.desc);
    });
  }
}

extension FormatModelQuerySortThenBy
    on QueryBuilder<FormatModel, FormatModel, QSortThenBy> {
  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByApplicationEpubZip() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationEpubZip', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByApplicationEpubZipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationEpubZip', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByApplicationOctetStream() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationOctetStream', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByApplicationOctetStreamDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'applicationOctetStream', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> thenByImageJpeg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageJpeg', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> thenByImageJpegDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageJpeg', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByResultModelRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultModelRemoteId', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByResultModelRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultModelRemoteId', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> thenByTextHtml() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textHtml', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy> thenByTextHtmlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textHtml', Sort.desc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByTextPlainCharsetUsAscii() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textPlainCharsetUsAscii', Sort.asc);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QAfterSortBy>
      thenByTextPlainCharsetUsAsciiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'textPlainCharsetUsAscii', Sort.desc);
    });
  }
}

extension FormatModelQueryWhereDistinct
    on QueryBuilder<FormatModel, FormatModel, QDistinct> {
  QueryBuilder<FormatModel, FormatModel, QDistinct>
      distinctByApplicationEpubZip({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'applicationEpubZip',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QDistinct>
      distinctByApplicationOctetStream({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'applicationOctetStream',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QDistinct> distinctByImageJpeg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageJpeg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QDistinct>
      distinctByResultModelRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resultModelRemoteId');
    });
  }

  QueryBuilder<FormatModel, FormatModel, QDistinct> distinctByTextHtml(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textHtml', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormatModel, FormatModel, QDistinct>
      distinctByTextPlainCharsetUsAscii({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'textPlainCharsetUsAscii',
          caseSensitive: caseSensitive);
    });
  }
}

extension FormatModelQueryProperty
    on QueryBuilder<FormatModel, FormatModel, QQueryProperty> {
  QueryBuilder<FormatModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FormatModel, String?, QQueryOperations>
      applicationEpubZipProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'applicationEpubZip');
    });
  }

  QueryBuilder<FormatModel, String?, QQueryOperations>
      applicationOctetStreamProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'applicationOctetStream');
    });
  }

  QueryBuilder<FormatModel, String?, QQueryOperations> imageJpegProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageJpeg');
    });
  }

  QueryBuilder<FormatModel, int?, QQueryOperations>
      resultModelRemoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resultModelRemoteId');
    });
  }

  QueryBuilder<FormatModel, String?, QQueryOperations> textHtmlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textHtml');
    });
  }

  QueryBuilder<FormatModel, String?, QQueryOperations>
      textPlainCharsetUsAsciiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textPlainCharsetUsAscii');
    });
  }
}
