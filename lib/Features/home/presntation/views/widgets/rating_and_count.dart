// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';

class RatingAndCount extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const RatingAndCount({
    Key? key,
    required this.mainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
          weight: 0.3,
        ),
        MySpace.w5SSpace,
        Text(
          '4.8',
          textAlign: TextAlign.center,
          style: MyStyles.textStyle16,
        ),
        MySpace.w5SSpace,
        Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            textAlign: TextAlign.center,
            style: MyStyles.textStyle14,
          ),
        ),
      ],
    );
  }
}
