import 'package:flutter/material.dart';

class GetThreeWidgetsWithRatio extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  final Widget widget3;
  final double firstRatio;
  final double secondRatio;
  final double thirdRatio;

  const GetThreeWidgetsWithRatio({
    Key? key,
    required this.widget1,
    required this.widget2,
    required this.widget3,
    required this.firstRatio,
    required this.secondRatio,
    required this.thirdRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalRatio = firstRatio + secondRatio + thirdRatio;
    return Row(
      children: [
        Expanded(
          flex: (firstRatio / totalRatio * 100).toInt(),
          child: widget1,
        ),
        Expanded(
          flex: (secondRatio / totalRatio * 100).toInt(),
          child: widget2,
        ),
        Expanded(
          flex: (thirdRatio / totalRatio * 100).toInt(),
          child: widget3,
        ),
      ],
    );
  }
}
