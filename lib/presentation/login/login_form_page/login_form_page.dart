import 'package:base_flutter/presentation/login/login_form_page/controller/login_form_contorller.dart';
import 'package:graphics/utils/dimension/ui_size_utils.dart';
import 'package:reactiv/views/reactive_state_widget.dart';

import 'index.dart';

class LoginForm extends ReactiveStateWidget<LoginFormController> {
  const LoginForm({super.key});
  @override
  BindController<LoginFormController>? bindController() {
    return BindController(
        controller: () => LoginFormController(), autoDispose: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GraphicsColorConsts.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(UiSizeUtils.getWidthSize(16),
              UiSizeUtils.getHeightSize(16), UiSizeUtils.getWidthSize(16), 0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogInTitle(),
              EmailTextField(),
              PasswordTextFiled(),
              LoginPageButton(),
              Spacer(),
              LkBrandLogo()
            ],
          ),
        ),
      ),
    );
  }
}
