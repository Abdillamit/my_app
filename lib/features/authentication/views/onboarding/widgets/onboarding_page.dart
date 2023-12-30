import 'package:finik/utils/constants/sizes.dart';
import 'package:finik/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBordingPage extends StatelessWidget {
  const OnBordingPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.gradient,
  }) : super(key: key);

  final String image, title, subTitle;
  final LinearGradient gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ASizes.defaultSpace),
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: Column(
        children: [
          Image(
            width: AHelperFunctions.screenHeight() * 0.7,
            height: AHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}
