import 'package:domain/core/network/url_constant.dart';
import 'package:domain/dtos/responses/login_response.dart';
import 'package:services/data_providers/data_providers.dart';

class LoginDao {
  LoginDao._();

  static final instance = LoginDao._();

  Future<ServiceResponse<LoginResponse>> getLoginResponse(
      String email, String password) async {
    final response = await RestApi.instance.post(
      UrlConstants.getLoginURL,
      body: {'username': email, 'password': password},
    );
    return response.richData(LoginResponse.fromJson(response.body));
  }
}
