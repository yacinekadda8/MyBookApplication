import 'package:flutter/material.dart';

import '../utils/my_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.errMsg,
  });
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMsg,
        style: MyStyles.textStyle20,
      ),
    );
  }
}
