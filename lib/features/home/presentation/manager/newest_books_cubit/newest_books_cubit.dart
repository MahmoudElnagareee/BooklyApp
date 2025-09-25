import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBookps() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchBestNewestBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}