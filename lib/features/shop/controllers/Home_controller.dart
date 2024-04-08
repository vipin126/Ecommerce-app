import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class homecontroller extends GetxController {
  static homecontroller get instance => Get.find();
  final carousalcurrentIndex = 0.obs;
  void updatePageIndicator(index) {
    carousalcurrentIndex.value = index;
  }
}
