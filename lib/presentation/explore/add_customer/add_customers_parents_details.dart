import 'package:base_flutter/presentation/explore/add_customer/controller/add_customer_controller.dart';
import 'package:base_flutter/presentation/explore/add_customer/imports/imports_parents_details.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/views/reactive_state_widget.dart';
import 'package:services/network_widgets/show_snackbar.dart';

class AddCustomerParentsDetails
    extends ReactiveStateWidget<AddCustomerController> {
  const AddCustomerParentsDetails({super.key});

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
              SizedBox(height: UiSizeUtils.getHeightSize(8)),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomBorder(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          title: GraphicsStringConsts.mothersName,
                          hintText: GraphicsStringConsts.mothersNameHint,
                          onChanged: (val) {
                            controller.addCustomerHandler.addCustomerPayload
                                .demographicDetails.motherName = val;
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(14)),
                        CustomTextFormField(
                          title: GraphicsStringConsts.fathersName,
                          hintText: GraphicsStringConsts.fathersNameHint,
                          onChanged: (val) {
                            controller.addCustomerHandler.addCustomerPayload
                                .demographicDetails.fatherName = val;
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(14)),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              GraphicsStringConsts.maritalStatus,
                              style:
                                  GraphicsTextStylesConst.textStyleGrey_12_600,
                            ),
                          ],
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(8)),
                        CustomSelectionButton(
                          options: GraphicsStringConsts.maritalStatusOptions,
                          onChanged: (selectedOption) {
                            controller
                                .addCustomerHandler
                                .addCustomerPayload
                                .demographicDetails
                                .maritalStatus = selectedOption;
                            print('Selected: $selectedOption');
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(12)),
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
                    if (controller.validateForm(4)) {
                      Routes.of(context).toLocationAddCustomerBankDetail();
                    } else {
                      showSnackBar(
                          context: context,
                          title:
                              GraphicsStringConsts.getErrorMssgForCustomerForm(
                                  4),
                          isError: true);
                    }
                    //
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
