class DemographicDetails {
  String? firstName;
  String? lastName;
  String? gender;
  String? dateOfBirth;
  String? personalPAN;
  String? motherName;
  String? fatherName;
  String? maritalStatus;

  DemographicDetails();
}

class BankStatementDetails {
  String? participantBankAccountNumber;
  String? participantBankIFSC;
  String? participantBankName;

  BankStatementDetails();
}

class NomineeDetails {
  String? nomineeFullName;
  String? nomineeRelation;

  NomineeDetails();
}

class AddCustomerPayload {
  late DemographicDetails demographicDetails;
  late BankStatementDetails bankStatementDetails;
  late List<NomineeDetails> nomineeDetails;

  AddCustomerPayload() {
    demographicDetails = DemographicDetails();
    bankStatementDetails = BankStatementDetails();
    nomineeDetails = [];
  }

  Map<String, dynamic> toJson() {
    return {
      "demographicDetails": {
        "gender": demographicDetails.gender,
        "dateOfBirth": demographicDetails.dateOfBirth,
        "personalPAN": demographicDetails.personalPAN,
        "motherName": demographicDetails.motherName,
        "fatherName": demographicDetails.fatherName,
        "maritalStatus": demographicDetails.maritalStatus,
      },
      "bankStatementDetails": {
        "participantBankAccountNumber":
            bankStatementDetails.participantBankAccountNumber,
        "participantBankIFSC": bankStatementDetails.participantBankIFSC,
        "participantBankName": bankStatementDetails.participantBankName,
      },
      "nomineeDetails": nomineeDetails.map((nominee) {
        return {
          "nomineeFullName": nominee.nomineeFullName,
          "nomineeRelation": nominee.nomineeRelation,
        };
      }).toList(),
    };
  }
}
