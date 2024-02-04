import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class LogoSubtitleText extends StatelessWidget {
  const LogoSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(0)),
      child: Center(
        child: Text(
          GraphicsStringConsts.platforForGoGreen,
          style: GraphicsTextStylesConst.textStyleBlack_12_400,
        ),
      ),
    );
  }
}
