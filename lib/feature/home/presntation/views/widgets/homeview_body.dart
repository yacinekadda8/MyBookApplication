import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/core/utils/assets.dart';
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
          MySpace.h20Space,
          BestSellerItem()
        ],
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 106,
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage(MyAssets.testImage),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'GT-Sectra',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'J.K. Rowling',
                  style: MyStyles.titleSmall,
                ),
                Row(
                  children: [
                    Text('19.99 €'),
                    MySpace.w40Space,
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text('4.8'),
                      ],
                    ),
                    Text('(2390)'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
