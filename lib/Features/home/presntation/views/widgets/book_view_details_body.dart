import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Features/home/presntation/views/widgets/Custom_book_details_appbar.dart';
import 'package:mybook/Features/home/presntation/views/widgets/books_details_section.dart';
import 'package:mybook/Features/home/presntation/views/widgets/similar_books_section.dart';

class BookViewDetailsBody extends StatelessWidget {
  const BookViewDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          MySpace.h20Space,
          const BooksDetailsSection(),
          // relative height to let listview in last of screen
          SizedBox(height: height / 12),
          const SimilarBooksSection(),
          MySpace.h30Space,
        ],
      ),
    );
  }
}
