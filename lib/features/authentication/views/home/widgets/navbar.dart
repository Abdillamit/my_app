import 'dart:ui';

import 'package:finik/features/authentication/views/login/login.dart';
import 'package:finik/ui/button.dart';
import 'package:finik/utils/constants/colors.dart';
import 'package:finik/utils/constants/image_strings.dart';
import 'package:finik/utils/constants/sizes.dart';
import 'package:finik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0 * kToolbarHeight, 0, 0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0 * kToolbarHeight, 50, 0),
              child: Align(
                alignment: const AlignmentDirectional(-50, 1),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF72CC00)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0 * kToolbarHeight, 0, 0),
              child: Align(
                alignment: const AlignmentDirectional(-10, 1.8),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF26FFF2)),
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding:
                    const EdgeInsets.fromLTRB(16, 1 * kToolbarHeight, 16, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(AImages.logo),
                        ),
                        const SizedBox(width: ASizes.borderRadiusMd),
                        const Text(
                          ATexts.AppBarTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 20.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: ASizes.spaceBtwSections),
                    const SizedBox(
                      width: 201.0,
                      child: Text(
                        ATexts.siginTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 40.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: ASizes.spaceBtwItems),
                    const Text(
                      ATexts.siginSubTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 14.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        height: 1.0,
                      ),
                    ),
                    const SizedBox(height: ASizes.spaceBtwItems),
                    Button(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));
                      },
                      backgroundColor: const Color(
                        0xFFACF709,
                      ),
                      text: ATexts.loginButtonTitle1,
                      colorText: AColors.black,
                    ),
                    const SizedBox(height: ASizes.spaceBtwItems),
                    const Button(
                      backgroundColor: Color(
                        0xFF222222,
                      ),
                      text: ATexts.loginButtonTitle1,
                      colorText: AColors.buttonPrimary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
