import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/similar_books_listview.dart';

import '../../../../../Core/utils/my_space.dart';
import '../../../../../Core/utils/my_styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            'You can also like',
            style: MyStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        MySpace.h10Space,
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
