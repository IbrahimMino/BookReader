import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'e_book_model.freezed.dart';
part 'e_book_model.g.dart';

@freezed
class EBookModel with _$EBookModel {
  const factory EBookModel({
    int? count,
    String? next,
    dynamic previous,
    List<Result>? results,
  }) = _EBookModel;

  factory EBookModel.fromJson(Map<String, dynamic> json) => _$EBookModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    String? title,
    List<Author>? authors,
    List<dynamic>? translators,
    List<String>? subjects,
    List<String>? bookshelves,
    List<String>? languages,
    bool? copyright,
    String? mediaType,
    Formats? formats,
    int? downloadCount,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    String? name,
    int? birthYear,
    int? deathYear,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@freezed
class Formats with _$Formats {
  const factory Formats({
    @JsonKey(name: 'text/html; charset=utf-8')
    String? textHtml,
    @JsonKey(name: 'application/epub+zip')
    String? applicationEpubZip,
    @JsonKey(name: 'application/x-mobipocket-ebook')
    String? applicationXMobipocketEbook,
    String? applicationRdfXml,
    @JsonKey(name: 'image/jpeg')
    String? imageJpeg,
    String? textPlainCharsetUsAscii,
    @JsonKey(name: 'application/octet-stream')
    String? applicationOctetStream,
  }) = _Formats;

  factory Formats.fromJson(Map<String, dynamic> json) => _$FormatsFromJson(json);
}
