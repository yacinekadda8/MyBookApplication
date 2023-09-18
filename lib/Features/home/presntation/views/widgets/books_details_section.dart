import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/book_actions.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';
import 'package:mybook/Features/home/presntation/views/widgets/rating_and_count.dart';

import '../../../../../Core/utils/my_space.dart';
import '../../../../../Core/utils/my_styles.dart';
import '../../../data/models/book_model/book_model.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Column(children: [
      CustomBookCoverImg(
          height: 2.5,
          imgUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? ''),
      MySpace.h40Space,
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              bookModel.volumeInfo?.title ?? 'Untitle',
              textAlign: TextAlign.center,
              maxLines: 3,
              style: MyStyles.textStyle30,
            ),
            MySpace.h5Space,
            Opacity(
              opacity: .7,
              child: Text(
                bookModel.volumeInfo?.authors?[0] ?? 'unKnown',
                style:
                    MyStyles.textStyle18.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
            MySpace.h10Space,
            RatingAndCount(
              mainAxisAlignment: MainAxisAlignment.center,
              averageRating: bookModel.volumeInfo!.averageRating.toString(),
              ratingCount: bookModel.volumeInfo!.ratingsCount.toString(),
            ),
            MySpace.h30Space,
            BookActions(w: width, bookModel: bookModel),
          ])
    ]);
  }
}
