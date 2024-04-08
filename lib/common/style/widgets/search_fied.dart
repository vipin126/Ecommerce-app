import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';

class Searchfield extends StatelessWidget {
  Searchfield({super.key, required this.icon, required this.text});
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    Brightness systemBrightness = MediaQuery.of(context).platformBrightness;

    // TODO: implement build
    return Container(
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
      decoration: BoxDecoration(
          color: systemBrightness == Brightness.light
              ? TColors.light
              : TColors.dark,
          borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
    );
  }
}
