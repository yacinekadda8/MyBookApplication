
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';

class RatingAndCount extends StatelessWidget {
  const RatingAndCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
          weight: 0.3,
        ),
        MySpace.w5SSpace,
        Text(
          '4.8',
          style: MyStyles.textStyle16,
        ),
        MySpace.w5SSpace,
        Text('(2390)', style: MyStyles.textStyle14),
      ],
    );
  }
}
