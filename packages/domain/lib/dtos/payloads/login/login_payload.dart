import 'package:domain/dtos/value_objects/email_field.dart';
import 'package:domain/dtos/value_objects/password_field.dart';

class LoginPayload {
  final _email = EmailField('');
  final _password = PasswordField('');

  String get password => _password.value;

  set password(String val) {
    _password.value = val;
  }

  String get email => _email.value;

  set email(String val) {
    _email.value = val;
  }

  LoginPayload({
    String? email,
    String? password,
  }) {
    _email.value = email ?? '';
    _password.value = password ?? '';
  }
}
