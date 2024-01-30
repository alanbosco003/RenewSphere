import 'package:domain/core/network/url_constant.dart';
import 'package:domain/dtos/payloads/customer/add_customer_payload.dart';
import 'package:domain/dtos/responses/customer/add_customer.dart';
import 'package:services/data_providers/data_providers.dart';

class AddCustomerDao {
  AddCustomerDao._();

  static final instance = AddCustomerDao._();

  Future<ServiceResponse<AddCustomerResponse>> getAddCustomerResponse(
      AddCustomerPayload addCustomerPayload) async {
    var response = await RestApi.instance
        .post(UrlConstants.getAddCustomerURL, body: addCustomerPayload);
    return response.richData(AddCustomerResponse.fromJson(response.body));
  }
}
