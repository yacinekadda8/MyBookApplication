import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';
import 'package:mybook/Features/home/presntation/views/widgets/Custom_book_details_appbar.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';
import 'package:mybook/Features/home/presntation/views/widgets/preview_and_price_buttons.dart';
import 'package:mybook/Features/home/presntation/views/widgets/rating_and_count.dart';

import '../../../../../constant.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppbar(),
          MySpace.h20Space,
          const CustomBookCoverImg(height: 2.5),
          MySpace.h40Space,
          Container(
            //color: Colors.red,
            //margin: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'The Jungle Book',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: MyStyles.textStyle30,
                ),
                MySpace.h5Space,
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: MyStyles.textStyle18
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                MySpace.h10Space,
                const RatingAndCount(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                MySpace.h30Space,
                Row(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
