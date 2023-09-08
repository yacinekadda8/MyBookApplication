import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/core/utils/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(MyAssets.mylogo,
                width: 800,
                height: 400,
                colorFilter:
                    const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
                semanticsLabel: 'A red up arrow')
          ],
        ),
      ),
    );
  }
}
