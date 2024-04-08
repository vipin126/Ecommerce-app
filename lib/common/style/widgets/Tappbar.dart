import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';

class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  TAppbar(
      {super.key,
      required this.title,
      this.leadingicon,
      required this.actions,
      required this.showbackground,
      this.backgroundcolor});

  final Widget title;
  final Widget? leadingicon;
  VoidCallback? callback;
  final List<Widget> actions;
  final bool showbackground;
  final Color? backgroundcolor;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leadingicon,
      actions: actions,
      title: title,
      backgroundColor: backgroundcolor,
    );
    // TODO: implement build
  }
}
