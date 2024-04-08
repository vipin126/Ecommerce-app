import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:tstore/common/style/widgets/TroundImages.dart';
import 'package:tstore/features/shop/controllers/Home_controller.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TPromocontroller extends StatelessWidget {
  const TPromocontroller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(homecontroller());
    return Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: CarouselSlider(
          items: [
            TroundImages(url: TImages.banner1),
            TroundImages(url: TImages.banner2),
            TroundImages(url: TImages.banner3),
          ],
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
        ));
  }
}
