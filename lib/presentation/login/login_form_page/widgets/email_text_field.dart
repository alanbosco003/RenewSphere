import 'package:base_flutter/presentation/login/login_form_page/controller/login_form_contorller.dart';
import 'package:flutter/material.dart';
import 'package:graphics/graphics_consts/graphics_string_consts.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:graphics/widgets/text_fields/text_fields.dart';
import 'package:reactiv/reactiv.dart';

class EmailTextField extends ReactiveStateWidget<LoginFormController> {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UiSizeUtils.getHeightSize(50)),
      child: CustomTextFormField(
        title: GraphicsStringConsts.emailAdress,
        hintText: GraphicsStringConsts.emailAdress,
        onChanged: (val) {
          controller.loginHandler.emailPassPayload.email = val;
        },
      ),
    );
  }
}
