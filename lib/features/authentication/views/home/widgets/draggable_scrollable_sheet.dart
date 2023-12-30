import 'package:finik/features/authentication/views/home/widgets/card.dart';
import 'package:finik/ui/input.dart';
import 'package:finik/utils/constants/sizes.dart';
import 'package:finik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class DraggableScrollableSheetPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const DraggableScrollableSheetPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.09,
      maxChildSize: 0.7,
      initialChildSize: 0.5,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 22, 22, 22),
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .9,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: const Column(
                      children: [
                        SizedBox(height: 50),
                        Input(),
                        SizedBox(height: ASizes.cardRadiusMd),
                        Text(ATexts.title1),
                        SizedBox(height: ASizes.cardRadiusLg),
                        Row(
                          children: [
                            MyCard(),
                            MyCard(),
                            MyCard(),
                          ],
                        ),
                        SizedBox(height: ASizes.cardRadiusMd),
                        Text(ATexts.title2),
                        SizedBox(height: ASizes.cardRadiusLg),
                        Row(
                          children: [
                            MyCard(),
                            MyCard(),
                            MyCard(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              IgnorePointer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      height: 7,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
