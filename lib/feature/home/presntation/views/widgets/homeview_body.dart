import 'package:flutter/material.dart';
import 'package:mybook/core/utils/my_space.dart';
import 'package:mybook/core/utils/my_styles.dart';
import 'package:mybook/feature/home/presntation/views/widgets/custom_appbar.dart';
import 'package:mybook/feature/home/presntation/views/widgets/featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          MySpace.h40Space,
          Text(
            'Best Seller',
            style: MyStyles.titleMedium,
          ),
          MySpace.w20Space,
        ],
      ),
    );
  }
}
