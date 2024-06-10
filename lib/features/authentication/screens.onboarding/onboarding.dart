import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_ease/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:shop_ease/features/authentication/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shop_ease/features/authentication/screens.onboarding/widgets/onboarding_next.dart';
import 'package:shop_ease/features/authentication/screens.onboarding/widgets/onboarding_page.dart';
import 'package:shop_ease/features/authentication/screens.onboarding/widgets/onboardingskip.dart';
import 'package:shop_ease/utils/constants/image_strings.dart';
import 'package:shop_ease/utils/constants/sizes.dart';
import 'package:shop_ease/utils/constants/text_strings.dart';
import 'package:shop_ease/utils/device/device_utility.dart';
import 'package:shop_ease/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const[
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),

              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),

              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),

            ],
          ),

          //Skip button
          const OnBoardingSkip(),

          //Dot navigation SmoothPageIndicator

          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton(),

        ],
      ),
    );
  }
}









