import 'package:flutter/material.dart';
import 'package:mybook/Features/search/presntation/view/widgets/custom_search.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomSearchTextField(),
        ),
      ],
    );
  }
}
