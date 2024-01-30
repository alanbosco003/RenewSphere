class AddCustomerResponse {
  String? id;
  String? securedlkId;
  DemographicDetails? demographicDetails;
  BankStatementDetails? bankStatementDetails;
  List<ContactDetails>? contactDetails;
  String? relatedDocDetails;
  List<AddressDetails>? addressDetails;
  String? incomeDetails;
  String? incomeRange;
  String? nomineeDetails;
  String? verificationDate;
  String? leadSource;
  String? agentId;
  String? customerSource;
  String? kycStatus;
  String? notes;
  String? createdDate;
  String? modifiedDate;
  bool? isDeleted;

  AddCustomerResponse(
      {this.id,
      this.securedlkId,
      this.demographicDetails,
      this.bankStatementDetails,
      this.contactDetails,
      this.relatedDocDetails,
      this.addressDetails,
      this.incomeDetails,
      this.incomeRange,
      this.nomineeDetails,
      this.verificationDate,
      this.leadSource,
      this.agentId,
      this.customerSource,
      this.kycStatus,
      this.notes,
      this.createdDate,
      this.modifiedDate,
      this.isDeleted});

  AddCustomerResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    securedlkId = json['securedlkId'];
    demographicDetails = json['demographicDetails'] != null
        ? DemographicDetails.fromJson(json['demographicDetails'])
        : null;
    bankStatementDetails = json['bankStatementDetails'] != null
        ? BankStatementDetails.fromJson(json['bankStatementDetails'])
        : null;
    if (json['contactDetails'] != null) {
      contactDetails = <ContactDetails>[];
      json['contactDetails'].forEach((v) {
        contactDetails!.add(ContactDetails.fromJson(v));
      });
    }
    relatedDocDetails = json['relatedDocDetails'];
    if (json['addressDetails'] != null) {
      addressDetails = <AddressDetails>[];
      json['addressDetails'].forEach((v) {
        addressDetails!.add(AddressDetails.fromJson(v));
      });
    }
    incomeDetails = json['incomeDetails'];
    incomeRange = json['incomeRange'];
    nomineeDetails = json['nomineeDetails'];
    verificationDate = json['verificationDate'];
    leadSource = json['leadSource'];
    agentId = json['agentId'];
    customerSource = json['customerSource'];
    kycStatus = json['kycStatus'];
    notes = json['notes'];
    createdDate = json['createdDate'];
    modifiedDate = json['modifiedDate'];
    isDeleted = json['isDeleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['securedlkId'] = securedlkId;
    if (demographicDetails != null) {
      data['demographicDetails'] = demographicDetails!.toJson();
    }
    if (bankStatementDetails != null) {
      data['bankStatementDetails'] = bankStatementDetails!.toJson();
    }
    if (contactDetails != null) {
      data['contactDetails'] = contactDetails!.map((v) => v.toJson()).toList();
    }
    data['relatedDocDetails'] = relatedDocDetails;
    if (addressDetails != null) {
      data['addressDetails'] = addressDetails!.map((v) => v.toJson()).toList();
    }
    data['incomeDetails'] = incomeDetails;
    data['incomeRange'] = incomeRange;
    data['nomineeDetails'] = nomineeDetails;
    data['verificationDate'] = verificationDate;
    data['leadSource'] = leadSource;
    data['agentId'] = agentId;
    data['customerSource'] = customerSource;
    data['kycStatus'] = kycStatus;
    data['notes'] = notes;
    data['createdDate'] = createdDate;
    data['modifiedDate'] = modifiedDate;
    data['isDeleted'] = isDeleted;
    return data;
  }
}

class DemographicDetails {
  String? id;
  String? participantDetailId;
  String? typeOfBody;
  String? typeOfBodyOther;
  String? particantType;
  String? firstName;
  String? middleName;
  String? lastName;
  String? salutation;
  String? salutationForSpouseName;
  String? maritalStatus;
  String? physicallyChallenged;
  String? caste;
  String? category;
  String? minority;
  String? education;
  String? educationOther;
  String? occupation;
  String? profession;
  String? religion;
  String? nationality;
  String? fatherName;
  String? motherName;
  String? spouseName;
  String? parentsDependantsCount;
  String? childrenDependantsCount;
  int? dependantsCount;
  String? gender;
  String? dateOfBirth;
  String? personalPAN;
  String? udyamRegistrationNumber;
  String? landHoldingType;
  String? landHoldingValue;
  String? createdDate;
  String? modifiedDate;
  bool? isDeleted;

