import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';

class TTabappbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Brightness systemBrightness = MediaQuery.of(context).platformBrightness;
    return Material(
      color: systemBrightness == Brightness.dark ? TColors.dark : TColors.white,
      child: TabBar(
        
        physics: NeverScrollableScrollPhysics(),
        labelStyle: Theme.of(context).textTheme.labelLarge,
        isScrollable: true,
        indicatorColor: TColors.primary,
        dividerColor: TColors.darkGrey,
        tabs: [
          Tab(
            child: Text("Sports"),
          ),
          Tab(
            child: Text("Furniture"),
          ),
          Tab(
            child: Text("Electronic"),
          ),
          Tab(
            child: Text("clothes"),
          ),
          Tab(
            child: Text("Atheletic"),
          ),
          Tab(
            child: Text("Games"),
          ),
        ],
      ),
    );
  }
}
