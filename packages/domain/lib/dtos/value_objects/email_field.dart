import 'package:domain/core/i_value_objects.dart';

class EmailField extends IValueObject<String> {
  EmailField(super.value);

  @override
  String? validate(String? value) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value ?? '');
    if (!emailValid) {
      return 'Please enter a valid email address';
    } else {
      return null;
    }
  }
}
