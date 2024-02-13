import 'package:base_flutter/presentation/explore/add_customer/controller/add_customer_controller.dart';
import 'package:base_flutter/presentation/explore/add_customer/imports/imports_personal_details.dart';
import 'package:flutter/material.dart';
import 'package:services/network_widgets/show_snackbar.dart';

class AddCustomerPersonalDetails
    extends ReactiveStateWidget<AddCustomerController> {
  const AddCustomerPersonalDetails({super.key});

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await DatePickerUtils.selectDate(
      context,
      controller.selectedDate,
    );

    if (picked != null && picked != controller.selectedDate) {
      // UPDATE THE UI
      controller.selectedDate = picked;
      controller.getDateInstring();
    }
  }

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
                          title: GraphicsStringConsts.fullNameAdhar,
                          hintText: GraphicsStringConsts.fullNameHint,
                          onChanged: (val) {
                            controller.addCustomerHandler.addCustomerPayload
                                .demographicDetails.firstName = val;
                            controller.addCustomerHandler.addCustomerPayload
                                .demographicDetails.lastName = val;
                            // controller.loginHandler.emailPassPayload.password = val;
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(14)),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              GraphicsStringConsts.gender,
                              style:
                                  GraphicsTextStylesConst.textStyleGrey_12_600,
                            ),
                          ],
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(8)),
                        CustomSelectionButton(
                          options: GraphicsStringConsts.genderOptions,
                          onChanged: (selectedOption) {
                            controller.addCustomerHandler.addCustomerPayload
                                .demographicDetails.gender = selectedOption;
                            Logger.info('Selected: $selectedOption');
                            // Add your logic here to handle the selected option
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(14)),
                        Observer(
                          listenable: controller.formattedDate,
                          listener: (selectedDate) {
                            return ReadOnlyTextField(
                              text: GraphicsStringConsts.dob,
                              hintText: selectedDate,
                              onTap: () {
                                _selectDate(context);
                                // Your onTap logic here
                              },
                              suffixIcon: const Icon(
                                Icons.today,
                                color: GraphicsColorConsts.lightGreyTextColor,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: UiSizeUtils.getHeightSize(26)),
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
                    if (controller.validateForm(2)) {
                      Routes.of(context).toLocationAddCustomerNomineeDetail();
                    } else {
                      showSnackBar(
                          context: context,
                          title:
                              GraphicsStringConsts.getErrorMssgForCustomerForm(
                                  2),
                          isError: true);
                    }

                    //
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
