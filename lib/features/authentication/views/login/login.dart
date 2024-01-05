import 'package:finik/features/authentication/views/home/home.dart';
import 'package:finik/ui/input.dart';
import 'package:finik/utils/constants/image_strings.dart';
import 'package:finik/utils/constants/sizes.dart';
import 'package:finik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context, const HomePage());
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.fromLTRB(50, 0 * kToolbarHeight, 50, 20),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset(AImages.logo),
                          ),
                          const Text(
                            ATexts.initalTitle,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Neue Machina',
                              fontSize: 32.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              height: 1.0,
                            ),
                          ),
                          const SizedBox(height: ASizes.sm),
                          const Align(
                            child: Text(
                              ATexts.initalSubTitle,
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.50),
                                fontFamily: 'Inter',
                                fontSize: 14.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                        16, 0 * kToolbarHeight, 16, 0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          ATexts.requirementsTitle1,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Input(
                          labelText: ATexts.emailText,
                          prefixIcon: Icons.email,
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: const Size(350, 0),
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color(0xFFACF709),
                  ),
                  child: const Text(
                    ATexts.buttonTitle1,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
