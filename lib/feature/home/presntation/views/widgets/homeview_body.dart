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
        CustomBookCard(),
      ],
    );
  }
}
