import 'package:base_flutter/infrastructure/navigation/navigation.dart';

import 'index.dart';

class InitializerScreen extends ReactiveStateWidget<InitializerController> {
  const InitializerScreen({super.key, required this.state});

  @override
  BindController<InitializerController>? bindController() {
    return BindController(
        controller: () => InitializerController(), autoDispose: true);
  }

  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await SharedPreferenceManager.initSharedPreference();
      // ignore: use_build_context_synchronously
      await UiSizeUtils.setDeviceScreenSize(context);
      // ignore: unused_local_variable
      final bool isLogin =
          LocalStorage.instance.readBool("isLoggedIn") ?? false;

      Future.delayed(const Duration(milliseconds: 10)).then((value) {
        // if (isLogin) {
        //   // if (state.location == '/') {
        //   Routes.of(context).toLocationBaseStructureModule();
        //   // }
        // } else {
        if (state.location == '/') {
          Routes.of(context).toLocationLoginInitailPage();
        }
        // }
      });
    });

    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 10,
          height: 10,
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}
