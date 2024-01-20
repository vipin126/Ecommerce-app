import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';

class circular extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  circular({
    super.key,
    this.width = 400,
    this.height = 400,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(400),
          color: TColors.white.withOpacity(0.1)),
    );
  }
}
