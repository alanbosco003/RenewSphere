import 'package:domain/use_cases/initial_login_page/initial_login_page_handler.dart';
import 'package:reactiv/controllers/reactive_controller.dart';
import 'package:reactiv/reactiv.dart';

class LoginInitialPageController extends ReactiveController {
  final loginButtonHandler = InitialLoginPageHandler();
}
