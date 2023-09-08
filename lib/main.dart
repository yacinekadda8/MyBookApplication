import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/feature/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: neutralColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'MyBook',
      home: const SplashView(),
    );
  }
}
