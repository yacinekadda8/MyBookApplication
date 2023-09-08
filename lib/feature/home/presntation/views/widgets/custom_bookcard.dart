
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybook/core/utils/assets.dart';

class CustomBookCard extends StatelessWidget {
  const CustomBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 3.5,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage(MyAssets.testImage),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}