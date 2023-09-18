import 'package:flutter/material.dart';

class CustomBookCoverImg extends StatelessWidget {
  final double height;
  final String imgUrl;
  const CustomBookCoverImg({
    super.key,
    required this.height,
    required this.imgUrl,
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
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
