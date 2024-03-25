import 'package:books/features/domain/entity/book_entity.dart';
import 'package:books/features/domain/entity/gutenberg/e_book_entity.dart';

import '../../../common/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BookRepository {
  Future<Either<Failure, BookEntity>> getData(Map<String, dynamic> body);
  Future<Either<Failure, EBookEntity>> getEBook(Map<String, dynamic> body);
}
