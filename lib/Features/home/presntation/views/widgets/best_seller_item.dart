import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/Core/utils/assets.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';
import 'package:mybook/Features/home/presntation/views/widgets/book_rating_and_buy_count.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> context.go('/bookViewDetails'),
      child: SizedBox(
        width: 300,
        child: Row(
          children: [
            SizedBox(
              height: 100,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(MyAssets.testImage),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
            ),
            MySpace.w30Space,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Get.width / 1.8,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: MyStyles.textStyle20.copyWith(
                        fontFamily: kgtSectraFine,
                      ),
                    ),
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: MyStyles.textStyle14,
                  ),
                  const BookRatingAndBuyCount()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
