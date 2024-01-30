import 'package:base_flutter/presentation/customers/add_customer/widgets/custom_selection_button.dart';
import 'package:base_flutter/presentation/customers/edit_customer/widgets/image_picking_container.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_color_consts.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/graphics_consts/graphics_text_style_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/common/get_three_widgets_with_ration.dart';
import 'package:graphics/widgets/text_fields/read_only_text_field.dart';
import 'package:graphics/widgets/text_fields/text_fields.dart';

class ShowAdditionalDetailsDropDown extends StatefulWidget {
  const ShowAdditionalDetailsDropDown({super.key});

  @override
  State<ShowAdditionalDetailsDropDown> createState() =>
      _ShowBasicDetailsDropDownState();
}

class _ShowBasicDetailsDropDownState
    extends State<ShowAdditionalDetailsDropDown> {
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
                    "Additional Details",
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
                  const ImagePickingContainer(),
                  CustomTextFormField(
                    title: GraphicsStringConsts.customerID,
                    hintText: GraphicsStringConsts.customerIDHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  ReadOnlyTextField(
                    text: GraphicsStringConsts.areaManagerAdminName,
                    hintText: GraphicsStringConsts.selectOption,
                    onTap: () {
                      // _selectDate(context);
                      // Your onTap logic here
                    },
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                      color: GraphicsColorConsts.lightGreyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  ReadOnlyTextField(
                    text: GraphicsStringConsts.leadSource,
                    hintText: GraphicsStringConsts.selectOption,
                    onTap: () {
                      // _selectDate(context);
                      // Your onTap logic here
                    },
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                      color: GraphicsColorConsts.lightGreyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  ReadOnlyTextField(
                    text: GraphicsStringConsts.dateofBirth,
                    hintText: GraphicsStringConsts.dateofBirthHint,
                    onTap: () {
                      // _selectDate(context);
                      // Your onTap logic here
                    },
                    suffixIcon: const Icon(
                      Icons.today,
                      color: GraphicsColorConsts.lightGreyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        GraphicsStringConsts.physicallyChallengedTxt,
                        style: GraphicsTextStylesConst.textStyleGrey_12_600,
                      ),
                    ],
                  ),
                  SizedBox(height: UiSizeUtils.getHeightSize(8)),
                  CustomSelectionButton(
                    options: GraphicsStringConsts.physicallyChallenged,
                    onChanged: (selectedOption) {
                      print('Selected: $selectedOption');
                      // Add your logic here to handle the selected option
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.religion,
                    // hintText: GraphicsStringConsts.nomineeNameHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.caste,
                    // hintText: GraphicsStringConsts.nomineeNameHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.occupationtatus,
                    // hintText: GraphicsStringConsts.nomineeNameHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.income,
                    // hintText: GraphicsStringConsts.nomineeNameHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(height: UiSizeUtils.getHeightSize(14)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        GraphicsStringConsts.gender,
                        style: GraphicsTextStylesConst.textStyleGrey_12_600,
                      ),
                    ],
                  ),
                  SizedBox(height: UiSizeUtils.getHeightSize(8)),
                  CustomSelectionButton(
                    options: GraphicsStringConsts.genderOptions,
                    onChanged: (selectedOption) {
                      print('Selected: $selectedOption');
                      // Add your logic here to handle the selected option
                    },
                  ),
                  SizedBox(height: UiSizeUtils.getHeightSize(14)),
                  ReadOnlyTextField(
                    text: GraphicsStringConsts.geoClass,
                    hintText: GraphicsStringConsts.geoClassHint,
                    onTap: () {
                      // _selectDate(context);
                      // Your onTap logic here
                    },
                    suffixIcon: const Icon(
                      Icons.today,
                      color: GraphicsColorConsts.lightGreyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.permanentAddressLine,
                    // hintText: GraphicsStringConsts.nomineeNameHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  CustomTextFormField(
                    title: GraphicsStringConsts.permanentAddressLine2,
                    // hintText: GraphicsStringConsts.nomineeNameHint,
                    onChanged: (val) {
                      // controller.loginHandler.emailPassPayload.password = val;
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        GraphicsStringConsts
                            .iscurrentaddresssameaspermanentaddress,
                        style: GraphicsTextStylesConst.textStyleGrey_12_600,
                      ),
                    ],
                  ),
                  SizedBox(height: UiSizeUtils.getHeightSize(8)),
                  CustomSelectionButton(
                    options: GraphicsStringConsts
                        .iscurrentaddresssameaspermanentaddressBool,
                    onChanged: (selectedOption) {
                      print('Selected: $selectedOption');
                      // Add your logic here to handle the selected option
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        GraphicsStringConsts
                            .iscurrentaddresssameaspermanentaddress,
                        style: GraphicsTextStylesConst.textStyleGrey_12_600,
                      ),
                    ],
                  ),
                  SizedBox(height: UiSizeUtils.getHeightSize(8)),
                  CustomSelectionButton(
                    options: GraphicsStringConsts.landHoldingtypeSelection,
                    onChanged: (selectedOption) {
                      print('Selected: $selectedOption');
                      // Add your logic here to handle the selected option
                    },
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  ReadOnlyTextField(
                    text: GraphicsStringConsts.landHoldingValueinHectares,
                    hintText:
                        GraphicsStringConsts.landHoldingValueinHectaresHint,
                    onTap: () {
                      // _selectDate(context);
                      // Your onTap logic here
                    },
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                      color: GraphicsColorConsts.lightGreyTextColor,
                    ),
                  ),

                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                  ReadOnlyTextField(
                    text: GraphicsStringConsts.presentKYCStatus,
                    hintText: GraphicsStringConsts.presentKYCStatusHint,
                    onTap: () {
                      // _selectDate(context);
                      // Your onTap logic here
                    },
                    suffixIcon: const Icon(
                      Icons.chevron_right,
                      color: GraphicsColorConsts.lightGreyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: UiSizeUtils.getHeightSize(14),
                  ),
                ],
              ),
            ),
            // Add more components as needed
          ],
          const Padding(
            padding: EdgeInsets.only(top: 3),
            child: Divider(),
          ),
          SizedBox(
            height: UiSizeUtils.getHeightSize(50),
          ),
        ],
      ),
    );
  }
}
