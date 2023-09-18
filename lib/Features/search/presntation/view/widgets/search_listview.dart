import 'package:flutter/material.dart';

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
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        //child: BestSellerItem( ),
      ),
    );
  }
}
