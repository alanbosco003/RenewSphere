import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/common/get_two_widgets_with_ratio.dart';

class CustomerPageRedirections extends StatelessWidget {
  const CustomerPageRedirections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(37)),
      child: Column(
        children: [
          SizedBox(
            height: UiSizeUtils.getHeightSize(8),
          ),
          const Divider(
            thickness: 1,
            color: GraphicsColorConsts.lightGreyForTab,
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(8),
          ),
          const GetTwoWidgetsWithRatio(
              widget1: Text(
                "Related Collaterals",
                style: GraphicsTextStylesConst.textStyleBlack_12_700,
              ),
              widget2: Icon(
                Icons.arrow_circle_right_outlined,
                color: GraphicsColorConsts.oranch,
              ),
              ratio: 0.95),
          const Divider(
            thickness: 1,
            color: GraphicsColorConsts.lightGreyForTab,
          ),
          const GetTwoWidgetsWithRatio(
              widget1: Text(
                "Related Loans",
                style: GraphicsTextStylesConst.textStyleBlack_12_700,
              ),
              widget2: Icon(
                Icons.arrow_circle_right_outlined,
                color: GraphicsColorConsts.oranch,
              ),
              ratio: 0.95),
          const Divider(
            thickness: 1,
            color: GraphicsColorConsts.lightGreyForTab,
          ),
          const GetTwoWidgetsWithRatio(
              widget1: Text(
                "Related KYCs",
                style: GraphicsTextStylesConst.textStyleBlack_12_700,
              ),
              widget2: Icon(
                Icons.arrow_circle_right_outlined,
                color: GraphicsColorConsts.oranch,
              ),
              ratio: 0.95),
          SizedBox(
            height: UiSizeUtils.getHeightSize(18),
          )
        ],
      ),
    );
  }
}
