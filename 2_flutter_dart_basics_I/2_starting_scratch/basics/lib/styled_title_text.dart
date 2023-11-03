import 'package:flutter/material.dart';

class StyleTitleText extends StatelessWidget {
  final String text;

  //const StyleTitleText(String text, {super.key}) : outputText = text;
  // we can replace the constructo above for adding this.text
  const StyleTitleText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      //'Hello World',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
