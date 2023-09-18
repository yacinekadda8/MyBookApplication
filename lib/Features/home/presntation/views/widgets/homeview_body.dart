import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';
import 'package:mybook/Features/home/presntation/views/widgets/newest_books_listview.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_appbar.dart';
import 'package:mybook/Features/home/presntation/views/widgets/featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
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
                'Newest Books',
                style: MyStyles.textStyle18,
              ),
            ),
            MySpace.h20Space,
          ],
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
