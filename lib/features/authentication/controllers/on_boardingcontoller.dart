import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tstore/screens/Login_screen.dart';

class onboradingContorller extends GetxController {
  var currenPage = 1.obs;
  var pageController = PageController();

  void updatePageIndicator(index) {
    currenPage.value = index;
  }

  void dotNavigatorClick(index) {
    currenPage.value = index;
    pageController.jumpToPage(index);
  }

  void nexpage() {
    if (currenPage.value == 3) {
      Get.to(Loginpage());
    } else {
      pageController.jumpToPage(currenPage.value++);
    }
  }

  void onSkip() {
    currenPage.value = 3;
    pageController.jumpToPage(currenPage.value);
  }
}
