import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';

class Tcircular extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  final EdgeInsets? margin;
  final Color? color;
  Tcircular({
    super.key,
    this.width = 400,
    this.height = 400,
    this.child,
    this.margin,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      margin: margin,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(400), color: color),
    );
  }
}
