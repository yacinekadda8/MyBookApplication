import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybook/Features/home/presntation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';

import '../../../../../Core/widgets/custom_err_msg.dart';
import '../../../../../Core/widgets/custom_loading.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: mqHeight / 3.8,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CustomBookCoverImg(
                        height: 3.5,
                        imgUrl: state.books[index].volumeInfo?.imageLinks
                                ?.thumbnail ??
                            ''))),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMsg: state.errMsg);
        } else if (state is FeaturedBooksLoading) {
          return const CustomLoading();
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
