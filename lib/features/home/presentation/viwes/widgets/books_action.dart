import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                launchCustomUrl(context, book.volumeInfo.previewLink!);
              },
              text: getText(book),
              fontSize: 16,
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getText(Book book) {
  if (!(book.volumeInfo.previewLink == null)) {
    return 'Not Avilable';
  } else {
    return 'Preview';
  }
}
