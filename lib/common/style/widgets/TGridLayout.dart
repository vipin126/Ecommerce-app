import 'package:flutter/material.dart';
import 'package:tstore/common/style/widgets/product/product_card_vertical.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TGridlayout extends StatelessWidget {
  TGridlayout(
      {required this.itemcont,
      required this.itembuilder,
      this.mainaxisExtent = 290});

  final int itemcont;
  final Widget? Function(BuildContext, int) itembuilder;
  final double? mainaxisExtent;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: mainaxisExtent),
      itemBuilder: itembuilder,
      itemCount: itemcont,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
    );
  }
}
