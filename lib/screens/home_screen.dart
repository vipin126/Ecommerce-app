import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/custome_clippers.dart';
import 'package:tstore/common/style/ttop_curve.dart';
import 'package:tstore/common/style/widgets/TGridLayout.dart';
import 'package:tstore/common/style/widgets/Tappbar.dart';
import 'package:tstore/common/style/widgets/Tpromo.dart';
import 'package:tstore/common/style/widgets/TroundImages.dart';
import 'package:tstore/common/style/widgets/custom_shape/cirular_shape.dart';
import 'package:tstore/common/style/widgets/product/product_card_vertical.dart';
import 'package:tstore/common/style/widgets/search_fied.dart';
import 'package:tstore/features/shop/controllers/Home_controller.dart';
//import 'package:tstore/screens/test.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_strings.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    //bool dark = THelperFunctions.isDarkMode(context);
    Brightness systemBrightness = MediaQuery.of(context).platformBrightness;

    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Ttop_curve(
              systemBrightness: systemBrightness,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TAppbar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TTexts.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.merge(const TextStyle(color: Colors.white)),
                        ),
                        Text(TTexts.homeAppbarSubTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.merge(const TextStyle(color: Colors.white))),
                      ],
                    ),
                    actions: const [
                      Icon(
                        Iconsax.shopping_bag,
                        color: Colors.white,
                      )
                    ],
                    showbackground: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwInputFields,
                  ),

                  //search button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      child: Searchfield(
                          icon: Icon(
                            Icons.search,
                            color: TColors.darkGrey,
                          ),
                          text: 'Search for products'),
                    ),
                  ),
                  // popular catogory page
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(TTexts.popularProducts,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),

                  //popular catogary circular avatar
                  Container(
                    height: 80,
                    // color: Colors.amber,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage(TImages.shoeIcon),
                                    color: systemBrightness == Brightness.dark
                                        ? TColors.light
                                        : TColors.dark,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(600),
                                    color: systemBrightness == Brightness.dark
                                        ? TColors.dark
                                        : TColors.white),
                              ),
                              Text(
                                "Style",
                                maxLines: 1,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                                style: Theme.of(context).textTheme.labelLarge,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: TSizes.defaultSpace,
                  ),
                ],
              ),
            ),

            // carousel slider
            TPromocontroller(),
            promoController(),
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

class promoController extends StatelessWidget {
  const promoController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contoller = Get.put(homecontroller());
    return Center(
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Tcircular(
                  width: 30,
                  height: 2.6,
                  margin: EdgeInsets.only(right: 8),
                  color: contoller.carousalcurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                )
            ],
          )),
    );
  }
}
