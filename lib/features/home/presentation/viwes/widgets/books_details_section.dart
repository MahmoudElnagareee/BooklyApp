import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(height: 43),
        Text(textAlign: TextAlign.center,book.volumeInfo.title!, style: Styles.textStyle30),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          rating: book.volumeInfo.pageCount!,
          count: book.volumeInfo.pageCount!,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
