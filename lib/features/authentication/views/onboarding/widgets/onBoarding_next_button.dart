import 'package:finik/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:finik/utils/constants/sizes.dart';
import 'package:finik/utils/constants/text_strings.dart';
// import 'package:finik/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = AHelperFunctions.isDarkMode(context);
    return Positioned(
      right: ASizes.defaultSpace,
      bottom: ASizes.appBarHeght,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: const Text(
          ATexts.onBoardingButtonTitle,
        ),
      ),
    );
  }
}
