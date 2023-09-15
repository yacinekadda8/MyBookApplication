import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';
import 'package:mybook/Features/home/presntation/views/widgets/Custom_book_details_appbar.dart';
import 'package:mybook/Features/home/presntation/views/widgets/book_actions.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';
import 'package:mybook/Features/home/presntation/views/widgets/rating_and_count.dart';
import 'package:mybook/Features/home/presntation/views/widgets/similar_books_lv.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppbar(),
          MySpace.h20Space,
          Container(
            child: const CustomBookCoverImg(height: 2.5),
          ),
          MySpace.h40Space,
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 30),
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
                BookActions(w: w),
                MySpace.h40Space,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'You can also like',
                      style: MyStyles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                MySpace.h10Space,
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: SimilarBooksListView(),
                ),
                MySpace.h20Space,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
