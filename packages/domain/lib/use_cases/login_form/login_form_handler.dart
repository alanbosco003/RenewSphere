import 'package:domain/daos/login/login_dao.dart';
import 'package:domain/dtos/payloads/login/login_payload.dart';
import 'package:services/data_providers/local_storage.dart';
import 'package:services/network_state_manager/network_state/service_state_manager.dart';

class LoginHandler with ServiceStateMixin {
  LoginHandler();
  LoginPayload emailPassPayload = LoginPayload();

  Future<ServiceStatus> login() async {
    return serviceObserver(() async {
      final response = await LoginDao.instance
          .getLoginResponse(emailPassPayload.email, emailPassPayload.password);
      if (response.status.isSuccess) {
        // SAVE LOCAL DATA if it's a succesful login
        await LocalStorage.instance
            .writeString("sessionId", response.body!.sessionId ?? "");
        await LocalStorage.instance
            .writeString("authorization", response.body!.authorization ?? "");
        await LocalStorage.instance
            .writeString("primaryRoleId", response.body!.primaryRoleId ?? "");
        await LocalStorage.instance.writeString(
            "primaryRoleName", response.body!.primaryRoleName ?? "");
        await LocalStorage.instance.writeString("id", response.body!.id ?? "");
        await LocalStorage.instance
            .writeString("fullName", response.body!.fullName ?? "");
        await LocalStorage.instance
            .writeString("email", response.body!.email ?? "");
        await LocalStorage.instance
            .writeString("contactNumber", response.body!.contactNumber ?? "");
        await LocalStorage.instance
            .writeString("referenceId", response.body!.referenceId ?? "");
        await LocalStorage.instance.writeBool("isLoggedIn", true);
      }
      return response.status;
    });
  }
}
