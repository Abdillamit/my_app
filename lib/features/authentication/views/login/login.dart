import 'package:finik/utils/constants/image_strings.dart';
import 'package:finik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(AImages.logo),
                  ),
                ),
                const Text(ATexts.initalTitle),
                const Text(ATexts.initalSubTitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
