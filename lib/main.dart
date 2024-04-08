import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tstore/features/authentication/repository/singUPrepo.dart';
import 'package:tstore/screens/Login_screen.dart';
import 'package:tstore/screens/home_screen.dart';
import 'package:tstore/screens/onboarding.dart';
import 'package:tstore/screens/productDetail.dart';
import 'package:tstore/screens/profile/profile_screen.dart';
import 'package:tstore/screens/setting_page.dart';
import 'package:tstore/screens/store_screen.dart';

import 'package:tstore/screens/wishList.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  //ensure binding
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //initalize local storage
  await GetStorage.init();
  //await native splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(authincationRepo()));

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner:
          false, //this will get the info of system wheter its on light theme or dark
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: Scaffold(
          backgroundColor: TColors.primary,
          body: Center(
            child: CircularProgressIndicator(),
          )),
    );
  }
}
