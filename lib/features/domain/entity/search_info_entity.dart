class SearchInfoEntity {
  final String? textSnippet;

  SearchInfoEntity({
    this.textSnippet,
  });

  SearchInfoEntity copyWith({
    String? textSnippet,
  }) =>
      SearchInfoEntity(
        textSnippet: textSnippet ?? this.textSnippet,
      );
}