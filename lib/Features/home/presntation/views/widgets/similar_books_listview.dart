import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybook/Core/widgets/custom_err_msg.dart';
import 'package:mybook/Core/widgets/custom_loading.dart';
import 'package:mybook/Features/home/presntation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: mqHeight / 4.5,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 0.0)
                          : const EdgeInsets.only(left: 8.0),
                      child: const CustomBookCoverImg(
                          height: 3.5,
                          imgUrl:
                              'https://edit.org/images/cat/book-covers-big-2019101610.jpg'),
                    )),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMsg: state.errMsg);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
