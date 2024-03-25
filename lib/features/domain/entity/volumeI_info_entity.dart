import 'package:books/features/domain/entity/image_links_entity.dart';

class VolumeInfoEntity {
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publisherDate;
  final String? description;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final ImageLinksEntity? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  VolumeInfoEntity({
    this.title,
    this.subtitle,
    this.authors,
    this.publisherDate,
    this.description,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfoEntity copyWith({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisherDate,
    String? description,
    int? pageCount,
    String? printType,
    List<String>? categories,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    ImageLinksEntity? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) =>
      VolumeInfoEntity(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        authors: authors ?? this.authors,
        publisherDate: publisherDate ?? this.publisherDate,
        description: description ?? this.description,
        pageCount: pageCount ?? this.pageCount,
        printType: printType ?? this.printType,
        categories: categories ?? this.categories,
        maturityRating: maturityRating ?? this.maturityRating,
        allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
        contentVersion: contentVersion ?? this.contentVersion,
        imageLinks: imageLinks ?? this.imageLinks,
        language: language ?? this.language,
        previewLink: previewLink ?? this.previewLink,
        infoLink: infoLink ?? this.infoLink,
        canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
      );
}