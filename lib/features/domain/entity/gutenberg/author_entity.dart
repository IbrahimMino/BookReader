class AuthorEntity {
  final String? name;
  final int? birthYear;
  final int? deathYear;

  AuthorEntity({
    this.name,
    this.birthYear,
    this.deathYear,
  });

  AuthorEntity copyWith({
    String? name,
    int? birthYear,
    int? deathYear,
  }) =>
      AuthorEntity(
        name: name ?? this.name,
        birthYear: birthYear ?? this.birthYear,
        deathYear: deathYear ?? this.deathYear,
      );
}