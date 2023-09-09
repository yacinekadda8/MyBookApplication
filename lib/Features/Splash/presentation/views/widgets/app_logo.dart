import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/Core/utils/assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset(MyAssets.mylogo,
          fit: BoxFit.fitHeight,
          height: Get.width / 6,
          width: Get.width / 3,
          colorFilter: const ColorFilter.mode(kprimaryColor, BlendMode.srcIn),
          semanticsLabel: 'A red up arrow'),
    );
  }
}
