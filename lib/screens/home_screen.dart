import 'package:flutter/material.dart';
import 'package:tstore/common/custome_clippers.dart';
import 'package:tstore/common/style/widgets/custom_shape/cirular_shape.dart';
import 'package:tstore/utils/constants/colors.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: customcPath(),
          child: Container(
            height: 300,
            color: TColors.primary,
            child: Stack(
              children: [
                Positioned(
                    top: -40,
                    right: -120,
                    child: circular(
                      height: 200,
                      width: 200,
                    )),
                Positioned(
                    bottom: 40,
                    right: -110,
                    child: circular(
                      height: 170,
                      width: 170,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
