import 'package:books/features/domain/entity/gutenberg/author_entity.dart';
import 'package:books/features/domain/entity/gutenberg/formats_entity.dart';

import '../../../data/model/gutenberg/e_book_model.dart';

class ResultEntity {
  final int? id;
  final String? title;
  final String? authors;
  final String? translators;
  final String? subjects;
  final String? bookshelves;
  final String? languages;
  final bool? copyright;
  final String? mediaType;
  FormatsEntity? formatsEntity;
  final int? downloadCount;

  ResultEntity({
    this.id,
    this.title,
    this.authors,
    this.translators,
    this.subjects,
    this.bookshelves,
    this.languages,
    this.copyright,
    this.mediaType,
    this.formatsEntity,
    this.downloadCount,
  });

  ResultEntity copyWith({
    int? id,
    String? title,
    String? authorEntity,
    String? translators,
    String? subjects,
    String? bookshelves,
    String? languages,
    bool? copyright,
    String? mediaType,
    Formats? formats,
    int? downloadCount,
  }) =>
      ResultEntity(
        id: id ?? this.id,
        title: title ?? this.title,
        authors: authors ?? this.authors,
        translators: translators ?? this.translators,
        subjects: subjects ?? this.subjects,
        bookshelves: bookshelves ?? this.bookshelves,
        languages: languages ?? this.languages,
        copyright: copyright ?? this.copyright,
        mediaType: mediaType ?? this.mediaType,
        formatsEntity: formatsEntity ?? this.formatsEntity,
        downloadCount: downloadCount ?? this.downloadCount,
      );
}
