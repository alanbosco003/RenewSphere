import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';

class GoldLoanSubtitleText extends StatelessWidget {
  const GoldLoanSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(10)),
      child: Center(
        child: Text(
          GraphicsStringConsts.platforForLendingMoney,
          style: GraphicsTextStylesConst.textStyleBlack_12_400,
        ),
      ),
    );
  }
}
