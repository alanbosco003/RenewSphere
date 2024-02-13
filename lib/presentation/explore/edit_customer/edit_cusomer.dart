import 'package:base_flutter/presentation/explore/edit_customer/widgets/additional_details_drop_down.dart';
import 'package:base_flutter/presentation/explore/edit_customer/widgets/basic_details_list.dart';
import 'package:base_flutter/presentation/explore/edit_customer/widgets/save_changes_button.dart';
import 'package:base_flutter/presentation/explore/edit_customer/widgets/show_app_edit_customer.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/buttons/flat_button.dart';

class EditCustomer extends StatelessWidget {
  const EditCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ShowAppBar(),
              ShowBasicDetailsDropDown(),
              const ShowAdditionalDetailsDropDown(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: UiSizeUtils.getWidthSize(20)),
                child: const SaveChangesButton(),
              ),
              SizedBox(
                height: UiSizeUtils.getHeightSize(16),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: UiSizeUtils.getWidthSize(20)),
                child: CustomElevatedButton(
                  elevation: 0,
                  text: GraphicsStringConsts.cancelTxt,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  onPressed: () async {
                    // Routes.of(context).toLocationAddCustomerParentsDetail();
                    //
                  },
                ),
              ),
              SizedBox(
                height: UiSizeUtils.getHeightSize(50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
