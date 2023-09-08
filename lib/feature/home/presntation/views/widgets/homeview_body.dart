import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybook/core/utils/assets.dart';
import 'package:mybook/feature/home/presntation/views/widgets/custom_appbar.dart';
import 'package:mybook/feature/home/presntation/views/widgets/custom_bookcard.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 3.5,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: CustomBookCard(),
              )),
    );
  }
}
