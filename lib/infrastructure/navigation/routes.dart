part of 'navigation.dart';

class Routes {
  Routes._(this.context);

  factory Routes.of(BuildContext context) => Routes._(context);
  final BuildContext context;

  void toInitializer() => context.go('/');

  void toLocationSampleModule() => context.go('/${RoutePath.sampleModule}');

  void toNamedSampleModule() => context.goNamed(RoutePath.sampleModule);

  void toLocationLoginInitailPage() =>
      context.go('/${RoutePath.loginInitialPage}');

  void toNamedLoginInitailPage() => context.goNamed(RoutePath.loginInitialPage);

  void toLocationLoginFormModule() =>
      context.go('/${RoutePath.loginInitialPage}/${RoutePath.loginFormPage}');

  void toNamedLoginFormModule() => context.goNamed(RoutePath.loginFormPage);

  void toLocationBaseStructureModule() =>
      context.go('/${RoutePath.baseStructure}');

  void toNamedBaseStructureModule() => context.goNamed(RoutePath.baseStructure);

  void toLocationBaseCustomerDetailspage() =>
      context.go('/${RoutePath.baseStructure}/${RoutePath.customerDetails}');

  void toNamedBaseCustomerDetailspage() =>
      context.goNamed(RoutePath.customerDetails);

  void toLocationCustomerEditpage() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.customerDetails}/${RoutePath.editCustomer}');

  void toNamedCustomerEditpage() => context.goNamed(RoutePath.customerDetails);

  void toLocationAddCustomerKYC() =>
      context.go('/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}');

  void toNamedBaseAddCustomerKYC() =>
      context.goNamed(RoutePath.customerDetails);

  void toLocationAddCustomerPan() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}/${RoutePath.addCustomerPan}');

  void toNamedBaseAddCustomerPan() =>
      context.goNamed(RoutePath.customerDetails);

  void toLocationAddCustomerPersonalDetail() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}/${RoutePath.addCustomerPan}/${RoutePath.addCustomerPersonalDetails}');

  void toNamedBaseAddCustomerPersonalDetail() =>
      context.goNamed(RoutePath.customerDetails);

  void toLocationAddCustomerNomineeDetail() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}/${RoutePath.addCustomerPan}/${RoutePath.addCustomerPersonalDetails}/${RoutePath.addCustomerNomineeDetails}');

  void toNamedBaseAddCustomerNomineeDetail() =>
      context.goNamed(RoutePath.customerDetails);

  void toLocationAddCustomerParentsDetail() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}/${RoutePath.addCustomerPan}/${RoutePath.addCustomerPersonalDetails}/${RoutePath.addCustomerNomineeDetails}/${RoutePath.addCustomerParentsDetails}');

  void toNamedBaseAddCustomerParentsDetail() =>
      context.goNamed(RoutePath.customerDetails);

  void toLocationAddCustomerBankDetail() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}/${RoutePath.addCustomerPan}/${RoutePath.addCustomerPersonalDetails}/${RoutePath.addCustomerNomineeDetails}/${RoutePath.addCustomerParentsDetails}/${RoutePath.addCustomerBankDetails}');

  void toNamedBaseAddCustomerBankDetail() =>
      context.goNamed(RoutePath.customerDetails);
  void toLocationAddCustomerBankVerification() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}/${RoutePath.addCustomerPan}/${RoutePath.addCustomerPersonalDetails}/${RoutePath.addCustomerNomineeDetails}/${RoutePath.addCustomerParentsDetails}/${RoutePath.addCustomerBankDetails}/${RoutePath.addCustomerBankverifiaction}');

  void toNamedBaseAddCustomerBankVerification() =>
      context.goNamed(RoutePath.customerDetails);

  void toLocationAddCustomerBankVerified() => context.go(
      '/${RoutePath.baseStructure}/${RoutePath.addCustomerKYC}/${RoutePath.addCustomerPan}/${RoutePath.addCustomerPersonalDetails}/${RoutePath.addCustomerNomineeDetails}/${RoutePath.addCustomerParentsDetails}/${RoutePath.addCustomerBankDetails}/${RoutePath.addCustomerBankverified}');

  void toNamedBaseAddCustomerBankVerified() =>
      context.goNamed(RoutePath.customerDetails);
}

class RoutePath {
  static const initializer = '/';
  static const sampleModule = 'sample_module';
  static const loginInitialPage = 'login_initial_page';
  static const loginFormPage = 'login_form_page';
  static const baseStructure = 'base_structure_page';
  static const customerDetails = 'customer_details_page';
  static const addCustomerKYC = 'add_customer_kyc';
  static const addCustomerPan = 'add_customer_pan';
  static const addCustomerPersonalDetails = 'add_customer_personal';
  static const addCustomerNomineeDetails = 'add_customer_nominee';
  static const addCustomerParentsDetails = 'add_parents_details';
  static const addCustomerBankDetails = 'add_parents_bank';
  static const addCustomerBankverifiaction = 'add_customer_bank_verifiacation';
  static const addCustomerBankverified = 'add_customer_bank_verified';
  static const editCustomer = 'edit_customer';
}
