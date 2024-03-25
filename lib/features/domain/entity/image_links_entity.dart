class ImageLinksEntity {
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinksEntity({
    this.smallThumbnail,
    this.thumbnail,
  });

  ImageLinksEntity copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) =>
      ImageLinksEntity(
        smallThumbnail: smallThumbnail ?? this.smallThumbnail,
        thumbnail: thumbnail ?? this.thumbnail,
      );
}