import 'package:flutter/material.dart';
import 'package:tstore/common/custome_clippers.dart';
import 'package:tstore/common/style/widgets/custom_shape/cirular_shape.dart';
import 'package:tstore/utils/constants/colors.dart';

class Ttop_curve extends StatelessWidget {
  const Ttop_curve(
      {super.key, required this.systemBrightness, required this.child});

  final Brightness systemBrightness;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: customcPath(),
      child: Container(
        //height: 300,
        color: TColors.primary,
        child: Stack(
          children: [
            //page

            Positioned(
                top: -40,
                right: -120,
                child: Tcircular(
                  height: 200,
                  width: 200,
                  color: TColors.white.withOpacity(0.1),
                )),
            Positioned(
                bottom: 40,
                right: -110,
                child: Tcircular(
                  height: 170,
                  width: 170,
                  color: TColors.white.withOpacity(0.1),
                )),

            child,
          ],
        ),
      ),
    );
  }
}
