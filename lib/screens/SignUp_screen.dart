import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:tstore/common/style/widgets/buttoms.dart';
import 'package:tstore/common/style/widgets/heading.dart';
import 'package:tstore/common/style/widgets/search_fied.dart';
import 'package:tstore/common/style/widgets/textField.dart';
import 'package:tstore/features/authentication/repository/singUPrepo.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_strings.dart';
import 'package:tstore/utils/validators/FormValidator.dart';

class SingUPscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Brightness systembrightness = MediaQuery.of(context).platformBrightness;
    final controller = Get.put(SingupController());
    var isCheckedRememberMe = true.obs;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: TColors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: controller.signupformkey,
            child: Column(
              children: [
                Text(
                  TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 150,
                      width: 150,
                      child: InputFields(
                          // key: controller.signupformkey,
                          InputFieldController: controller.firstname,
                          labelText: TTexts.firstName,
                          val: (val) => formValidator.EmpytFieldvedlidator(val),
                          prefix_icon: Icon(Icons.person)),
                    ),
                    Container(
                      // height: 150,
                      width: 150,
                      child: InputFields(
                        //  key: controller.signupformkey,
                        val: (val) => formValidator.EmpytFieldvedlidator(val),
                        InputFieldController: controller.lastname,
                        labelText: TTexts.lastName,
                        prefix_icon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                InputFields(
                    //key: controller.signupformkey,
                    InputFieldController: controller.username,
                    labelText: "Username",
                    val: (val) => formValidator.EmpytFieldvedlidator(val),
                    prefix_icon: Icon(Icons.person_2_sharp)),
                SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                InputFields(
                    //key: controller.signupformkey,
                    InputFieldController: controller.Email,
                    labelText: "E-Mail",
                    val: (val) => formValidator.EmpytFieldvedlidator(val),
                    prefix_icon: Icon(Icons.person_2_sharp)),
                SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                InputFields(
                    //key: controller.signupformkey,
                    InputFieldController: controller.phone_no,
                    labelText: "Phone Number",
                    val: (val) => formValidator.EmpytFieldvedlidator(val),
                    prefix_icon: Icon(Icons.phone)),
                SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                InputFields(
                    // key: controller.signupformkey,
                    InputFieldController: controller.password,
                    labelText: "Password",
                    val: (val) => formValidator.Passvalidator(val),
                    prefix_icon: Icon(Icons.password))
                //terms and condition text

                ,
                Row(
                  children: [
                    //check box button ;
                    Obx(() => Checkbox(
                        activeColor: Color(0xff00C8E8),
                        value: isCheckedRememberMe.value,
                        onChanged: (bool) {
                          isCheckedRememberMe.value =
                              !isCheckedRememberMe.value;
                        })),

                    /// i agree to privacy poliy and termo fuse

                    Row(
                      children: [
                        Text(
                          'I agree to ',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            " Privacy Poilicy ",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: TColors.primary),
                          ),
                        ),
                        Text('and '),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Term of use ",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: TColors.primary, fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //create account button

                Auths_buttoms(
                    TTexts.createAccount, false, () => controller.Singup()),
                SizedBox(
                  height: 20,
                ),
                //divider
                const Divider(
                  //height: 2,

                  key: Key("Sing In"),
                  color: TColors.darkGrey,
                ),
                // google and facebook signup options
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
      ),
    );
  }
}
