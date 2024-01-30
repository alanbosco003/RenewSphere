import 'package:base_flutter/presentation/login/login_form_page/controller/login_form_contorller.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/text_fields/text_fields.dart';
import 'package:reactiv/views/reactive_state_widget.dart';

class PasswordTextFiled extends ReactiveStateWidget<LoginFormController> {
  const PasswordTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(15)),
      child: CustomTextFormField(
        obscureText: true,
        title: GraphicsStringConsts.password,
        hintText: GraphicsStringConsts.password,
        onChanged: (val) {
          controller.loginHandler.emailPassPayload.password = val;
        },
      ),
    );
  }
}
