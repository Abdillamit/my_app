import 'package:finik/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:finik/features/authentication/views/onboarding/widgets/onBoarding_next_button.dart';
import 'package:finik/features/authentication/views/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:finik/features/authentication/views/onboarding/widgets/onboarding_page.dart';
import 'package:finik/utils/constants/image_strings.dart';
import 'package:finik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBordingPage(
                image: AImages.onBoardingImage1,
                title: ATexts.onBoardingTitle1,
                subTitle: ATexts.onBoardingSubTitle1,
                gradient: LinearGradient(
                  colors: [Color(0xFF709F0B), Color(0xFF26FFF2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              OnBordingPage(
                image: AImages.onBoardingImage2,
                title: ATexts.onBoardingTitle2,
                subTitle: ATexts.onBoardingSubTitle2,
                gradient: LinearGradient(
                  colors: [Color(0xFF2663FF), Color(0xFF26FFF2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              OnBordingPage(
                image: AImages.onBoardingImage3,
                title: ATexts.onBoardingTitle3,
                subTitle: ATexts.onBoardingSubTitle3,
                gradient: LinearGradient(
                  colors: [Color(0xFF709F0B), Color(0xFFFF7246)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ), 
              ),
              OnBordingPage(
                image: AImages.onBoardingImage4,
                title: ATexts.onBoardingTitle4,
                subTitle: ATexts.onBoardingSubTitle4,
                gradient: LinearGradient(
                  colors: [Color(0xFFFF5959), Color(0xFFEC74FF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              OnBordingPage(
                image: AImages.onBoardingImage5,
                title: ATexts.onBoardingTitle5,
                subTitle: ATexts.onBoardingSubTitle5,
                gradient: LinearGradient(
                  colors: [Color(0xFFFFC046), Color(0xFFFF5959)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            right: 20,
            child: IconButton(
              onPressed: () {
                OnBoardingController.instance.skipPage(context);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          const OnBoardingNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
