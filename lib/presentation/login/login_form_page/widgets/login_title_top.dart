import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class LogInTitle extends StatelessWidget {
  const LogInTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(25)),
        child: const Text(GraphicsStringConsts.logIn,
            style: GraphicsTextStylesConst.textStyleBlack_12_700),
      ),
    );
  }
}
