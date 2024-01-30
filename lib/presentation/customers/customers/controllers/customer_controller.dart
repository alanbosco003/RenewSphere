import 'package:reactiv/reactiv.dart';

class CustomerController extends ReactiveController {
  List tabValues = [
    'KYC Approved',
    'KYC Rejected',
    'KYC Submission Pending',
    'KYC Submitted'
  ];
  ReactiveString selectedStatus = ReactiveString("");
  selectStatus(currentTab) {
    selectedStatus.value = currentTab;
  }
}
