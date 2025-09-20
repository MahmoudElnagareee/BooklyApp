import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child:  Text(
                    'Harry Potter and the Global of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(fontFamily: KGtSectraFine),
                  ),
                ),
                const SizedBox(height: 3,),
                Text(
                  'J.K. Rowling',
                  style: Styles.textStyle14.copyWith(color: Colors.white54),
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text(r'19.99$',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


