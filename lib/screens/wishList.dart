import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/style/widgets/TGridLayout.dart';
import 'package:tstore/common/style/widgets/Tappbar.dart';
import 'package:tstore/common/style/widgets/product/product_card_vertical.dart';

class wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: TAppbar(
          title: Text(
            "Wishlist",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [Icon(Iconsax.add)],
          showbackground: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Column(children: [
          TGridlayout(
              itemcont: 6, itembuilder: (_, index) => productCardVertical())
        ])),
      ),
    );
  }
}
