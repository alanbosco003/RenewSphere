import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/common/get_two_widgets_colum_wise_with_ratio.dart';
import 'package:graphics/widgets/common/get_two_widgets_with_ratio.dart';

class CustomerPersonalDetails extends StatelessWidget {
  const CustomerPersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(37)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: UiSizeUtils.getHeightSize(18),
          ),
          GetTwoWidgetsWithRatio(
            widget1: GetTwoColumeWidgets(
              widget1: Text(
                "First Name",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "Babu",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            widget2: GetTwoColumeWidgets(
              widget1: Text(
                "Last Name",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "S",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            ratio: 0.6,
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(18),
          ),
          GetTwoWidgetsWithRatio(
            widget1: GetTwoColumeWidgets(
              widget1: Text(
                "Date of Birth",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "05/06/1995",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            widget2: GetTwoColumeWidgets(
              widget1: Text(
                "Gender",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "Male",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            ratio: 0.6,
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(18),
          ),
          GetTwoWidgetsWithRatio(
            widget1: GetTwoColumeWidgets(
              widget1: Text(
                "Profession",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "Private Service",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            widget2: GetTwoColumeWidgets(
              widget1: Text(
                "Contact Number",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "9769002620",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            ratio: 0.6,
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(18),
          ),
          GetTwoWidgetsWithRatio(
            widget1: GetTwoColumeWidgets(
              widget1: Text(
                "Email Address",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "abhishek.singh@iiml.org",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            widget2: Container(),
            ratio: 0.5,
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(12),
          ),
          const Divider(
            thickness: 1,
            color: GraphicsColorConsts.lightGreyForTab,
          ),
        ],
      ),
    );
  }
}
