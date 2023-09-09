import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';

abstract class MyStyles {
  static const titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: kprimaryColor,
  );
  static const titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const titleLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const titleExtraLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
  );
}
