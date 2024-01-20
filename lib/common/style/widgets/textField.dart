import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/text_strings.dart';

class InputFields extends StatelessWidget {
  final InputFieldController;
  final String? labelText;
  Icon icon;
  InputFields(
      {this.InputFieldController, required this.labelText, required this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
        decoration: InputDecoration(
      border: Theme.of(context).inputDecorationTheme.border,
      focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
      enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
      errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
      focusedErrorBorder: Theme.of(context).inputDecorationTheme.focusedErrorBorder,
      focusColor: TColors.accent,
      labelText: labelText,
      labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
      prefixIcon: icon,
    ));
  }
}
