import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';

class Auths_buttoms extends StatelessWidget {
  final String txt;
  final bool Custom;
  final Callback? fucn;
  Auths_buttoms(this.txt, this.Custom, this.fucn);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    bool dark = true;
    return Container(
      height: THelperFunctions.screenHeight() * 0.07,
      width: THelperFunctions.screenWidth(),
      child: ElevatedButton(
        onPressed: fucn,
        child: Center(
          child: Text(
            txt,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        clipBehavior: Clip.none,
        style: Custom
            ? ElevatedButton.styleFrom(
                backgroundColor: dark ? TColors.dark : TColors.light,
                side: BorderSide(color: TColors.grey),
              )
            : Theme.of(context).elevatedButtonTheme.style,
      ),
    );
  }
}
