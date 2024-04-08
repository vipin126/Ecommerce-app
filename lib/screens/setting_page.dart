import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/style/ttop_curve.dart';
import 'package:tstore/common/style/widgets/Tappbar.dart';
import 'package:tstore/common/style/widgets/custom_shape/cirular_shape.dart';
import 'package:tstore/common/style/widgets/heading.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Brightness systemBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Ttop_curve(
              systemBrightness: systemBrightness,
              child: Column(
                children: [
                  //account appbar
                  TAppbar(
                      title: Text(
                        "Account",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      actions: [],
                      showbackground: true),

                  //profile tile

                  List_tile(
                    title: Text(
                      "vipin",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    subtitle: Text(
                      "chandvipin68@",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    trailing: Icon(
                      Iconsax.edit,
                      color: TColors.white,
                    ),
                    leading:
                        CircleAvatar(backgroundImage: AssetImage(TImages.user)),
                  ),
                  SizedBox(
                    height: TSizes.defaultSpace,
                  )
                ],
              ),
            ),
//now setting part
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Account Settings",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  setting_tile(
                    title: "Address",
                    subtile: "Set Your Address",
                    iconData: Iconsax.home,
                  ),
                  setting_tile(
                    title: "Payment",
                    subtile: "Set Your Address",
                    iconData: Iconsax.wallet,
                  ),
                  setting_tile(
                    title: "Account Security",
                    subtile: "E-wallet ,Credit card & Registered number",
                    iconData: Iconsax.security,
                  ),
                  setting_tile(
                    title: "Bank Account",
                    subtile: "Withdraw Balance to register bank account",
                    iconData: Iconsax.bank,
                  ),
                  setting_tile(
                    title: "Notifications",
                    subtile: "Set Your Address",
                    iconData: Iconsax.notification,
                  ),
                  setting_tile(
                    title: "Account Privacy",
                    subtile: "Set Your Address",
                    iconData: Iconsax.profile_circle,
                  ),

                  //app settings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "App Settings",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),

                  setting_tile(
                    title: "Location",
                    subtile: "Set Your Address",
                    iconData: Iconsax.location,
                    trailing: Switch(
                        value: true,
                        onChanged: (value) {
                          value = !value;
                        }),
                  ),

             OutlinedButton(onPressed: (){}, child: Text("Lo"))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class setting_tile extends StatelessWidget {
  const setting_tile({
    super.key,
    required this.title,
    required this.subtile,
    required this.iconData,
    this.trailing,
  });
  final String title;
  final String subtile;
  final IconData iconData;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return List_tile(
      leading: Icon(
        iconData,
        color: TColors.primary,
        size: 30,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(
        subtile,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: trailing,
    );
  }
}

class List_tile extends StatelessWidget {
  const List_tile(
      {super.key,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.leading});

  final Widget title;
  final Widget subtitle;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
