import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class brandcontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: systembrightness == Brightness.dark
                  ? TColors.white
                  : TColors.grey),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(children: [
        Flexible(
          child: Image(
            image: AssetImage(TImages.nikeLogo),
            color: systembrightness == Brightness.dark
                ? TColors.light
                : TColors.dark,
            height: 50,
            width: 50,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Nike",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: TSizes.defaultSpace,
                  ),
                  Icon(
                    Iconsax.tick_circle5,
                    size: 10,
                    color: TColors.primary,
                  )
                ],
              ),
              Text(
                "256 Product shoes",
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            


            ],
          ),
        ),
        //256 product
      ]),
    );
  }
}
