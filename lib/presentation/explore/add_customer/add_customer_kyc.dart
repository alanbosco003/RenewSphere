import 'package:base_flutter/presentation/explore/add_customer/widgets/app_bar.dart'
    as app_bar;
import 'package:base_flutter/presentation/explore/add_customer/imports/imports_kyc.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';

class AddCustomerKYC extends StatelessWidget {
  const AddCustomerKYC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const app_bar.ShowAppBar(),
            SizedBox(
              height: UiSizeUtils.getHeightSize(20),
            ),
            GetThreeWidgetsWithRatio(
              widget1: const AddCustomerIcon(),
              widget2: GetTwoColumeWidgets(
                widget1: Text(
                  GraphicsStringConsts.tapToAdd,
                  style: GraphicsTextStylesConst.textStyleBlack_12_400,
                ),
                widget2: Text(
                  GraphicsStringConsts.addACustomer,
                  style: GraphicsTextStylesConst.textStyleBlack_12_400,
                ),
              ),
              widget3: GestureDetector(
                onTap: () {
                  Routes.of(context).toLocationAddCustomerPan();
                },
                child: const Icon(
                  Icons.add_circle_outline,
                  color: GraphicsColorConsts.oranch,
                ),
              ),
              firstRatio: 1,
              secondRatio: 2,
              thirdRatio: 1,
            ),
            SizedBox(
              height: UiSizeUtils.getHeightSize(12),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            SizedBox(
              height: UiSizeUtils.getHeightSize(12),
            ),
            GetThreeWidgetsWithRatio(
              widget1: const AddCustomerIcon(),
              widget2: GetTwoColumeWidgets(
                widget1: Text(
                  GraphicsStringConsts.tapToCheck,
                  style: GraphicsTextStylesConst.textStyleBlack_12_400,
                ),
                widget2: Text(
                  GraphicsStringConsts.checkKYCStatus,
                  style: GraphicsTextStylesConst.textStyleBlack_12_400,
                ),
              ),
              widget3: const Icon(
                Icons.expand_more,
                color: GraphicsColorConsts.oranch,
              ),
              firstRatio: 1,
              secondRatio: 2,
              thirdRatio: 1,
            ),
            SizedBox(
              height: UiSizeUtils.getHeightSize(14),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
