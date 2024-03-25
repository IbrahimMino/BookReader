import 'package:books/features/data/repository/book_repository_imp.dart';

class BookUseCase {
  static BookRepositoryImp call(BookRepositoryImp bookRepositoryImp) {
    return bookRepositoryImp;
  }
}
