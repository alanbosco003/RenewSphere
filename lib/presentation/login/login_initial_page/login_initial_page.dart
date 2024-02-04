import 'package:base_flutter/presentation/login/login_initial_page/controllers/login_initial_page.controller.dart';
import 'package:base_flutter/presentation/login/login_initial_page/widgets/apple_button.dart';
import 'package:base_flutter/presentation/login/login_initial_page/widgets/google_login_button.dart';
import 'package:reactiv/views/reactive_state_widget.dart';

import 'index.dart';

class LoginInitialScreen
    extends ReactiveStateWidget<LoginInitialPageController> {
  const LoginInitialScreen({super.key});
  @override
  BindController<LoginInitialPageController>? bindController() {
    return BindController(
        controller: () => LoginInitialPageController(), autoDispose: true);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: GraphicsColorConsts.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 90),
          CarouselSlider(),
          LogoTitleText(),
          LogoSubtitleText(),
          Spacer(),
          GoogleLogin(),
          SizedBox(height: 15),
          AppleButton(),
          SizedBox(height: 15),
          EmailLoginInitialScreenButton(),
          SizedBox(height: 25),
          // Spacer(),
          // LkBrandLogo()
        ],
      ),
    );
  }
}
