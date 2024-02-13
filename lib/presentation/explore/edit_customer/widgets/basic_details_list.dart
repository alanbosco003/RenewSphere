import 'package:base_flutter/presentation/explore/index.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/widgets/common/get_three_widgets_with_ration.dart';
import 'package:graphics/widgets/text_fields/text_fields.dart';

class ShowBasicDetailsDropDown extends StatefulWidget {
  ShowBasicDetailsDropDown({super.key});

  @override
  State<ShowBasicDetailsDropDown> createState() =>
      _ShowBasicDetailsDropDownState();
}

class _ShowBasicDetailsDropDownState extends State<ShowBasicDetailsDropDown> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(20)),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(12)),
              child: GetThreeWidgetsWithRatio(
                  widget1: const Icon(Icons.description_outlined),
                  widget2: Text(
                    "Basic Details",
                    style: GraphicsTextStylesConst.textStyleBlack_12_600,
                  ),
                  widget3: const Icon(Icons.expand_more_outlined),
                  firstRatio: 0.5,
                  secondRatio: 3.5,
                  thirdRatio: 0.5),
            ),
          ),
          if (_expanded) ...[
            Padding(
              padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(20)),
              child: Column(
                children: [
                  // Add your components here that should be displayed when expanded
                  CustomTextFormField(
                    title: GraphicsStringConsts.fullName,
                    hintText: GraphicsStringConsts.fullNameHint1,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.lastName,
                    hintText: GraphicsStringConsts.lastNameHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.contactNumber,
                    hintText: GraphicsStringConsts.contactNumberHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.email,
                    hintText: GraphicsStringConsts.emailHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                ],
              ),
            ),
            // Add more components as needed
          ],
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Divider(),
          )
        ],
      ),
    );
  }
}
