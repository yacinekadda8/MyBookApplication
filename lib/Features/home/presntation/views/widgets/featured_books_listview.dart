import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybook/Features/home/presntation/views/widgets/custom_bookcard.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 3.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: CustomBookCard(),
              )),
    );
  }
}
