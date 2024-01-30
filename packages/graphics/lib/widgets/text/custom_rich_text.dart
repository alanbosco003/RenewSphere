import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final List<TextSpan> textSpans;

  const CustomRichText({super.key, required this.textSpans});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: textSpans),
    );
  }
}
