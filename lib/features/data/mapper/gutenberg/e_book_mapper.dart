import 'dart:convert';

import 'package:books/features/domain/model/result_model.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/gutenberg/author_entity.dart';
import '../../../domain/entity/gutenberg/e_book_entity.dart';
import '../../../domain/entity/gutenberg/formats_entity.dart';
import '../../../domain/entity/gutenberg/result_entity.dart';
import '../../../domain/model/format_model.dart';
import '../../model/gutenberg/e_book_model.dart';

class EBookMapper {
  EBookEntity toEntity(EBookModel? eBookModel) {
    return EBookEntity(
      count: eBookModel?.count,
      next: eBookModel?.next,
      previous: eBookModel?.previous,
      results: toResultEntity(eBookModel?.results ?? []),
    );
  }

  List<ResultEntity>? toResultEntity(List<Result>? items) {
    List<ResultEntity>? list = [];
    if (items != null && items.isNotEmpty) {
      for (int i = 0; i < items.length; i++) {
        list.add(
          ResultEntity(
            remoteId: items[i].id,
            title: items[i].title ?? '',
            authors: toAuthorEntity(items[i].authors),
            translators: items[i].translators.toString(),
            subjects: items[i].subjects.toString(),
            bookshelves: items[i].bookshelves.toString(),
            languages: items[i].languages.toString(),
            copyright: items[i].copyright,
            mediaType: items[i].mediaType,
            formatsEntity: toFormatsEntity(items[i].formats),
            downloadCount: items[i].downloadCount ?? 0,
          ),
        );
      }
    }
    return list;
  }

  String? toAuthorEntity(List<Author>? authors) {
    String? author;
    if (authors != null) {
      for (int i = 0; i < authors.length; i++) {
        author = authors[i].name;
      }
    }
    return author;
  }

  FormatsEntity? toFormatsEntity(Formats? formats) {
    FormatsEntity formatsEntity = FormatsEntity();
    if (formats != null) {
      formatsEntity = FormatsEntity(
        textHtml: formats.textHtml,
        applicationEpubZip: formats.applicationEpubZip,
        applicationXMobipocketEbook: formats.applicationXMobipocketEbook,
        applicationRdfXml: formats.applicationRdfXml,
        imageJpeg: formats.imageJpeg,
        textPlainCharsetUsAscii: formats.textPlainCharsetUsAscii,
        applicationOctetStream: formats.applicationOctetStream,
      );
    }
    return formatsEntity;
  }

  ResultEntity? toResultEntityFromDb(ResultModel model) {
    return ResultEntity(
        id: model.id,
        remoteId: model.remoteId,
        title: model.title,
        authors: model.authors,
        subjects: model.subjects,
        bookshelves: model.bookshelves,
        languages: model.languages,
        copyright: model.copyright,
        mediaType: model.mediaType,
        downloadCount: model.downloadCount,
        localImgPath: model.localImgPath,
        localPath: model.localPath,
        lastPage: model.lastPage);
  }

  ResultModel? toResultModelFromDb(ResultEntity? entity) {
    return ResultModel(
      remoteId: entity?.remoteId,
      title: entity?.title,
      authors: entity?.authors,
      subjects: entity?.subjects,
      bookshelves: entity?.bookshelves,
      languages: entity?.languages,
      copyright: entity?.copyright,
      mediaType: entity?.mediaType,
      downloadCount: entity?.downloadCount,
      lastPage: entity?.lastPage,
      localPath: entity?.localPath,
      localImgPath: entity?.localImgPath,
    );
  }

  FormatsEntity parseFormatModelToFormatsEntity(FormatModel formatModel) {
    return FormatsEntity(
      textHtml: formatModel.textHtml,
      applicationEpubZip: formatModel.applicationEpubZip,
      imageJpeg: formatModel.imageJpeg,
      textPlainCharsetUsAscii: formatModel.textPlainCharsetUsAscii,
      applicationOctetStream: formatModel.applicationOctetStream,
    );
  }

  FormatModel parseFormatEntityToFormatsModel(
      FormatsEntity? formatsEntity, int? resultRemoteId) {
    return FormatModel(
      textHtml: formatsEntity?.textHtml,
      applicationEpubZip: formatsEntity?.applicationEpubZip,
      imageJpeg: formatsEntity?.imageJpeg,
      textPlainCharsetUsAscii: formatsEntity?.textPlainCharsetUsAscii,
      applicationOctetStream: formatsEntity?.applicationOctetStream,
      resultModelRemoteId: resultRemoteId,
    );
  }

  Map<String, dynamic> parseLastPage(String? lastPage) {
    if (lastPage != null && lastPage.isNotEmpty) {
      final Map<String, dynamic> decoded = jsonDecode(lastPage);

      if (decoded.containsKey('locations')) {
        decoded.addAll(decoded['locations']);
      }
      return decoded;
    }
    return {};
  }
}