  DemographicDetails(
      {this.id,
      this.participantDetailId,
      this.typeOfBody,
      this.typeOfBodyOther,
      this.particantType,
      this.firstName,
      this.middleName,
      this.lastName,
      this.salutation,
      this.salutationForSpouseName,
      this.maritalStatus,
      this.physicallyChallenged,
      this.caste,
      this.category,
      this.minority,
      this.education,
      this.educationOther,
      this.occupation,
      this.profession,
      this.religion,
      this.nationality,
      this.fatherName,
      this.motherName,
      this.spouseName,
      this.parentsDependantsCount,
      this.childrenDependantsCount,
      this.dependantsCount,
      this.gender,
      this.dateOfBirth,
      this.personalPAN,
      this.udyamRegistrationNumber,
      this.landHoldingType,
      this.landHoldingValue,
      this.createdDate,
      this.modifiedDate,
      this.isDeleted});

  DemographicDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    participantDetailId = json['participantDetailId'];
    typeOfBody = json['typeOfBody'];
    typeOfBodyOther = json['typeOfBodyOther'];
    particantType = json['particantType'];
    firstName = json['firstName'];
    middleName = json['middleName'];
    lastName = json['lastName'];
    salutation = json['salutation'];
    salutationForSpouseName = json['salutationForSpouseName'];
    maritalStatus = json['maritalStatus'];
    physicallyChallenged = json['physicallyChallenged'];
    caste = json['caste'];
    category = json['category'];
    minority = json['minority'];
    education = json['education'];
    educationOther = json['educationOther'];
    occupation = json['occupation'];
    profession = json['profession'];
    religion = json['religion'];
    nationality = json['nationality'];
    fatherName = json['fatherName'];
    motherName = json['motherName'];
    spouseName = json['spouseName'];
    parentsDependantsCount = json['parentsDependantsCount'];
    childrenDependantsCount = json['childrenDependantsCount'];
    dependantsCount = json['dependantsCount'];
    gender = json['gender'];
    dateOfBirth = json['dateOfBirth'];
    personalPAN = json['personalPAN'];
    udyamRegistrationNumber = json['udyamRegistrationNumber'];
    landHoldingType = json['landHoldingType'];
    landHoldingValue = json['landHoldingValue'];
    createdDate = json['createdDate'];
    modifiedDate = json['modifiedDate'];
    isDeleted = json['isDeleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['participantDetailId'] = participantDetailId;
    data['typeOfBody'] = typeOfBody;
    data['typeOfBodyOther'] = typeOfBodyOther;
    data['particantType'] = particantType;
    data['firstName'] = firstName;
    data['middleName'] = middleName;
    data['lastName'] = lastName;
    data['salutation'] = salutation;
    data['salutationForSpouseName'] = salutationForSpouseName;
    data['maritalStatus'] = maritalStatus;
    data['physicallyChallenged'] = physicallyChallenged;
    data['caste'] = caste;
    data['category'] = category;
    data['minority'] = minority;
    data['education'] = education;
    data['educationOther'] = educationOther;
    data['occupation'] = occupation;
    data['profession'] = profession;
    data['religion'] = religion;
    data['nationality'] = nationality;
    data['fatherName'] = fatherName;
    data['motherName'] = motherName;
    data['spouseName'] = spouseName;
    data['parentsDependantsCount'] = parentsDependantsCount;
    data['childrenDependantsCount'] = childrenDependantsCount;
    data['dependantsCount'] = dependantsCount;
    data['gender'] = gender;
    data['dateOfBirth'] = dateOfBirth;
    data['personalPAN'] = personalPAN;
    data['udyamRegistrationNumber'] = udyamRegistrationNumber;
    data['landHoldingType'] = landHoldingType;
    data['landHoldingValue'] = landHoldingValue;
    data['createdDate'] = createdDate;
    data['modifiedDate'] = modifiedDate;
    data['isDeleted'] = isDeleted;
    return data;
  }
}

class BankStatementDetails {
  String? id;
  String? resourceId;
  String? participantBankName;
  String? participantBankAccountType;
  String? participantBankIFSC;
  String? participantBankCCODLimit;
  String? participantBankAccountNumber;
  String? participantBankAccountHolderName;
  String? participantBankBranch;
  String? numberOfYears;
  String? createdDate;
  String? modifiedDate;
  bool? isDeleted;
  String? razorpayLink;

  BankStatementDetails(
      {this.id,
      this.resourceId,
      this.participantBankName,
      this.participantBankAccountType,
      this.participantBankIFSC,
      this.participantBankCCODLimit,
      this.participantBankAccountNumber,
      this.participantBankAccountHolderName,
      this.participantBankBranch,
      this.numberOfYears,
      this.createdDate,
      this.modifiedDate,
      this.isDeleted,
      this.razorpayLink});

  BankStatementDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceId = json['resourceId'];
    participantBankName = json['participantBankName'];
    participantBankAccountType = json['participantBankAccountType'];
    participantBankIFSC = json['participantBankIFSC'];
    participantBankCCODLimit = json['participantBankCCODLimit'];
    participantBankAccountNumber = json['participantBankAccountNumber'];
    participantBankAccountHolderName = json['participantBankAccountHolderName'];
    participantBankBranch = json['participantBankBranch'];
    numberOfYears = json['numberOfYears'];
    createdDate = json['createdDate'];
    modifiedDate = json['modifiedDate'];
    isDeleted = json['isDeleted'];
    razorpayLink = json['razorpayLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['resourceId'] = this.resourceId;
    data['participantBankName'] = this.participantBankName;
    data['participantBankAccountType'] = this.participantBankAccountType;
    data['participantBankIFSC'] = this.participantBankIFSC;
    data['participantBankCCODLimit'] = this.participantBankCCODLimit;
    data['participantBankAccountNumber'] = this.participantBankAccountNumber;
    data['participantBankAccountHolderName'] =
        this.participantBankAccountHolderName;
    data['participantBankBranch'] = this.participantBankBranch;
    data['numberOfYears'] = this.numberOfYears;
    data['createdDate'] = this.createdDate;
    data['modifiedDate'] = this.modifiedDate;
    data['isDeleted'] = this.isDeleted;
    data['razorpayLink'] = this.razorpayLink;
    return data;
  }
}

class ContactDetails {
  String? id;
  String? resourceId;
  String? contactType;
  String? mobile;
  String? email;
  String? landline;
  String? isVerified;
  bool? isContactPrimary;
  String? createdDate;
  String? modifiedDate;
  bool? isDeleted;

  ContactDetails(
      {this.id,
      this.resourceId,
      this.contactType,
      this.mobile,
      this.email,
      this.landline,
      this.isVerified,
      this.isContactPrimary,
      this.createdDate,
      this.modifiedDate,
      this.isDeleted});

  ContactDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceId = json['resourceId'];
    contactType = json['contactType'];
    mobile = json['mobile'];
    email = json['email'];
    landline = json['landline'];
    isVerified = json['isVerified'];
    isContactPrimary = json['isContactPrimary'];
    createdDate = json['createdDate'];
    modifiedDate = json['modifiedDate'];
    isDeleted = json['isDeleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['resourceId'] = resourceId;
    data['contactType'] = contactType;
    data['mobile'] = mobile;
    data['email'] = email;
    data['landline'] = landline;
    data['isVerified'] = isVerified;
    data['isContactPrimary'] = isContactPrimary;
    data['createdDate'] = createdDate;
    data['modifiedDate'] = modifiedDate;
    data['isDeleted'] = isDeleted;
    return data;
  }
}

class AddressDetails {
  String? id;
  String? resourceId;
  bool? isCurrent;
  bool? isPermanent;
  int? yearsOfStay;
  String? monthsOfStay;
  String? address;
  String? city;
  String? state;
  String? landmark;
  String? landline;
  String? residenceAccommodation;
  String? officeAccommodation;
  String? monthlyRental;
  String? pincode;
  String? preferredEmail;
  String? geoClass;
  String? createdDate;
  String? modifiedDate;
  bool? isDeleted;

  AddressDetails(
      {this.id,
      this.resourceId,
      this.isCurrent,
      this.isPermanent,
      this.yearsOfStay,
      this.monthsOfStay,
      this.address,
      this.city,
      this.state,
      this.landmark,
      this.landline,
      this.residenceAccommodation,
      this.officeAccommodation,
      this.monthlyRental,
      this.pincode,
      this.preferredEmail,
      this.geoClass,
      this.createdDate,
      this.modifiedDate,
      this.isDeleted});

  AddressDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceId = json['resourceId'];
    isCurrent = json['isCurrent'];
    isPermanent = json['isPermanent'];
    yearsOfStay = json['yearsOfStay'];
    monthsOfStay = json['monthsOfStay'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    landmark = json['landmark'];
    landline = json['landline'];
    residenceAccommodation = json['residenceAccommodation'];
    officeAccommodation = json['officeAccommodation'];
    monthlyRental = json['monthlyRental'];
    pincode = json['pincode'];
    preferredEmail = json['preferredEmail'];
    geoClass = json['geoClass'];
    createdDate = json['createdDate'];
    modifiedDate = json['modifiedDate'];
    isDeleted = json['isDeleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['resourceId'] = this.resourceId;
    data['isCurrent'] = this.isCurrent;
    data['isPermanent'] = this.isPermanent;
    data['yearsOfStay'] = this.yearsOfStay;
    data['monthsOfStay'] = this.monthsOfStay;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['landmark'] = this.landmark;
    data['landline'] = this.landline;
    data['residenceAccommodation'] = this.residenceAccommodation;
    data['officeAccommodation'] = this.officeAccommodation;
    data['monthlyRental'] = this.monthlyRental;
    data['pincode'] = this.pincode;
    data['preferredEmail'] = this.preferredEmail;
    data['geoClass'] = this.geoClass;
    data['createdDate'] = this.createdDate;
    data['modifiedDate'] = this.modifiedDate;
    data['isDeleted'] = this.isDeleted;
    return data;
  }
}
