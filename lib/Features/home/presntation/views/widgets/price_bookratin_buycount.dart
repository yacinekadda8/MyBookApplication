import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_styles.dart';
import 'package:mybook/Features/home/presntation/views/widgets/rating_and_count.dart';

class PriceAndBookRatingAndBuyCount extends StatelessWidget {
  const PriceAndBookRatingAndBuyCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '19.99 €',
          style: MyStyles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
        ),
        const Spacer(),
        const RatingAndCount(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
