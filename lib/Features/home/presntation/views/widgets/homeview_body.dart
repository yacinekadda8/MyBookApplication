import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';
import 'package:mybook/Features/home/presntation/views/widgets/bestseller_listview.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_appbar.dart';
import 'package:mybook/Features/home/presntation/views/widgets/featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomAppBar(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: FeaturedBooksListView(),
            ),
            MySpace.h40Space,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Best Seller',
                style: MyStyles.textStyle18,
              ),
            ),
            MySpace.h20Space,
          ],
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
