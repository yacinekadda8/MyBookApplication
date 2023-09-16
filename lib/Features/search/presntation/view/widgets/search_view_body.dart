import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_space.dart';
import 'package:mybook/Features/search/presntation/view/widgets/custom_search.dart';
import 'package:mybook/Features/search/presntation/view/widgets/search_listview.dart';

import '../../../../../Core/utils/my_styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MySpace.h20Space,
            CustomSearchTextField(),
            MySpace.h20Space,
            Text(
              'Search result',
              style: MyStyles.textStyle18,
            ),
            MySpace.h20Space,
            Expanded(child: SearchResultListView()),
          ],
        ));
  }
}
