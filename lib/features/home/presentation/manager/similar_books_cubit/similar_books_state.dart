part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFailure(this.errorMessage);
}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<Book> books;

  SimilarBooksSuccess(this.books);
}

class SimilarBooksLoading extends SimilarBooksState {}
