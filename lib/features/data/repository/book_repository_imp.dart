import 'package:books/common/errors/failure.dart';
import 'package:books/features/domain/entity/book_entity.dart';
import 'package:books/features/domain/entity/gutenberg/e_book_entity.dart';
import 'package:books/features/domain/entity/item_entity.dart';
import 'package:books/features/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../common/client/api_client.dart';
import '../mapper/book_mapper.dart';
import '../mapper/gutenberg/e_book_mapper.dart';
import '../model/book_model.dart';
import '../model/gutenberg/e_book_model.dart';

class BookRepositoryImp extends BookRepository {
  @override
  Future<Either<Failure, BookEntity>> getData(Map<String, dynamic> body) async {
    final res = await ApiClient().getMethod(isHeader: false, body: body);

    if (res.isSuccess!) {
      try {
        if (res.response != null && res.response.toString().isNotEmpty) {
          BookEntity bookEntity =
              BookMapper().toEntity(BookModel.fromJson(res.response));
          return Right(bookEntity);
        } else {
          return Left(Failure(errorMessage: 'Response is null'));
        }
      } catch (e) {
        return Left(Failure(errorMessage: 'Generation error: $e'));
      }
    } else {
      return Left(Failure(errorMessage: 'Failed to get data: ${res.response}'));
    }
  }

  @override
  Future<Either<Failure, EBookEntity>> getEBook(
      Map<String, dynamic> body) async {
    final res = await ApiClient().getEBook(isHeader: false, body: body);

    if (res.isSuccess!) {
      try {
        if (res.response != null && res.response.toString().isNotEmpty) {
          EBookEntity eBookEntity =
              EBookMapper().toEntity(EBookModel.fromJson(res.response));
          return Right(eBookEntity);
        } else {
          return Left(Failure(errorMessage: 'Response is null'));
        }
      } catch (e) {
        return Left(Failure(errorMessage: 'Generation error: $e'));
      }
    } else {
      return Left(Failure(errorMessage: 'Failed to get data: ${res.response}'));
    }
  }
}
