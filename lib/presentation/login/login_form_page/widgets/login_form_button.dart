import 'package:base_flutter/infrastructure/navigation/navigation.dart';
import 'package:base_flutter/presentation/login/login_form_page/controller/login_form_contorller.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/buttons/gradent_button.dart';
import 'package:reactiv/reactiv.dart';
import 'package:services/network_widgets/show_snackbar.dart';

class LoginPageButton extends ReactiveStateWidget<LoginFormController> {
  const LoginPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: UiSizeUtils.getHeightSize(200),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: GradientElevatedButton(
          elevation: 0,
          text: GraphicsStringConsts.login,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          onPressed: () async {
            await controller.loginHandler.login().then((response) {
              if (response.isSuccess) {
                // If response is succes move to dashboard.
                Routes.of(context).toLocationBaseStructureModule();
              } else {
                showSnackBar(
                    context: context, title: response.message, isError: true);
              }
            });
          },
        ),
      ),
    );
  }
}
