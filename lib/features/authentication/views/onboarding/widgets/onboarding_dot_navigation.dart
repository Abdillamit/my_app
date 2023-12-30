import 'package:flutter/material.dart';
import 'package:finik/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:finik/utils/constants/colors.dart';
import 'package:finik/utils/constants/sizes.dart';
import 'package:finik/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = AHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: ASizes.appBarHeght,
        left: ASizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 5,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? AColors.black : AColors.light,
              dotHeight: 6),
        ));
  }
}
