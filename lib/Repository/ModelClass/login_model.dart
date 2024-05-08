
class Loginmodel {
  Customer? customer;
  String? accessToken;

  Loginmodel({this.customer, this.accessToken});

  Loginmodel.fromJson(Map<String, dynamic> json) {
    if(json["customer"] is Map) {
      customer = json["customer"] == null ? null : Customer.fromJson(json["customer"]);
    }
    if(json["accessToken"] is String) {
      accessToken = json["accessToken"];
    }
  }

  static List<Loginmodel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Loginmodel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(customer != null) {
      _data["customer"] = customer?.toJson();
    }
    _data["accessToken"] = accessToken;
    return _data;
  }

  Loginmodel copyWith({
    Customer? customer,
    String? accessToken,
  }) => Loginmodel(
    customer: customer ?? this.customer,
    accessToken: accessToken ?? this.accessToken,
  );
}

class Customer {
  String? id;
  String? phoneNumber;
  String? countryId;
  String? gender;
  String? name;
  String? email;
  dynamic profilePic;
  String? height;
  String? weight;
  String? address;
  String? referralCode;
  bool? isOffline;
  List<String>? activeMembership;
  List<dynamic>? upcomingMemberships;
  List<dynamic>? membershipHistory;
  String? emergencyContactName;
  String? emergencyContactNumber;
  List<dynamic>? accountUsing;
  String? createdAt;
  String? updatedAt;
  int? v;

  Customer({this.id, this.phoneNumber, this.countryId, this.gender, this.name, this.email, this.profilePic, this.height, this.weight, this.address, this.referralCode, this.isOffline, this.activeMembership, this.upcomingMemberships, this.membershipHistory, this.emergencyContactName, this.emergencyContactNumber, this.accountUsing, this.createdAt, this.updatedAt, this.v});

  Customer.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["phoneNumber"] is String) {
      phoneNumber = json["phoneNumber"];
    }
    if(json["countryId"] is String) {
      countryId = json["countryId"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    profilePic = json["profilePic"];
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["weight"] is String) {
      weight = json["weight"];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["referral_code"] is String) {
      referralCode = json["referral_code"];
    }
    if(json["is_offline"] is bool) {
      isOffline = json["is_offline"];
    }
    if(json["activeMembership"] is List) {
      activeMembership = json["activeMembership"] == null ? null : List<String>.from(json["activeMembership"]);
    }
    if(json["upcomingMemberships"] is List) {
      upcomingMemberships = json["upcomingMemberships"] ?? [];
    }
    if(json["membershipHistory"] is List) {
      membershipHistory = json["membershipHistory"] ?? [];
    }
    if(json["emergencyContactName"] is String) {
      emergencyContactName = json["emergencyContactName"];
    }
    if(json["emergencyContactNumber"] is String) {
      emergencyContactNumber = json["emergencyContactNumber"];
    }
    if(json["accountUsing"] is List) {
      accountUsing = json["accountUsing"] ?? [];
    }
    if(json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if(json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if(json["__v"] is num) {
      v = (json["__v"] as num).toInt();
    }
  }

  static List<Customer> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Customer.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["phoneNumber"] = phoneNumber;
    _data["countryId"] = countryId;
    _data["gender"] = gender;
    _data["name"] = name;
    _data["email"] = email;
    _data["profilePic"] = profilePic;
    _data["height"] = height;
    _data["weight"] = weight;
    _data["address"] = address;
    _data["referral_code"] = referralCode;
    _data["is_offline"] = isOffline;
    if(activeMembership != null) {
      _data["activeMembership"] = activeMembership;
    }
    if(upcomingMemberships != null) {
      _data["upcomingMemberships"] = upcomingMemberships;
    }
    if(membershipHistory != null) {
      _data["membershipHistory"] = membershipHistory;
    }
    _data["emergencyContactName"] = emergencyContactName;
    _data["emergencyContactNumber"] = emergencyContactNumber;
    if(accountUsing != null) {
      _data["accountUsing"] = accountUsing;
    }
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    return _data;
  }

  Customer copyWith({
    String? id,
    String? phoneNumber,
    String? countryId,
    String? gender,
    String? name,
    String? email,
    dynamic profilePic,
    String? height,
    String? weight,
    String? address,
    String? referralCode,
    bool? isOffline,
    List<String>? activeMembership,
    List<dynamic>? upcomingMemberships,
    List<dynamic>? membershipHistory,
    String? emergencyContactName,
    String? emergencyContactNumber,
    List<dynamic>? accountUsing,
    String? createdAt,
    String? updatedAt,
    int? v,
  }) => Customer(
    id: id ?? this.id,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    countryId: countryId ?? this.countryId,
    gender: gender ?? this.gender,
    name: name ?? this.name,
    email: email ?? this.email,
    profilePic: profilePic ?? this.profilePic,
    height: height ?? this.height,
    weight: weight ?? this.weight,
    address: address ?? this.address,
    referralCode: referralCode ?? this.referralCode,
    isOffline: isOffline ?? this.isOffline,
    activeMembership: activeMembership ?? this.activeMembership,
    upcomingMemberships: upcomingMemberships ?? this.upcomingMemberships,
    membershipHistory: membershipHistory ?? this.membershipHistory,
    emergencyContactName: emergencyContactName ?? this.emergencyContactName,
    emergencyContactNumber: emergencyContactNumber ?? this.emergencyContactNumber,
    accountUsing: accountUsing ?? this.accountUsing,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    v: v ?? this.v,
  );
}