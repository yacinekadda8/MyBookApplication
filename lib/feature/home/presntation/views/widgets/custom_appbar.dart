import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      margin: const EdgeInsets.only(top: 22),
      child: Row(
        children: [
          SvgPicture.asset(
            MyAssets.mylogo,
            fit: BoxFit.fitHeight,
            height: 30,
            // width: 390,
            colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
