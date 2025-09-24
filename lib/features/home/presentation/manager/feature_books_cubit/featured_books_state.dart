part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<Book> books;

  FeaturedBooksSuccess(this.books);
}
