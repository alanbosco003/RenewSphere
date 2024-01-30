import 'package:domain/daos/customer/add_customer/add_customer.dart';
import 'package:domain/dtos/payloads/customer/add_customer_payload.dart';
import 'package:services/network_state_manager/network_state/service_state_manager.dart';

class AddCustomerHandler with ServiceStateMixin {
  AddCustomerHandler();
  AddCustomerPayload addCustomerPayload = AddCustomerPayload();
  NomineeDetails nominee = NomineeDetails();

  Future<ServiceStatus> addCustomer() async {
    addCustomerPayload.nomineeDetails.add(nominee);

    return serviceObserver(() async {
      final response = await AddCustomerDao.instance
          .getAddCustomerResponse(addCustomerPayload);
      if (response.status.isSuccess) {
        // Write Logic for add customer API

        // NO NEED FOR LOGIC WRITTEN HERE RN.
        // NAVIGATION IS TRIGGERED FROM UI WITH RESPONSE STATUS
      }
      return response.status;
    });
  }
}
