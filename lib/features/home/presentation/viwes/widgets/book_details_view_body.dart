import 'package:bookly_app/features/home/presentation/viwes/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/custom_book_deatils_app_bar.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                CustomBokkDeatilsAppBar(),
                BookDetailsSection(),
                 Expanded(child: SizedBox(height: 50)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



