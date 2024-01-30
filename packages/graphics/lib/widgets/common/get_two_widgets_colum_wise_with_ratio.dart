import 'package:flutter/material.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class GetTwoColumeWidgets extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  final double? spaceBetween;

  const GetTwoColumeWidgets(
      {super.key,
      required this.widget1,
      required this.widget2,
      this.spaceBetween});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget1,
        SizedBox(
          height: UiSizeUtils.getHeightSize(spaceBetween ?? 5),
        ),
        widget2,
      ],
    );
  }
}
