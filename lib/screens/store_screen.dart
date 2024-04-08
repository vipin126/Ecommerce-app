import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/style/widgets/TBrand_showcase.dart';
import 'package:tstore/common/style/widgets/TGridLayout.dart';
import 'package:tstore/common/style/widgets/TTabAppbar.dart';
import 'package:tstore/common/style/widgets/Tappbar.dart';
import 'package:tstore/common/style/widgets/Troundcontainer.dart';
import 'package:tstore/common/style/widgets/brand_container.dart';
import 'package:tstore/common/style/widgets/heading.dart';
import 'package:tstore/common/style/widgets/product/product_card_vertical.dart';
import 'package:tstore/common/style/widgets/textField.dart';
import 'package:tstore/screens/tabBarpage.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_strings.dart';

class store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppbar(
            title: Text(
              "Store",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: const [
              Icon(
                Iconsax.shopping_bag,
                color: Colors.white,
              )
            ],
            showbackground: false),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 400.0,
                floating: true,
                pinned: true,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: systembrightness == Brightness.dark
                    ? TColors.dark
                    : const Color.fromRGBO(255, 255, 255, 1),
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      InputFields(labelText: "Store", icon: Icon(Icons.search)),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured brand",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            "View all",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      TGridlayout(
                        itemcont: 4,
                        itembuilder: (_, index) => brandcontainer(),
                        mainaxisExtent: 80,
                      )
                    ],
                  ),
                ),
                bottom: TTabappbar(),
              ),
            ];
          },
          body: TabBarView(
            children: [
              tabbar_page(),
              tabbar_page(),
              tabbar_page(),
              tabbar_page(),
              tabbar_page(),
              tabbar_page(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
