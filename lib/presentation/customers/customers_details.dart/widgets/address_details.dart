import 'package:base_flutter/infrastructure/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/buttons/edit_button.dart';
import 'package:graphics/widgets/common/get_two_widgets_colum_wise_with_ratio.dart';
import 'package:graphics/widgets/common/get_two_widgets_with_ratio.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(37)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: UiSizeUtils.getHeightSize(12),
          ),
          GetTwoColumeWidgets(
            widget1: Text(
              "Permanent City",
              style: GraphicsTextStylesConst.textStyleBlack_9_600,
            ),
            widget2: Text(
              "Bengaluru",
              style: GraphicsTextStylesConst.textStyleBlack_12_400,
            ),
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(12),
          ),
          GetTwoColumeWidgets(
            widget1: Text(
              "Permanent Address Line 1",
              style: GraphicsTextStylesConst.textStyleBlack_9_600,
            ),
            widget2: Text(
              "197/1 prakash Reddy building LN temple road",
              style: GraphicsTextStylesConst.textStyleBlack_12_400,
            ),
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(12),
          ),
          GetTwoColumeWidgets(
            widget1: Text(
              "Permanent Address Line 2",
              style: GraphicsTextStylesConst.textStyleBlack_9_600,
            ),
            widget2: Text(
              "Munnekolala,Marathahalli, Bengaluru",
              style: GraphicsTextStylesConst.textStyleBlack_12_400,
            ),
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(12),
          ),
          GetTwoColumeWidgets(
            widget1: Text(
              "Permanent Address Pincode",
              style: GraphicsTextStylesConst.textStyleBlack_9_600,
            ),
            widget2: Text(
              "5560037",
              style: GraphicsTextStylesConst.textStyleBlack_12_400,
            ),
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(12),
          ),
          GetTwoWidgetsWithRatio(
            widget1: GetTwoColumeWidgets(
              widget1: Text(
                "Is Permanent Address also current Address?",
                style: GraphicsTextStylesConst.textStyleBlack_9_600,
              ),
              widget2: Text(
                "Yes",
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            widget2: EditButton(
              callback: () {
                Routes.of(context).toLocationCustomerEditpage();
                ();
              },
            ),
            ratio: 0.85,
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(12),
          ),
          GetTwoColumeWidgets(
            widget1: Text(
              "Computed Name",
              style: GraphicsTextStylesConst.textStyleBlack_9_600,
            ),
            widget2: Text(
              "Babu S",
              style: GraphicsTextStylesConst.textStyleBlack_12_400,
            ),
          ),
        ],
      ),
    );
  }
}
