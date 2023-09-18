import 'package:flutter/material.dart';
import 'package:mybook/Features/home/presntation/views/widgets/best_seller_item.dart';

import '../../../../home/data/models/book_model/book_model.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      //physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        //child: BestSellerItem( ),
      ),
    );
  }
}
