import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class test extends StatefulWidget {
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    var idark = Get.isDarkMode.obs;
    // TODO: implement build
    return Scaffold(
      body: Column(children: [
        Center(
            child: Image(
                image: AssetImage(
                    dark ? TImages.darkAppLogo : TImages.lightAppLogo))),
        Obx(() => Text("$idark")),
      ]),
    );
  }
}
