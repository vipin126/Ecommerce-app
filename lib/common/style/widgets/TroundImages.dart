import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TroundImages extends StatelessWidget {
  TroundImages(
      {required this.url,
      this.backgroundcolor = TColors.white,
      this.borderradius = 0});

  final String url;

  final Color? backgroundcolor;
  final double borderradius;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: backgroundcolor,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderradius,
          ),
        ),
        child: Image(
          image: AssetImage(url),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
