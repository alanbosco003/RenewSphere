class LoginResponse {
  String? id;
  String? fullName;
  String? email;
  String? contactNumber;
  String? referenceId;
  String? lenderId;
  String? permissions;
  String? primaryRoleId;
  String? primaryRoleName;
  String? sessionId;
  String? authorization;
  String? createdDate;
  String? csrfToken;

  LoginResponse(
      {this.id,
      this.fullName,
      this.email,
      this.contactNumber,
      this.referenceId,
      this.lenderId,
      this.permissions,
      this.primaryRoleId,
      this.primaryRoleName,
      this.sessionId,
      this.authorization,
      this.createdDate,
      this.csrfToken});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    contactNumber = json['contactNumber'];
    referenceId = json['referenceId'];
    lenderId = json['lenderId'];
    permissions = json['permissions'];
    primaryRoleId = json['primaryRoleId'];
    primaryRoleName = json['primaryRoleName'];
    sessionId = json['sessionId'];
    authorization = json['authorization'];
    createdDate = json['createdDate'];
    csrfToken = json['csrfToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['fullName'] = fullName;
    data['email'] = email;
    data['contactNumber'] = contactNumber;
    data['referenceId'] = referenceId;
    data['lenderId'] = lenderId;
    data['permissions'] = permissions;
    data['primaryRoleId'] = primaryRoleId;
    data['primaryRoleName'] = primaryRoleName;
    data['sessionId'] = sessionId;
    data['authorization'] = authorization;
    data['createdDate'] = createdDate;
    data['csrfToken'] = csrfToken;
    return data;
  }
}
