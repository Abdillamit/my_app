import 'package:finik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 109.0,
      height: 105.0,
      margin: const EdgeInsets.all(7.6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFF060606),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                ATexts.CardTitle1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.assessment_outlined,
                      color: Colors.white,
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
