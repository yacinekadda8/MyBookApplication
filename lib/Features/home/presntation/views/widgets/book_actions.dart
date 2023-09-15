
import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/preview_and_price_buttons.dart';

import '../../../../../constant.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PreviewOrPriceButton(
            w: w,
            btnBgColor: kgreyColor,
            fontSize: 18,
            txtColor: kprimaryColor,
            txt: '19.99€',
            onTap: () {},
            topLeft: 15,
            bottomLeft: 15,
            topRight: 0,
            bottomRight: 0),
        PreviewOrPriceButton(
            w: w,
            btnBgColor: ksecondaryColor,
            fontSize: 16,
            txtColor: Colors.white,
            txt: 'Free preview',
            onTap: () {},
            topLeft: 0,
            bottomLeft: 0,
            topRight: 15,
            bottomRight: 15),
      ],
    );
  }
}
