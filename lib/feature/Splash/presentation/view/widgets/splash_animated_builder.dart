
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/core/utils/assets.dart';

class SplashAnimatedBuilder extends StatelessWidget {
  const SplashAnimatedBuilder({
    super.key,
    required this.slidingAnimationLogo,
    required this.slidingAnimationText,
  });

  final Animation<Offset> slidingAnimationLogo;
  final Animation<Offset> slidingAnimationText;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimationLogo,
        builder: (context, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: slidingAnimationLogo,
                child: SizedBox(
                  child: SvgPicture.asset(MyAssets.mylogo,
                      fit: BoxFit.fitWidth,
                      height: Get.width / 5,
                      colorFilter:
                          const ColorFilter.mode(primaryColor, BlendMode.srcIn),
                      semanticsLabel: 'A red up arrow'),
                ),
              ),
              SlideTransition(
                position: slidingAnimationText,
                child: const Text(
                  'Read between the lines',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          );
        });
  }
}
