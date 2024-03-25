import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../features/data/repository/book_repository_imp.dart';
import '../../../../features/domain/usecase/book_usecase.dart';
import 'book_event.dart';
import 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc(BookRepositoryImp bookRepositoryImp) : super(BookLoading()) {
    //Google Books Api
    on<BookFetchData>((event, emit) async {
      emit(BookLoading());
      Map<String, dynamic> body = {'search': event.str};
      final res = await BookUseCase.call(bookRepositoryImp).getData(body);
      res.fold((l) => emit(BookErrorState(failure: l)),
          (r) => emit(BookSuccessState(bookList: r)));
    });

    //Gutenberd EBooks Api
    on<EBookFetchData>((event, emit) async {
      emit(BookLoading());

      Map<String, dynamic> body = {'search': event.str};
      final res = await BookUseCase.call(bookRepositoryImp).getEBook(body);
      res.fold((l) => emit(BookErrorState(failure: l)),
          (r) => emit(EBookSuccessState(bookList: r)));
    });
  }
}
