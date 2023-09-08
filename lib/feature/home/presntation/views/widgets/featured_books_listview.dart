import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybook/feature/home/presntation/views/widgets/custom_bookcard.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 3.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.only(left: index == 0 ? 0 : 8.0),
                child: const CustomBookCard(),
              )),
    );
  }
}
