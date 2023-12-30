import 'package:finik/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: ATexts.inputTitle1,
        border: OutlineInputBorder(),
      ),
    );
  }
}
