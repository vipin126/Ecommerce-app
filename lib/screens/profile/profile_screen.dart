import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/style/widgets/TTabAppbar.dart';
import 'package:tstore/common/style/widgets/Tappbar.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: TAppbar(
          title: Text(
            "Change Name ",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          leadingicon: Icon(
            Icons.arrow_back,
            color: systembrightness == Brightness.dark
                ? TColors.white
                : TColors.black,
          ),
          actions: [],
          showbackground: true),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Expanded(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        TImages.user,
                      ),
                      radius: 44,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Text(
                      "Change Profile Name",
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: TSizes.spaceBtwItems,
            ),

//divider

            Divider(
              thickness: 0.3,
              indent: 22,
              endIndent: 22,
              color: TColors.darkGrey,
            ),

            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
//profile info
            Text(
              "Profile Information ",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            profile_fields(
              text1: "Name",
              text2: "Rohit",
            ),
            profile_fields(
              text1: "Username",
              text2: "Rohit_sharma",
            ),
            Divider(
              thickness: 0.3,
              indent: 22,
              endIndent: 22,
              color: TColors.darkGrey,
            ),
//personal information
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              "Personal Information ",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            profile_fields(
              text1: "User ID",
              text2: "9894",
              icon: Icon(Iconsax.copy),
            ),
            profile_fields(
              text1: "Phone Number",
              text2: "+91-8130847432",
            ),
            profile_fields(
              text1: "DOB",
              text2: "12-06-2003",
            ),
            profile_fields(
              text1: "Gender",
              text2: "Male",
            ),
            Divider(
              thickness: 0.3,
              indent: 22,
              endIndent: 22,
              color: TColors.darkGrey,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Close Account",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class profile_fields extends StatelessWidget {
  profile_fields(
      {super.key,
      required this.text1,
      required this.text2,
      this.icon = const Icon(
        Icons.arrow_forward_ios_outlined,
        color: TColors.darkGrey,
      )});
  final String text1;
  final String text2;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            text1,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text2,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              IconButton(onPressed: () {}, icon: icon)
            ],
          ),
        )
      ],
    );
  }
}
