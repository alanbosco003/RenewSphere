class GraphicsStringConsts {
  static getErrorMssgForCustomerForm(int formNumber) {
    switch (formNumber) {
      case 1:
        return "Enter PAN or check if the entered PAN is valid";
      case 2:
        return "Please fill all the personal details above";
      case 3:
        return "Please fill all the nominee details above";
      case 4:
        return "Please fill all the parents details above";
      case 5:
        return "Please fill all the bank details above";
      default:
        return "Please check if the Entered details are correct";
    }
  }

  static const sampleData = 'Sample Data';
  static const titleNotFound = 'Title Not Found';
  static const descriptionNotFound = 'Description Not Found';
  static const noDataFound = 'No Data Found!!';
  static const logIn = 'Log In';
  static const renew = 'RENEW ';
  static const sphere = 'SPHERE';
  static const platforForGoGreen = 'Gaming for a Greener Tomorrow';
  static const loginWitgEmail = 'Login with Email';
  static const login = 'Login';
  static const saveChanges = 'Save Changes';
  static const emailAdress = 'Email Address';
  static const password = 'Password';
  static const dobString = 'Date of Birth';
  static const pan = 'PAN';
  static const panRegix = "[A-Z]{3}[ABCFGHLJPTF]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}";
  static const enterPan = 'Enter PAN';
  static const startProceed = 'Save & Proceed';
  static const next = 'Next';
  static const skipNomineeDetails = 'Skip Nominee Details';
  static const cancelTxt = 'Cancel';
  static const nomineesName = 'Nominee’s Name';
  static const fullNameAdhar = 'Full Name (as per PAN) ';
  static const fullNameHint = 'Please enter full name as per Adhar ';
  static const nomineeName = 'Nominee’s Name';
  static const nomineeNameHint = 'Please enter Nominee’s Name';
  static const mothersName = 'Mother’s Name';
  static const mothersNameHint = 'Please enter Mother’s Name';
  static const fathersName = 'Father’s Name';
  static const fathersNameHint = 'Please enter Father’s Name';
  static const accountNumber = 'Account number';
  static const accountNumberHint = 'Please enter account number';
  static const confirmaccountNumber = 'Confirm account number';
  static const confirmaccountNumberHint = 'Please confirm account number';
  static const textIFSC = 'IFSC ';
  static const textIFSCHint = 'Please enter IFSC';
  static const bankName = 'Bank Name';
  static const bankNameHint = 'Please enter Bank Name';
  static const bankVerificationTitle = 'Bank Detail Verification';
  static const bankVerificationSubTtile =
      'We want to verify your bank account. We will be crediting ₹1 in your bank account for verification.';
  static const bankVerifiedTitle = 'Bank account verified';
  static const bankVerifiedSubTtile =
      'Congratulations! Your account has been verified. ';
  static const String addCustomerText = 'Add a customer';
  static const String pressedBackButton = 'Pressed Back button';
  static const String bankDetails = 'Bank Details';
  static const String tapToAdd = 'Tap to add';
  static const String addACustomer = 'Add a customer';
  static const String tapToCheck = 'Tap to check';
  static const String checkKYCStatus = 'Check KYC Status';
  static const String panMandatory =
      'PAN is mandatory step to proceed with gold loan processing';
  static const String relationWithNominee = 'Relation with Nominee';
  static const List<String> nomineeRelations = [
    'Mother',
    'Father',
    'Son',
    'Daughter',
    'Brother',
    'Sister'
  ];
  static const String gender = 'Gender';
  static const String dob = 'Date of birth';
  static const List<String> genderOptions = ['MALE', 'FEMALE', 'OTHERS'];
  static const String physicallyChallengedTxt = 'Physically challenged';
  static const List<String> physicallyChallenged = ['Yes', 'No'];
  static const String maritalStatus = 'Marital Status';
  static const List<String> maritalStatusOptions = ['Single', 'Married'];
  static const String fullName = 'First Name *  ';
  static const String fullNameHint1 = 'Enter full name';
  static const String lastName = 'Last Name *  ';
  static const String lastNameHint = 'Enter last name';
  static const String contactNumber = 'Contact Number *';
  static const String contactNumberHint = 'Please enter Contact Number *';
  static const String email = 'Email Address';
  static const String emailHint = 'Please enter Email Address';
  static const String customerID = 'Customer ID *';
  static const String customerIDHint = 'Please enter customer ID';
  static const String religion = 'Religion *  ';
  static const String caste = 'Caste *  ';
  static const String occupationtatus = 'Occupation Status *  ';
  static const String income = 'income *  ';
  static const String permanentAddressLine = 'Permanent Address Line 1 *';
  static const String permanentAddressLine2 = 'Permanent Address Line 2 ';
  static const String dateofBirth = 'Date of Birth *  ';
  static const String dateofBirthHint = 'Pick the date of birth';
  static const String areaManagerAdminName = 'Area Manager/ Admin Name *';
  static const String selectOption = '-- Select Option --';
  static const String leadSource = 'Lead Source * ';
  static const String geoClass = 'Geo Class *';
  static const String geoClassHint = 'Pick the Geo Class *';

  static const String landHoldingValueinHectares =
      'Land Holding Value in Hectares';
  static const String landHoldingValueinHectaresHint =
      'Select Land Holding Value in Hectares';
  static const String presentKYCStatus = 'Present KYC Status';
  static const String presentKYCStatusHint = 'Select present KYC Status';
  static const String iscurrentaddresssameaspermanentaddress =
      'Is current address same as permanent address *';
  static const List<String> iscurrentaddresssameaspermanentaddressBool = [
    'Yes',
    'No'
  ];
  static const String landHoldingtype = 'Land Holding type';
  static const List<String> landHoldingtypeSelection = [
    'Owned',
    'Leased',
    'Shared'
  ];
  // static const String dateofBirth = 'Date of Birth *  ';
  // static const String dateofBirthHint = 'Pick the date of birth';
}
