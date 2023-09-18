
import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/book_actions.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';
import 'package:mybook/Features/home/presntation/views/widgets/rating_and_count.dart';

import '../../../../../Core/utils/my_space.dart';
import '../../../../../Core/utils/my_styles.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(children: [
      const CustomBookCoverImg(height: 2.5,imgUrl: 'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
      MySpace.h40Space,
      Column(
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
                style:
                    MyStyles.textStyle18.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            MySpace.h10Space,
            const RatingAndCount(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            MySpace.h30Space,
            BookActions(w: width),
          ])
    ]);
  }
}
