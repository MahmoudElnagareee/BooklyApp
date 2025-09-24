import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures,List<Book>>> fetchBestSellerBooks();
  Future<Either<Failures,List<Book>>> fetchFeaturedBooks();
}
