import 'package:flutter/material.dart';

class GetTwoWidgetsWithRatio extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  final double ratio;

  const GetTwoWidgetsWithRatio(
      {super.key,
      required this.widget1,
      required this.widget2,
      required this.ratio});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: (ratio * 100).toInt(),
          child: widget1,
        ),
        Expanded(
          flex: ((1 - ratio) * 100).toInt(),
          child: widget2,
        ),
      ],
    );
  }
}
