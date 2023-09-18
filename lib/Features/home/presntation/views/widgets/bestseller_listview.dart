import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybook/Core/widgets/custom_err_msg.dart';
import 'package:mybook/Core/widgets/custom_loading.dart';
import 'package:mybook/Features/home/presntation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:mybook/Features/home/presntation/views/widgets/best_seller_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: BestSellerItem(bookModel: state.books[index]),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMsg: state.errMsg);
        } else if (state is NewestBooksLoading) {
          return const CustomLoading();
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
