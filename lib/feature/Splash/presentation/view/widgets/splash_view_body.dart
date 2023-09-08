import 'package:flutter/material.dart';
import 'package:mybook/feature/Splash/presentation/view/widgets/splash_animated_builder.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationControllerLogo;
  late Animation<Offset> slidingAnimationLogo;
  late AnimationController animationControllerText;
  late Animation<Offset> slidingAnimationText;

  @override
  void initState() {
    super.initState();

    // Logo animation
    animationControllerLogo = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimationLogo =
        Tween<Offset>(begin: const Offset(0, -.1), end: Offset.zero)
            .animate(animationControllerLogo);

    // Text animation
    animationControllerText = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slidingAnimationText =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationControllerText);

    // Start animations
    animationControllerLogo.forward();
    animationControllerText.forward();
  }

  @override
  void dispose() {
    // Dispose of the AnimationControllers when the state is disposed
    animationControllerLogo.dispose();
    animationControllerText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SplashAnimatedBuilder(
        slidingAnimationLogo: slidingAnimationLogo,
        slidingAnimationText: slidingAnimationText,
      ),
    );
  }
}
