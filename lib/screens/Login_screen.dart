import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/style/widgets/buttoms.dart';
import 'package:tstore/common/style/widgets/textField.dart';
import 'package:tstore/screens/SignUp_screen.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_strings.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailTextController;
    var passController;
    var isCheckedRememberMe = true.obs;
    // TODO: implement build
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //logo of app
              Padding(
                  padding: const EdgeInsets.only(top: 25, left: 2),
                  child: Image(
                      height: MediaQuery.of(context).size.height * 0.2,
                      image: AssetImage(systembrightness == Brightness.dark
                          ? TImages.lightAppLogo
                          : TImages.darkAppLogo))),

              //Welcome Text
              const SizedBox(
                height: 15,
              ),
              Text(
                TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              //
              Text(
                TTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                  child: Column(
                children: [
                  InputFields(labelText: TTexts.email, icon: Icon(Icons.email)),
                  SizedBox(
                    height: 20,
                  ),
                  InputFields(
                    labelText: TTexts.password,
                    icon: Icon(Iconsax.password_check),
                  ),
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          activeColor: Color(0xff00C8E8),
                          value: isCheckedRememberMe.value,
                          onChanged: (bool) {
                            isCheckedRememberMe.value =
                                !isCheckedRememberMe.value;
                          })),
                      const SizedBox(width: 4),
                      Text(TTexts.rememberMe,
                          style: Theme.of(context).textTheme.labelLarge),

                      const SizedBox(width: 30),

                      //Forget Me buttom
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            TTexts.forgetPassword,
                            style: Theme.of(context).textTheme.labelLarge,
                          ))
                    ],
//sigIn buttom
                  ),
                  Auths_buttoms(TTexts.signIn, false, () {}),
                  SizedBox(
                    height: 20,
                  ),
                  Auths_buttoms(TTexts.createAccount, true, () {
                    Get.to(SingUPscreen());
                  })
                ],
              )),
              SizedBox(
                height: 20,
              ),
              const Divider(
                key: Key("Sing In"),
                color: TColors.grey,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(TImages.facebook),
                      backgroundColor: systembrightness == Brightness.dark
                          ? TColors.dark
                          : TColors.white,
                    ),
                  ),
                  SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  GestureDetector(
                      child: CircleAvatar(
                    backgroundImage: AssetImage(TImages.google),
                    backgroundColor: systembrightness == Brightness.dark
                        ? TColors.dark
                        : TColors.white,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
