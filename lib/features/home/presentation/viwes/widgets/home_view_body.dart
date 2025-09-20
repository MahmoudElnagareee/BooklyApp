import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/viwes/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(height: 50),
          Text('Best Seller', style: Styles.textStyle18),
          const SizedBox(height: 20,),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

