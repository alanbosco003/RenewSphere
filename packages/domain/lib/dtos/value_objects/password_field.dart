import 'package:domain/core/i_value_objects.dart';

class PasswordField extends IValueObject<String> {
  PasswordField(super.value);

  @override
  String? validate(String? value) {
    bool passValid = (value?.length ?? 0) >= 8;
    if (!passValid) {
      return 'Please enter a password with more than equals 8 characters';
    } else {
      return null;
    }
  }
}
