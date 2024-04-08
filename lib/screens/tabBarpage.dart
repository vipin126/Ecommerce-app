import 'package:flutter/material.dart';
import 'package:tstore/common/style/widgets/TBrand_showcase.dart';
import 'package:tstore/common/style/widgets/TGridLayout.dart';
import 'package:tstore/common/style/widgets/heading.dart';
import 'package:tstore/common/style/widgets/product/product_card_vertical.dart';
import 'package:tstore/utils/constants/sizes.dart';

class tabbar_page extends StatelessWidget {
  const tabbar_page({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Tbrandshowcase(),
            SizedBox(
              height: TSizes.defaultSpace,
            ),
            heading(text1: "You Might like"),
            SizedBox(
              height: TSizes.defaultSpace,
            ),
            TGridlayout(
                itemcont: 6, itembuilder: (_, index) => productCardVertical())
          ],
        ),
      ),
    );
  }
}
