import 'package:books/features/domain/entity/gutenberg/result_entity.dart';

class EBookEntity {
  final int? count;
  final String? next;
  final dynamic previous;
  List<ResultEntity>? results;

  EBookEntity({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  EBookEntity copyWith({
    int? count,
    String? next,
    dynamic previous,
    List<ResultEntity>? results,
  }) =>
      EBookEntity(
        count: count ?? this.count,
        next: next ?? this.next,
        previous: previous ?? this.previous,
        results: results ?? this.results,
      );
}

