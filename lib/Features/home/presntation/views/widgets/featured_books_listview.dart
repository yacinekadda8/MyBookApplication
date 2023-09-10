import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_book_cover_img.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: mqHeight / 3.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: CustomBookCoverImg(height: 3.5),
              )),
    );
  }
}
