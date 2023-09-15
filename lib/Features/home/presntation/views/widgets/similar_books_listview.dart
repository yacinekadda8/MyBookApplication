
import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: mqHeight / 4.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
                padding: index == 0
                    ? const EdgeInsets.only(left: 0.0)
                    : const EdgeInsets.only(left: 8.0),
                child: const CustomBookCoverImg(height: 3.5),
              )),
    );
  }
}
