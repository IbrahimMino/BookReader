import 'package:books/features/domain/entity/book_entity.dart';
import 'package:flutter/cupertino.dart';

import '../../../../common/errors/failure.dart';
import '../../../../features/domain/entity/gutenberg/e_book_entity.dart';

@immutable
sealed class BookState {}

final class BookLoading extends BookState {}

final class BookSuccessState extends BookState {
  final BookEntity bookList;

  BookSuccessState({required this.bookList});
}

final class BookErrorState extends BookState {
  final Failure failure;

  BookErrorState({required this.failure});
}

final class EBookSuccessState extends BookState {
  final EBookEntity bookList;

  EBookSuccessState({required this.bookList});
}
