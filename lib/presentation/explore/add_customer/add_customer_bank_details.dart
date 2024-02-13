import 'package:base_flutter/presentation/explore/add_customer/controller/add_customer_controller.dart';
import 'package:base_flutter/presentation/explore/add_customer/imports/imports_bank_details.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/views/reactive_state_widget.dart';
import 'package:services/network_widgets/show_snackbar.dart';

class AddCustomerBankDetails
    extends ReactiveStateWidget<AddCustomerController> {
  const AddCustomerBankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomTopAppBar(
                title: GraphicsStringConsts.addCustomerText,
                titleStyle: GraphicsTextStylesConst.textStyleBlack_13_600,
                showBackButton: true,
                onBackButtonPressed: () {
                  Logger.info(GraphicsStringConsts.pressedBackButton);
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
                    title: GraphicsStringConsts.bankDetails,
                    imagePath: AssetConsts.bankImage,
                  ),
                ],
              ),
              SizedBox(height: UiSizeUtils.getHeightSize(8)),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomBorder(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          title: GraphicsStringConsts.accountNumber,
                          hintText: GraphicsStringConsts.accountNumberHint,
                          onChanged: (val) {
                            controller
                                .addCustomerHandler
                                .addCustomerPayload
                                .bankStatementDetails
                                .participantBankAccountNumber = val;
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(14)),
                        CustomTextFormField(
                          title: GraphicsStringConsts.confirmaccountNumber,
                          hintText:
                              GraphicsStringConsts.confirmaccountNumberHint,
                          onChanged: (val) {
                            controller.confirmBankAcount = val;
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(14)),
                        CustomTextFormField(
                          title: GraphicsStringConsts.textIFSC,
                          hintText: GraphicsStringConsts.textIFSCHint,
                          onChanged: (val) {
                            controller.addCustomerHandler.addCustomerPayload
                                .bankStatementDetails.participantBankIFSC = val;
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(14)),
                        CustomTextFormField(
                          title: GraphicsStringConsts.bankName,
                          hintText: GraphicsStringConsts.bankNameHint,
                          onChanged: (val) {
                            controller.addCustomerHandler.addCustomerPayload
                                .bankStatementDetails.participantBankName = val;
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(8)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: UiSizeUtils.getHeightSize(21)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: GradientElevatedButton(
                  elevation: 0,
                  text: GraphicsStringConsts.next,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  onPressed: () async {
                    if (controller.validateForm(5)) {
                      await controller.addCustomerHandler
                          .addCustomer()
                          .then((response) {
                        if (response.isSuccess) {
                          Routes.of(context)
                              .toLocationAddCustomerBankVerification();
                          print("Successs");
                        } else {
                          showSnackBar(
                              context: context,
                              title: response.message,
                              isError: true);
                        }
                      });
                    } else {
                      showSnackBar(
                          context: context,
                          title:
                              GraphicsStringConsts.getErrorMssgForCustomerForm(
                                  5),
                          isError: true);
                    }
                  },
                ),
              ),
              SizedBox(height: UiSizeUtils.getHeightSize(26)),
            ],
          ),
        ),
      ),
    );
  }
}
