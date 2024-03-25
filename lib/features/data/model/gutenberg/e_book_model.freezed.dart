// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EBookModel _$EBookModelFromJson(Map<String, dynamic> json) {
  return _EBookModel.fromJson(json);
}

/// @nodoc
mixin _$EBookModel {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EBookModelCopyWith<EBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EBookModelCopyWith<$Res> {
  factory $EBookModelCopyWith(
          EBookModel value, $Res Function(EBookModel) then) =
      _$EBookModelCopyWithImpl<$Res, EBookModel>;
  @useResult
  $Res call(
      {int? count, String? next, dynamic previous, List<Result>? results});
}

/// @nodoc
class _$EBookModelCopyWithImpl<$Res, $Val extends EBookModel>
    implements $EBookModelCopyWith<$Res> {
  _$EBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EBookModelImplCopyWith<$Res>
    implements $EBookModelCopyWith<$Res> {
  factory _$$EBookModelImplCopyWith(
          _$EBookModelImpl value, $Res Function(_$EBookModelImpl) then) =
      __$$EBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count, String? next, dynamic previous, List<Result>? results});
}

/// @nodoc
class __$$EBookModelImplCopyWithImpl<$Res>
    extends _$EBookModelCopyWithImpl<$Res, _$EBookModelImpl>
    implements _$$EBookModelImplCopyWith<$Res> {
  __$$EBookModelImplCopyWithImpl(
      _$EBookModelImpl _value, $Res Function(_$EBookModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$EBookModelImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EBookModelImpl implements _EBookModel {
  const _$EBookModelImpl(
      {this.count, this.next, this.previous, final List<Result>? results})
      : _results = results;

  factory _$EBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EBookModelImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final dynamic previous;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EBookModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EBookModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      next,
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EBookModelImplCopyWith<_$EBookModelImpl> get copyWith =>
      __$$EBookModelImplCopyWithImpl<_$EBookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EBookModelImplToJson(
      this,
    );
  }
}

abstract class _EBookModel implements EBookModel {
  const factory _EBookModel(
      {final int? count,
      final String? next,
      final dynamic previous,
      final List<Result>? results}) = _$EBookModelImpl;

  factory _EBookModel.fromJson(Map<String, dynamic> json) =
      _$EBookModelImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  dynamic get previous;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$EBookModelImplCopyWith<_$EBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<Author>? get authors => throw _privateConstructorUsedError;
  List<dynamic>? get translators => throw _privateConstructorUsedError;
  List<String>? get subjects => throw _privateConstructorUsedError;
  List<String>? get bookshelves => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  bool? get copyright => throw _privateConstructorUsedError;
  String? get mediaType => throw _privateConstructorUsedError;
  Formats? get formats => throw _privateConstructorUsedError;
  int? get downloadCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      List<Author>? authors,
      List<dynamic>? translators,
      List<String>? subjects,
      List<String>? bookshelves,
      List<String>? languages,
      bool? copyright,
      String? mediaType,
      Formats? formats,
      int? downloadCount});

  $FormatsCopyWith<$Res>? get formats;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? authors = freezed,
    Object? translators = freezed,
    Object? subjects = freezed,
    Object? bookshelves = freezed,
    Object? languages = freezed,
    Object? copyright = freezed,
    Object? mediaType = freezed,
    Object? formats = freezed,
    Object? downloadCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Author>?,
      translators: freezed == translators
          ? _value.translators
          : translators // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bookshelves: freezed == bookshelves
          ? _value.bookshelves
          : bookshelves // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as bool?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      formats: freezed == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as Formats?,
      downloadCount: freezed == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormatsCopyWith<$Res>? get formats {
    if (_value.formats == null) {
      return null;
    }

    return $FormatsCopyWith<$Res>(_value.formats!, (value) {
      return _then(_value.copyWith(formats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      List<Author>? authors,
      List<dynamic>? translators,
      List<String>? subjects,
      List<String>? bookshelves,
      List<String>? languages,
      bool? copyright,
      String? mediaType,
      Formats? formats,
      int? downloadCount});

  @override
  $FormatsCopyWith<$Res>? get formats;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? authors = freezed,
    Object? translators = freezed,
    Object? subjects = freezed,
    Object? bookshelves = freezed,
    Object? languages = freezed,
    Object? copyright = freezed,
    Object? mediaType = freezed,
    Object? formats = freezed,
    Object? downloadCount = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Author>?,
      translators: freezed == translators
          ? _value._translators
          : translators // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bookshelves: freezed == bookshelves
          ? _value._bookshelves
          : bookshelves // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as bool?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      formats: freezed == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as Formats?,
      downloadCount: freezed == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.id,
      this.title,
      final List<Author>? authors,
      final List<dynamic>? translators,
      final List<String>? subjects,
      final List<String>? bookshelves,
      final List<String>? languages,
      this.copyright,
      this.mediaType,
      this.formats,
      this.downloadCount})
      : _authors = authors,
        _translators = translators,
        _subjects = subjects,
        _bookshelves = bookshelves,
        _languages = languages;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  final List<Author>? _authors;
  @override
  List<Author>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _translators;
  @override
  List<dynamic>? get translators {
    final value = _translators;
    if (value == null) return null;
    if (_translators is EqualUnmodifiableListView) return _translators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _subjects;
  @override
  List<String>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _bookshelves;
  @override
  List<String>? get bookshelves {
    final value = _bookshelves;
    if (value == null) return null;
    if (_bookshelves is EqualUnmodifiableListView) return _bookshelves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? copyright;
  @override
  final String? mediaType;
  @override
  final Formats? formats;
  @override
  final int? downloadCount;

  @override
  String toString() {
    return 'Result(id: $id, title: $title, authors: $authors, translators: $translators, subjects: $subjects, bookshelves: $bookshelves, languages: $languages, copyright: $copyright, mediaType: $mediaType, formats: $formats, downloadCount: $downloadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality()
                .equals(other._translators, _translators) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality()
                .equals(other._bookshelves, _bookshelves) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.formats, formats) || other.formats == formats) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(_translators),
      const DeepCollectionEquality().hash(_subjects),
      const DeepCollectionEquality().hash(_bookshelves),
      const DeepCollectionEquality().hash(_languages),
      copyright,
      mediaType,
      formats,
      downloadCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      final String? title,
      final List<Author>? authors,
      final List<dynamic>? translators,
      final List<String>? subjects,
      final List<String>? bookshelves,
      final List<String>? languages,
      final bool? copyright,
      final String? mediaType,
      final Formats? formats,
      final int? downloadCount}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  List<Author>? get authors;
  @override
  List<dynamic>? get translators;
  @override
  List<String>? get subjects;
  @override
  List<String>? get bookshelves;
  @override
  List<String>? get languages;
  @override
  bool? get copyright;
  @override
  String? get mediaType;
  @override
  Formats? get formats;
  @override
  int? get downloadCount;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String? get name => throw _privateConstructorUsedError;
  int? get birthYear => throw _privateConstructorUsedError;
  int? get deathYear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({String? name, int? birthYear, int? deathYear});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? deathYear = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthYear: freezed == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int?,
      deathYear: freezed == deathYear
          ? _value.deathYear
          : deathYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? birthYear, int? deathYear});
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? deathYear = freezed,
  }) {
    return _then(_$AuthorImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthYear: freezed == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int?,
      deathYear: freezed == deathYear
          ? _value.deathYear
          : deathYear // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl implements _Author {
  const _$AuthorImpl({this.name, this.birthYear, this.deathYear});

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  final String? name;
  @override
  final int? birthYear;
  @override
  final int? deathYear;

  @override
  String toString() {
    return 'Author(name: $name, birthYear: $birthYear, deathYear: $deathYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.deathYear, deathYear) ||
                other.deathYear == deathYear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, birthYear, deathYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {final String? name,
      final int? birthYear,
      final int? deathYear}) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  String? get name;
  @override
  int? get birthYear;
  @override
  int? get deathYear;
  @override
  @JsonKey(ignore: true)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Formats _$FormatsFromJson(Map<String, dynamic> json) {
  return _Formats.fromJson(json);
}

/// @nodoc
mixin _$Formats {
  String? get textHtml => throw _privateConstructorUsedError;
  String? get applicationEpubZip => throw _privateConstructorUsedError;
  String? get applicationXMobipocketEbook => throw _privateConstructorUsedError;
  String? get applicationRdfXml => throw _privateConstructorUsedError;
  String? get imageJpeg => throw _privateConstructorUsedError;
  String? get textPlainCharsetUsAscii => throw _privateConstructorUsedError;
  String? get applicationOctetStream => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormatsCopyWith<Formats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormatsCopyWith<$Res> {
  factory $FormatsCopyWith(Formats value, $Res Function(Formats) then) =
      _$FormatsCopyWithImpl<$Res, Formats>;
  @useResult
  $Res call(
      {String? textHtml,
      String? applicationEpubZip,
      String? applicationXMobipocketEbook,
      String? applicationRdfXml,
      String? imageJpeg,
      String? textPlainCharsetUsAscii,
      String? applicationOctetStream});
}

/// @nodoc
class _$FormatsCopyWithImpl<$Res, $Val extends Formats>
    implements $FormatsCopyWith<$Res> {
  _$FormatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textHtml = freezed,
    Object? applicationEpubZip = freezed,
    Object? applicationXMobipocketEbook = freezed,
    Object? applicationRdfXml = freezed,
    Object? imageJpeg = freezed,
    Object? textPlainCharsetUsAscii = freezed,
    Object? applicationOctetStream = freezed,
  }) {
    return _then(_value.copyWith(
      textHtml: freezed == textHtml
          ? _value.textHtml
          : textHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationEpubZip: freezed == applicationEpubZip
          ? _value.applicationEpubZip
          : applicationEpubZip // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationXMobipocketEbook: freezed == applicationXMobipocketEbook
          ? _value.applicationXMobipocketEbook
          : applicationXMobipocketEbook // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationRdfXml: freezed == applicationRdfXml
          ? _value.applicationRdfXml
          : applicationRdfXml // ignore: cast_nullable_to_non_nullable
              as String?,
      imageJpeg: freezed == imageJpeg
          ? _value.imageJpeg
          : imageJpeg // ignore: cast_nullable_to_non_nullable
              as String?,
      textPlainCharsetUsAscii: freezed == textPlainCharsetUsAscii
          ? _value.textPlainCharsetUsAscii
          : textPlainCharsetUsAscii // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationOctetStream: freezed == applicationOctetStream
          ? _value.applicationOctetStream
          : applicationOctetStream // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormatsImplCopyWith<$Res> implements $FormatsCopyWith<$Res> {
  factory _$$FormatsImplCopyWith(
          _$FormatsImpl value, $Res Function(_$FormatsImpl) then) =
      __$$FormatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? textHtml,
      String? applicationEpubZip,
      String? applicationXMobipocketEbook,
      String? applicationRdfXml,
      String? imageJpeg,
      String? textPlainCharsetUsAscii,
      String? applicationOctetStream});
}

/// @nodoc
class __$$FormatsImplCopyWithImpl<$Res>
    extends _$FormatsCopyWithImpl<$Res, _$FormatsImpl>
    implements _$$FormatsImplCopyWith<$Res> {
  __$$FormatsImplCopyWithImpl(
      _$FormatsImpl _value, $Res Function(_$FormatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textHtml = freezed,
    Object? applicationEpubZip = freezed,
    Object? applicationXMobipocketEbook = freezed,
    Object? applicationRdfXml = freezed,
    Object? imageJpeg = freezed,
    Object? textPlainCharsetUsAscii = freezed,
    Object? applicationOctetStream = freezed,
  }) {
    return _then(_$FormatsImpl(
      textHtml: freezed == textHtml
          ? _value.textHtml
          : textHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationEpubZip: freezed == applicationEpubZip
          ? _value.applicationEpubZip
          : applicationEpubZip // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationXMobipocketEbook: freezed == applicationXMobipocketEbook
          ? _value.applicationXMobipocketEbook
          : applicationXMobipocketEbook // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationRdfXml: freezed == applicationRdfXml
          ? _value.applicationRdfXml
          : applicationRdfXml // ignore: cast_nullable_to_non_nullable
              as String?,
      imageJpeg: freezed == imageJpeg
          ? _value.imageJpeg
          : imageJpeg // ignore: cast_nullable_to_non_nullable
              as String?,
      textPlainCharsetUsAscii: freezed == textPlainCharsetUsAscii
          ? _value.textPlainCharsetUsAscii
          : textPlainCharsetUsAscii // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationOctetStream: freezed == applicationOctetStream
          ? _value.applicationOctetStream
          : applicationOctetStream // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormatsImpl implements _Formats {
  const _$FormatsImpl(
      {this.textHtml,
      this.applicationEpubZip,
      this.applicationXMobipocketEbook,
      this.applicationRdfXml,
      this.imageJpeg,
      this.textPlainCharsetUsAscii,
      this.applicationOctetStream});

  factory _$FormatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormatsImplFromJson(json);

  @override
  final String? textHtml;
  @override
  final String? applicationEpubZip;
  @override
  final String? applicationXMobipocketEbook;
  @override
  final String? applicationRdfXml;
  @override
  final String? imageJpeg;
  @override
  final String? textPlainCharsetUsAscii;
  @override
  final String? applicationOctetStream;

  @override
  String toString() {
    return 'Formats(textHtml: $textHtml, applicationEpubZip: $applicationEpubZip, applicationXMobipocketEbook: $applicationXMobipocketEbook, applicationRdfXml: $applicationRdfXml, imageJpeg: $imageJpeg, textPlainCharsetUsAscii: $textPlainCharsetUsAscii, applicationOctetStream: $applicationOctetStream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatsImpl &&
            (identical(other.textHtml, textHtml) ||
                other.textHtml == textHtml) &&
            (identical(other.applicationEpubZip, applicationEpubZip) ||
                other.applicationEpubZip == applicationEpubZip) &&
            (identical(other.applicationXMobipocketEbook,
                    applicationXMobipocketEbook) ||
                other.applicationXMobipocketEbook ==
                    applicationXMobipocketEbook) &&
            (identical(other.applicationRdfXml, applicationRdfXml) ||
                other.applicationRdfXml == applicationRdfXml) &&
            (identical(other.imageJpeg, imageJpeg) ||
                other.imageJpeg == imageJpeg) &&
            (identical(
                    other.textPlainCharsetUsAscii, textPlainCharsetUsAscii) ||
                other.textPlainCharsetUsAscii == textPlainCharsetUsAscii) &&
            (identical(other.applicationOctetStream, applicationOctetStream) ||
                other.applicationOctetStream == applicationOctetStream));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      textHtml,
      applicationEpubZip,
      applicationXMobipocketEbook,
      applicationRdfXml,
      imageJpeg,
      textPlainCharsetUsAscii,
      applicationOctetStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatsImplCopyWith<_$FormatsImpl> get copyWith =>
      __$$FormatsImplCopyWithImpl<_$FormatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormatsImplToJson(
      this,
    );
  }
}

abstract class _Formats implements Formats {
  const factory _Formats(
      {final String? textHtml,
      final String? applicationEpubZip,
      final String? applicationXMobipocketEbook,
      final String? applicationRdfXml,
      final String? imageJpeg,
      final String? textPlainCharsetUsAscii,
      final String? applicationOctetStream}) = _$FormatsImpl;

  factory _Formats.fromJson(Map<String, dynamic> json) = _$FormatsImpl.fromJson;

  @override
  String? get textHtml;
  @override
  String? get applicationEpubZip;
  @override
  String? get applicationXMobipocketEbook;
  @override
  String? get applicationRdfXml;
  @override
  String? get imageJpeg;
  @override
  String? get textPlainCharsetUsAscii;
  @override
  String? get applicationOctetStream;
  @override
  @JsonKey(ignore: true)
  _$$FormatsImplCopyWith<_$FormatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
