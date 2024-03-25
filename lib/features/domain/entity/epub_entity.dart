class EpubEntity {
  final bool? isAvailable;

  EpubEntity({
    this.isAvailable,
  });

  EpubEntity copyWith({
    bool? isAvailable,
  }) =>
      EpubEntity(
        isAvailable: isAvailable ?? this.isAvailable,
      );
}