// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/custome_clippers.dart';
import 'package:tstore/common/style/ttop_curve.dart';
import 'package:tstore/common/style/widgets/TTabAppbar.dart';
import 'package:tstore/common/style/widgets/Tappbar.dart';
import 'package:tstore/common/style/widgets/Troundcontainer.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';

class productDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: TAppbar(
        leadingicon: Icon(
          Icons.arrow_back,
          color: systembrightness == Brightness.dark
              ? TColors.white
              : TColors.black,
        ),
        title: Text(""),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Iconsax.heart5,
              color: systembrightness == Brightness.dark
                  ? TColors.white
                  : TColors.black,
            ),
          )
        ],
        showbackground: true,
        backgroundcolor: systembrightness == Brightness.dark
            ? TColors.darkerGrey
            : TColors.grey,
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: customcPath(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Stack(children: [
                Image(image: AssetImage(TImages.productImage10)),
                Positioned(
                  right: 0,
                  left: 10,
                  bottom: 30,
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (_, index) => morescroll_image(
                              systembrightness: systembrightness,
                              image: TImages.productImage10,
                            ),
                        // physics: AlwaysScrollableScrollPhysics(),
                        // scrollDirection: Axis.horizontal,
                        //shrinkWrap: true,

                        itemCount: 6),
                  ),
                )
              ]),
              color: systembrightness == Brightness.dark
                  ? TColors.darkerGrey
                  : TColors.grey,
            ),

            //more product images
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_sharp,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "5.0 (199)",
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),

                //share icon buttomn
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: systembrightness == Brightness.dark
                        ? TColors.white
                        : TColors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class morescroll_image extends StatelessWidget {
  const morescroll_image(
      {super.key,
      required this.systembrightness,
      required this.image,
      this.enable = false});

  final Brightness systembrightness;
  final String image;
  final bool enable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Troundcontainer(
        enable: enable,
        child: Image(image: AssetImage(image)),
        width: 100,
        height: 100,
        color:
            systembrightness == Brightness.dark ? TColors.black : TColors.white,
      ),
    );
  }
}
