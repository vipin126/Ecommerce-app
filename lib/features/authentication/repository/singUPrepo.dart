import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tstore/common/style/widgets/Loader%20and%20dialogBOxx/TopenLoader.dart';
import 'package:tstore/features/authentication/repository/netWorkConnectivity.dart';
import 'package:tstore/screens/Login_screen.dart';
import 'package:tstore/screens/onboarding.dart';

class SingupController extends GetxController {
  static SingupController get instance => Get.find();
  NetworkManger _networkManger = Get.put(NetworkManger());
  final devicestorage = GetStorage();

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phone_no = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController Email = TextEditingController();
  GlobalKey<FormState> signupformkey = GlobalKey<FormState>();

  Future<void> Singup() async {
    // Show loading dialog
    TopenLoader.LoadingDailogbox();

    // Check network connectivity
    final bool? isconnected = await _networkManger.isconnected();
    print(isconnected.toString() + '111111111');
    // If device is offline
    if (isconnected == false) {
      // Stop loading dialog
      TopenLoader.stopLoading();

      // Show network error dialog
      showDialog(
        context: Get.overlayContext!,
        builder: (_) => AlertDialog(
          title: Text('No Internet Connection'),
          content: Text('Please check your internet connection and try again.'),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: Text('OK'),
            ),
          ],
        ),
      );
      return; // Stop further execution
    }

    // Continue signup process...
  }
}
