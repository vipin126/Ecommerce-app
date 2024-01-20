import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/screens/Login_screen.dart';
import 'package:tstore/screens/home_screen.dart';
import 'package:tstore/screens/onboarding.dart';
import 'package:tstore/screens/test.dart';
import 'package:tstore/utils/theme/theme.dart';

void main() {
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
      home: onboardingScreen(),
    );
  }
}
