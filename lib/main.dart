import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybook/Core/utils/app_router.dart';
import 'package:mybook/Features/home/presntation/views/home_view.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kneutralColor,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'MyBook',
      routerConfig: AppRouter.router,
      // home: const SplashView(),
    );
  }
}

