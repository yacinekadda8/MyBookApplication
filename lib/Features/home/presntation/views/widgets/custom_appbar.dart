import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          SizedBox(
            child: Image.asset(
              MyAssets.mybookpng,
              fit: BoxFit.fitHeight,
              height: 40,
              //width: mqwidth / 3,
              // colorFilter: const ColorFilter.mode(kprimaryColor, BlendMode.srcIn),
              // semanticsLabel: 'A red up arrow',
            ),
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
