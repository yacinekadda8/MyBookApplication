
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybook/core/utils/my_space.dart';
import 'package:mybook/core/utils/my_styles.dart';

class BookRatingAndBuyCount extends StatelessWidget {
  const BookRatingAndBuyCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '19.99 €',
          style: MyStyles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
         Row(
          children: [
            Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.yellow,
              size: 12,
              weight: 0.3,
            ),
            MySpace.w5SSpace,
            Text('4.8', style: MyStyles.textStyle16),
            MySpace.w5SSpace,
            Text('(2390)', style: MyStyles.textStyle14),
          ],
        ),
      ],
    );
  }
}
