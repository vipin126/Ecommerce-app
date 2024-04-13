import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tstore/screens/Login_screen.dart';
import 'package:tstore/screens/onboarding.dart';


class AuthRepo extends GetxController {

static AuthRepo get instance=>Get.find();

final devicestorage = GetStorage();


@override
  void onReady() {
    //super.onInit();
    FlutterNativeSplash.remove();
    screenRedirect();
  }

//function to show the relivent screen
  void screenRedirect() async {
    devicestorage.writeIfNull('isFirsttime', true);
    devicestorage.read('isFirsttime') == 'false'
        ? Get.offAll(Loginpage())
        : Get.offAll(onboardingScreen());
  }

// ----------------E-mal and password authenctication----------------
//Sign -up






}