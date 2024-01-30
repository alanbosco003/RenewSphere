import 'package:domain/use_cases/login_form/login_form_handler.dart';
import 'package:reactiv/controllers/reactive_controller.dart';

class LoginFormController extends ReactiveController {
  final loginHandler = LoginHandler();
}
