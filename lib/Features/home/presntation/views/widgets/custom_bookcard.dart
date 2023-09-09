import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/assets.dart';

class CustomBookCard extends StatelessWidget {
  final double height;
  const CustomBookCard({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      // height: Get.height / height,
      height: mqHeight / height,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(MyAssets.testImage),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
