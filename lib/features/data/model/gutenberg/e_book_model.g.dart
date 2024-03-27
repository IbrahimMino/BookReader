// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBookModelImpl _$$EBookModelImplFromJson(Map<String, dynamic> json) =>
    _$EBookModelImpl(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EBookModelImplToJson(_$EBookModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      authors: (json['authors'] as List<dynamic>?)
          ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
      translators: json['translators'] as List<dynamic>?,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bookshelves: (json['bookshelves'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      copyright: json['copyright'] as bool?,
      mediaType: json['mediaType'] as String?,
      formats: json['formats'] == null
          ? null
          : Formats.fromJson(json['formats'] as Map<String, dynamic>),
      downloadCount: json['downloadCount'] as int?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'translators': instance.translators,
      'subjects': instance.subjects,
      'bookshelves': instance.bookshelves,
      'languages': instance.languages,
      'copyright': instance.copyright,
      'mediaType': instance.mediaType,
      'formats': instance.formats,
      'downloadCount': instance.downloadCount,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      name: json['name'] as String?,
      birthYear: json['birthYear'] as int?,
      deathYear: json['deathYear'] as int?,
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthYear': instance.birthYear,
      'deathYear': instance.deathYear,
    };

_$FormatsImpl _$$FormatsImplFromJson(Map<String, dynamic> json) =>
    _$FormatsImpl(
      textHtml: json['text/html; charset=utf-8'] as String?,
      applicationEpubZip: json['application/epub+zip'] as String?,
      applicationXMobipocketEbook:
          json['application/x-mobipocket-ebook'] as String?,
      applicationRdfXml: json['applicationRdfXml'] as String?,
      imageJpeg: json['image/jpeg'] as String?,
      textPlainCharsetUsAscii: json['textPlainCharsetUsAscii'] as String?,
      applicationOctetStream: json['application/octet-stream'] as String?,
    );

Map<String, dynamic> _$$FormatsImplToJson(_$FormatsImpl instance) =>
    <String, dynamic>{
      'text/html; charset=utf-8': instance.textHtml,
      'application/epub+zip': instance.applicationEpubZip,
      'application/x-mobipocket-ebook': instance.applicationXMobipocketEbook,
      'applicationRdfXml': instance.applicationRdfXml,
      'image/jpeg': instance.imageJpeg,
      'textPlainCharsetUsAscii': instance.textPlainCharsetUsAscii,
      'application/octet-stream': instance.applicationOctetStream,
    };
