import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class TopenLoader {
  static void LoadingDailogbox() {
    showDialog(
        context: Get.overlayContext!,
        builder: (_) => PopScope(
            canPop: true,
            child: Container(
              color: MediaQuery.of(Get.context!).platformBrightness ==
                      Brightness.dark
                  ? TColors.dark
                  : TColors.white,
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: LoadingAnimationWidget.twistingDots(
                  leftDotColor: const Color(0xFF1A1A3F),
                  rightDotColor: const Color(0xFFEA3799),
                  size: 50,
                ),
              ),
            )));
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
