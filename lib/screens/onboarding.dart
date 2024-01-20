import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tstore/features/authentication/controllers/on_boardingcontoller.dart';
import 'package:tstore/screens/Login_screen.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/helperfunctions.dart';
import 'package:tstore/utils/constants/image_strings.dart';
import 'package:tstore/utils/constants/text_strings.dart';

var boradingcontorller = Get.put(onboradingContorller());

class onboardingScreen extends StatefulWidget {
  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    // TODO: implement build
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: boradingcontorller.pageController,
          children: [
            boradingScreen(TImages.onBoardingImage1, TTexts.onBoardingTitle1,
                TTexts.onBoardingSubTitle1),
            boradingScreen(TImages.onBoardingImage2, TTexts.onBoardingTitle2,
                TTexts.onBoardingSubTitle2),
            boradingScreen(TImages.onBoardingImage3, TTexts.onBoardingTitle3,
                TTexts.onBoardingSubTitle3),
          ],
        ),
//skip button
        Positioned(
            top: 28,
            right: 10,
            child: TextButton(
                onPressed: () => boradingcontorller.onSkip(),
                child: Text(
                  TTexts.skip,
                  style: TextStyle(color: dark ? TColors.dark : TColors.light),
                ))),

        //smooth Page indicator (dot navigator)
        Positioned(
            bottom: 30,
            left: 10,
            child: SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                    activeDotColor: dark ? TColors.dark : TColors.light,
                    dotWidth: 8,
                    dotHeight: 6),
                controller: boradingcontorller.pageController,
                onDotClicked: boradingcontorller.dotNavigatorClick,
                count: 3)),
        //skip arrow butoom
        onboardingCirluarbutton(),
      ]),
    );
  }
}

class boradingScreen extends StatelessWidget {
  final String image;
  final String Title;
  final String sutile;

  boradingScreen(
    this.image,
    this.Title,
    this.sutile,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
          ),
          Text(
            Title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            sutile,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class onboardingCirluarbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    bool dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: 30,
        right: 10,
        child: ElevatedButton(
            onPressed: () => boradingcontorller.nexpage(),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    dark ? TColors.primary : TColors.black),
                shape: const MaterialStatePropertyAll(CircleBorder())),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
