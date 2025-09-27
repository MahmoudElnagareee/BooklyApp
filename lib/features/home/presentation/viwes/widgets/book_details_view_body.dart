import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/custom_book_deatils_app_bar.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children:  [
                const CustomBokkDeatilsAppBar(),
                 BookDetailsSection(book: book,),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
