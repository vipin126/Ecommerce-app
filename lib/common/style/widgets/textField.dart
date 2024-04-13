import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:http/http.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/repository/singUPrepo.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/text_strings.dart';

class InputFields extends StatelessWidget {
  final InputFieldController;
  final String? labelText;
  Icon prefix_icon;
  Icon? suffix_icon;
  bool? suffix;
  String? Function(String?)? val;
  final bool isobsecure;
  InputFields(
      {super.key,
      this.InputFieldController,
      required this.labelText,
      this.suffix_icon,
      required this.prefix_icon,
      this.isobsecure = false,
      this.val});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // final contorller = Get.put(SingupController());
    return TextFormField(
        //key: key,
        validator: val,
        obscureText: isobsecure,
        decoration: InputDecoration(
          border: Theme.of(context).inputDecorationTheme.border,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
          focusedErrorBorder:
              Theme.of(context).inputDecorationTheme.focusedErrorBorder,
          focusColor: TColors.accent,
          labelText: labelText,
          suffixIcon: suffix_icon,
          labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
          prefixIcon: prefix_icon,
        ));
  }
}
