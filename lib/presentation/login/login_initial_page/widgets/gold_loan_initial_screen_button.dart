import 'package:base_flutter/infrastructure/navigation/navigation.dart';
import 'package:base_flutter/presentation/login/login_initial_page/controllers/login_initial_page.controller.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/buttons/gradent_button.dart';
import 'package:reactiv/reactiv.dart';

class GoldLoanInitialScreenButton
    extends ReactiveStateWidget<LoginInitialPageController> {
  const GoldLoanInitialScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(35)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: UiSizeUtils.getWidthSize(40)),
        child: GradientElevatedButton(
          elevation: 0,
          text: GraphicsStringConsts.loginWitgEmail,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          onPressed: () {
            Routes.of(context).toLocationLoginFormModule();
            controller.loginButtonHandler.initialLoginPageLogic();
            // Add your login functionality here
          },
        ),
      ),
    );
  }
}
