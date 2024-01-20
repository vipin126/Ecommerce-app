import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/theme/customs_thems/appbar_theme.dart';
import 'package:tstore/utils/theme/customs_thems/elevated_button_theme.dart';
import 'package:tstore/utils/theme/customs_thems/text_field_theme.dart';

import 'package:tstore/utils/theme/customs_thems/text_theme.dart';

class TAppTheme {
  TAppTheme._(); //private constructors(jis class me sare function static ho or uska ko instance na banna ho)
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: TColors.light,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
   inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: TColors.dark,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
