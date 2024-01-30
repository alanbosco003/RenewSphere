import 'package:base_flutter/presentation/customers/add_customer/controller/add_customer_controller.dart';
import 'package:base_flutter/presentation/customers/add_customer/imports/imports_pan.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:services/network_widgets/show_snackbar.dart';

class AddCustomerPAN extends ReactiveStateWidget<AddCustomerController> {
  const AddCustomerPAN({
    super.key,
  });

  @override
  BindController<AddCustomerController>? bindController() {
    return BindController(
        controller: () => AddCustomerController(), autoDispose: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTopAppBar(
              title: GraphicsStringConsts.addCustomerText,
              titleStyle: GraphicsTextStylesConst.textStyleBlack_13_600,
              showBackButton: true,
              onBackButtonPressed: () {
                Logger.info("Pressed Back button");
                // Handle back button press here
              },
              notificationIcon: false,
            ),
            SizedBox(height: UiSizeUtils.getHeightSize(12)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleWithIcon(
                  imagePath: '',
                ),
              ],
            ),
            SizedBox(height: UiSizeUtils.getHeightSize(16)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                GraphicsStringConsts.panMandatory,
                style: GraphicsTextStylesConst.textStyleBlack_12_400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomBorder(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, left: 20, right: 20, bottom: 35),
                      child: Row(
                        children: [
                          SizedBox(
                            width: UiSizeUtils.getHeightSize(248),
                            child: CustomTextFormField(
                              title: GraphicsStringConsts.pan,
                              hintText: GraphicsStringConsts.enterPan,
                              onChanged: (val) {
                                controller
                                    .addCustomerHandler
                                    .addCustomerPayload
                                    .demographicDetails
                                    .personalPAN = val.toUpperCase();
                                controller.getPanCheck();
                              },
                            ),
                          ),
                          Observer(
                              listenable: controller.isPanValid,
                              listener: (isPanValid) {
                                return isPanValid
                                    ? Padding(
                                        padding: EdgeInsets.only(
                                            top: UiSizeUtils.getHeightSize(20),
                                            left:
                                                UiSizeUtils.getHeightSize(12)),
                                        child: const SvgAsset(
                                          size: 18,
                                          asset: AssetConsts.suffixTrue,
                                          package: AssetConsts.package,
                                        ),
                                      )
                                    : Container();
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: UiSizeUtils.getHeightSize(21)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: GradientElevatedButton(
                elevation: 0,
                text: GraphicsStringConsts.startProceed,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                onPressed: () async {
                  if (controller.validateForm(1)) {
                    Routes.of(context).toLocationAddCustomerPersonalDetail();
                  } else {
                    showSnackBar(
                        context: context,
                        title:
                            GraphicsStringConsts.getErrorMssgForCustomerForm(1),
                        isError: true);
                  }
                  //
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
