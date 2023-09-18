import 'package:flutter/material.dart';

void mySnackBar(context, String txt) {
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content:  Text(txt))
    
  );
}
