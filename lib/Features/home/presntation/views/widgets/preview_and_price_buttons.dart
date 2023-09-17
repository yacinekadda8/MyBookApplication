import 'package:flutter/material.dart';
import 'package:mybook/Core/utils/my_styles.dart';


class PreviewOrPriceButton extends StatelessWidget {
  final String txt;
  final void Function()? onTap;
  final double topLeft;
  final double bottomLeft;
  final double topRight;
  final double bottomRight;
  final Color btnBgColor;
  final double? fontSize;
  final Color txtColor;
  const PreviewOrPriceButton({
    super.key,
    required this.w,
    required this.txt,
    required this.onTap,
    required this.topLeft,
    required this.bottomLeft,
    required this.topRight,
    required this.bottomRight,
    required this.btnBgColor,
    required this.fontSize,
    required this.txtColor,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: w / 2.4,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            topRight: Radius.circular(topRight),
            bottomRight: Radius.circular(bottomRight),
          ),
          color: btnBgColor,
        ),
        child: Center(
            child: Text(
          txt,
          style: MyStyles.textStyle16.copyWith(
            color: txtColor,
            fontSize: fontSize,
          ),
        )),
      ),
    );
  }
}
