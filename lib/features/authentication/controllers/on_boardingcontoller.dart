//fluimport 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tstore/features/authentication/repository/singUPrepo.dart';
import 'package:tstore/screens/Login_screen.dart';

class onboradingContorller extends GetxController {
  var currenPage = 1.obs;
  var pageController = PageController();
  final storage = GetStorage();

  void updatePageIndicator(index) {
    currenPage.value = index;
  }

  void dotNavigatorClick(index) {
    currenPage.value = index;
    pageController.jumpToPage(index);
  }

  void nexpage() {
    if (currenPage.value == 3) {
      storage.write('isFirttime', false);
      Get.offAll(Loginpage());
    } else {
      pageController.jumpToPage(currenPage.value++);
    }
  }

  void onSkip() {
    currenPage.value = 3;
    pageController.jumpToPage(currenPage.value);
  }
}
