import 'package:books/features/domain/entity/book_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/data/repository/book_repository_imp.dart';
import '../../../../features/domain/database/ebook_database.dart';
import '../../../../features/domain/entity/gutenberg/e_book_entity.dart';
import '../../../../features/domain/entity/gutenberg/result_entity.dart';
import '../../../../features/domain/usecase/book_usecase.dart';
import 'book_event.dart';
import 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc(BookRepositoryImp bookRepositoryImp, EBookDatabase eBookDatabase)
      : super(BookLoading()) {
    //Google Books Api
    on<BookFetchData>((event, emit) async {
      emit(BookLoading());
      Map<String, dynamic> body = {'search': event.str};
      final res = await BookUseCase.call(bookRepositoryImp).getData(body);
      res.fold((l) => emit(BookErrorState(failure: l)),
          (r) => emit(BookSuccessState(bookList: r)));
    });

    //Gutenberg EBooks Api
    on<EBookFetchData>((event, emit) async {
      emit(BookLoading());
      Map<String, dynamic> body = {'search': event.str};
      final res = await BookUseCase.call(bookRepositoryImp).getEBook(body);

      final resultList = await eBookDatabase.fetchResult();

      res.fold(
        (l) {
          if (resultList.results != null && resultList.results!.isNotEmpty) {
            emit(EBookSuccessState(bookEntity: resultList));
          } else {
            emit(BookErrorState(failure: l));
          }
        },
        (r) {
          emit(EBookSuccessState(bookEntity: r));
        },
      );
    });
  }
}
