import 'package:base_flutter/presentation/login/login_initial_page/controllers/login_initial_page.controller.dart';
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
          CarouselSlider(),
          GoldLoanTitleText(),
          GoldLoanSubtitleText(),
          GoldLoanInitialScreenButton(),
          Spacer(),
          LkBrandLogo()
        ],
      ),
    );
  }
}
