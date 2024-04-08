import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';

class Troundcontainer extends StatelessWidget {
  Troundcontainer(
      {required this.child,
      this.height,
      this.width,
      this.enable = false,
      this.color});

  final Widget child;
  double? height;
  double? width;
  bool enable;
  Color? color;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Brightness systemBrightness = MediaQuery.of(context).platformBrightness;

    return Container(
        height: height,
        width: width,
        child: child,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
                color: enable
                    ? TColors.primary
                    : systemBrightness == Brightness.dark
                        ? TColors.light
                        : TColors.dark),
            color: color));
  }
}
