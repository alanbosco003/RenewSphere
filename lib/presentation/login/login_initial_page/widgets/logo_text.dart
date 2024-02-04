import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class LogoTitleText extends StatelessWidget {
  const LogoTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(40)),
      child: Center(
        child: RichText(
          text: TextSpan(
            style: GraphicsTextStylesConst.textStyleGold_20_700,
            children: [
              TextSpan(
                  text: GraphicsStringConsts.renew,
                  style: GraphicsTextStylesConst.textStyleGold_20_700),
              TextSpan(
                  text: GraphicsStringConsts.sphere,
                  style: GraphicsTextStylesConst.textStyleBlack_20_700),
            ],
          ),
        ),
      ),
    );
  }
}
