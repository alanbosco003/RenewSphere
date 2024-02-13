import 'package:base_flutter/presentation/explore/add_customer/controller/add_customer_controller.dart';
import 'package:base_flutter/presentation/explore/add_customer/imports/imports_nominee.dart';
import 'package:flutter/material.dart';
import 'package:graphics/widgets/buttons/gradent_button.dart';
import 'package:reactiv/views/reactive_state_widget.dart';
import 'package:services/network_widgets/show_snackbar.dart';

class AddCustomerNomineeDetails
    extends ReactiveStateWidget<AddCustomerController> {
  const AddCustomerNomineeDetails({
    super.key,
  });

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
              SizedBox(
                height: UiSizeUtils.getHeightSize(12),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TitleWithIcon(
                    imagePath: '',
                  ),
                ],
              ),
              SizedBox(
                height: UiSizeUtils.getHeightSize(16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  GraphicsStringConsts.panMandatory,
                  style: GraphicsTextStylesConst.textStyleBlack_12_400,
                ),
              ),
              SizedBox(
                height: UiSizeUtils.getHeightSize(8),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomBorder(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          title: GraphicsStringConsts.nomineeName,
                          hintText: GraphicsStringConsts.nomineeNameHint,
                          onChanged: (val) {
                            controller.addCustomerHandler.nominee
                                .nomineeFullName = val;
                          },
                        ),
                        SizedBox(
                          height: UiSizeUtils.getHeightSize(14),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              GraphicsStringConsts.relationWithNominee,
                              style:
                                  GraphicsTextStylesConst.textStyleGrey_12_600,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: UiSizeUtils.getHeightSize(8),
                        ),
                        CustomSelectionButton(
                          options: GraphicsStringConsts.nomineeRelations,
                          onChanged: (selectedOption) {
                            controller.addCustomerHandler.nominee
                                .nomineeFullName = selectedOption;
                            print('Selected: $selectedOption');
                            // Handle the selected option here
                          },
                        ),
                        SizedBox(
                          height: UiSizeUtils.getHeightSize(12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: UiSizeUtils.getHeightSize(21),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: GradientElevatedButton(
                  elevation: 0,
                  text: GraphicsStringConsts.next,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  onPressed: () async {
                    if (controller.validateForm(3)) {
                      Routes.of(context).toLocationAddCustomerParentsDetail();
                    } else {
                      showSnackBar(
                          context: context,
                          title:
                              GraphicsStringConsts.getErrorMssgForCustomerForm(
                                  3),
                          isError: true);
                    }
                    //
                  },
                ),
              ),
              SizedBox(
                height: UiSizeUtils.getHeightSize(26),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: CustomElevatedButton(
                  elevation: 0,
                  text: GraphicsStringConsts.skipNomineeDetails,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  onPressed: () async {
                    Routes.of(context).toLocationAddCustomerParentsDetail();

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
