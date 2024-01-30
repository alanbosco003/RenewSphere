import 'package:domain/use_cases/customer/add_customer/add_customers_handler.dart';
import 'package:reactiv/reactiv.dart';
import 'package:intl/intl.dart' as intl;

class AddCustomerController extends ReactiveController {
  final addCustomerHandler = AddCustomerHandler();

  DateTime selectedDate = DateTime.now();
  ReactiveString formattedDate = ReactiveString("Select date");
  ReactiveBool isPanValid = ReactiveBool(false);
  String? confirmBankAcount;

  getDateInstring() {
    formattedDate.value = intl.DateFormat('yyyy-MM-dd').format(selectedDate);
    addCustomerHandler.addCustomerPayload.demographicDetails.dateOfBirth =
        formattedDate.value;
    Logger.info("Currectly selected date : $formattedDate");
  }

  getPanCheck() {
    String pattern = r"^[A-Z]{3}[ABCFGHLJPTF]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}$";
    RegExp regExp = RegExp(pattern);
    if (regExp.hasMatch(addCustomerHandler
        .addCustomerPayload.demographicDetails.personalPAN
        .toString())) {
      isPanValid.value = true;
    } else {
      isPanValid.value = false;
    }
  }

  bool isNotNullAndNotEmpty(String? value) {
    return value != null && value.isNotEmpty;
  }

  bool isNotNullAndNotEmptyList(List? list) {
    return list != null && list.isNotEmpty;
  }

  bool validateForm(int formPageNumber) {
    switch (formPageNumber) {
      case 1:
        // Validate fields on the first page
        return isPanValid.value;
      case 2:
        // Validate fields on the second page
        return isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.demographicDetails.firstName) &&
            isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.demographicDetails.gender) &&
            isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.demographicDetails.dateOfBirth);

      case 3:
        // Validate fields on the third page
        return true;

      case 4:
        // Validate fields on the fourth page
        return isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.demographicDetails.motherName) &&
            isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.demographicDetails.fatherName) &&
            isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.demographicDetails.maritalStatus);

      case 5:
        // Validate fields on the fifth page
        return isNotNullAndNotEmpty(addCustomerHandler.addCustomerPayload
                .bankStatementDetails.participantBankAccountNumber) &&
            isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.bankStatementDetails.participantBankIFSC) &&
            isNotNullAndNotEmpty(addCustomerHandler
                .addCustomerPayload.bankStatementDetails.participantBankName) &&
            (addCustomerHandler.addCustomerPayload.bankStatementDetails
                    .participantBankAccountNumber ==
                confirmBankAcount);

      default:
        return false; // Handle other cases or invalid page numbers
    }
  }
}
