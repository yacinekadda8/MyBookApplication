import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybook/Features/home/data/models/book_model/book_model.dart';
import 'package:mybook/Features/home/presntation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:mybook/Features/home/presntation/views/widgets/book_view_details_body.dart';

class BookViewDetails extends StatefulWidget {
  const BookViewDetails({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookViewDetails> createState() => _BookViewDetailsState();
}

class _BookViewDetailsState extends State<BookViewDetails> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      categorey: widget.bookModel.volumeInfo!.categories?[0] ?? '' 
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookViewDetailsBody()),
    );
  }
}
