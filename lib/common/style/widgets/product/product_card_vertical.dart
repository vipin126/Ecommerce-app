import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/style/widgets/TroundImages.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_strings.dart';

class productCardVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    // TODO: implement build
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 150,
        height: 265,
        decoration: BoxDecoration(
            color: systembrightness == Brightness.dark
                ? TColors.dark
                : TColors.light,
            boxShadow: [
              BoxShadow(
                  color: systembrightness == Brightness.dark
                      ? TColors.darkerGrey
                      : Color.fromARGB(255, 203, 201, 201),
                  spreadRadius: 0.5,
                  blurRadius: 4)
            ],
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Stack(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: TroundImages(
                    borderradius: 9,
                    url: TImages.productImage1,
                    backgroundcolor: systembrightness == Brightness.dark
                        ? TColors.darkerGrey
                        : TColors.lightGrey,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 5,
                child: Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  child: Center(child: Text('25%')),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 5,
                  child: Icon(
                    Iconsax.heart5,
                    color: Colors.red,
                  ))
            ]),
      //details
            Text(
              "Green Nike sports shoe",
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.clip,
            ),
            Row(
              children: [
                Text(
                  "Nike",
                  style: Theme.of(context).textTheme.bodySmall,
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$40",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      color: TColors.primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
