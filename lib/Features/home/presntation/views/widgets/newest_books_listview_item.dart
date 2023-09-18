import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/Core/utils/app_router.dart';
import 'package:mybook/Features/home/data/models/book_model/book_model.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Core/utils/my_styles.dart';
import 'package:mybook/Features/home/presntation/views/widgets/price_bookratin_buycount.dart';

class NewestBooksItem extends StatelessWidget {
  final BookModel bookModel;
  const NewestBooksItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => context.go('/${AppRouter.kBookViewDetails}',extra: bookModel),
      child: SizedBox(
        width: 300,
        child: Row(
          children: [
            SizedBox(
                height: 100,
                child: CustomBookCoverImg(
                  height: 100,
                  imgUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
                )),
            MySpace.w30Space,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width / 1.8,
                    child: Text(
                      bookModel.volumeInfo?.title! ?? 'unknown',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: MyStyles.textStyle20.copyWith(
                        fontFamily: kgtSectraFine,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: .7,
                    child: Text(
                      bookModel.volumeInfo?.authors?[0] ?? 'unknown',
                      style: MyStyles.textStyle14,
                    ),
                  ),
                  PriceAndBookRatingAndBuyCount(
                    averageRating: bookModel.volumeInfo?.averageRating?.toInt(),
                    ratingCount: bookModel.volumeInfo?.ratingsCount ?? 0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
