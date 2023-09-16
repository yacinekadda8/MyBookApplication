import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybook/constant.dart';


class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          hintText: "Search",
          hintStyle: const TextStyle(
            color: ksecondaryColor,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
              color: ksecondaryColor,
            ),
          )),
    );
  }
}
