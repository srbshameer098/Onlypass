
class FecilitiesModel {
  String? id;
  String? tier;
  String? gender;
  String? facilityName;
  String? contactPerson;
  String? facilityType;
  String? emailAddress;
  String? phoneNumber;
  String? websiteUrl;
  String? logoUrl;
  String? description;
  List<dynamic>? images;
  String? address;
  int? pinCode;
  String? country;
  String? state;
  String? latitudeLongitude;
  List<dynamic>? amenities;
  List<dynamic>? equipments;
  List<FacilityTiming>? facilityTiming;
  int? admissionFee;
  int? dailyPass;
  int? monthlyPass;
  int? threeMonthPass;
  int? sixMonthPass;
  int? annualPass;
  String? other;
  List<dynamic>? review;
  String? createdAt;
  String? updatedAt;
  int? v;

  FecilitiesModel({this.id, this.tier, this.gender, this.facilityName, this.contactPerson, this.facilityType, this.emailAddress, this.phoneNumber, this.websiteUrl, this.logoUrl, this.description, this.images, this.address, this.pinCode, this.country, this.state, this.latitudeLongitude, this.amenities, this.equipments, this.facilityTiming, this.admissionFee, this.dailyPass, this.monthlyPass, this.threeMonthPass, this.sixMonthPass, this.annualPass, this.other, this.review, this.createdAt, this.updatedAt, this.v});

  FecilitiesModel.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["tier"] is String) {
      tier = json["tier"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["facilityName"] is String) {
      facilityName = json["facilityName"];
    }
    if(json["contactPerson"] is String) {
      contactPerson = json["contactPerson"];
    }
    if(json["facility_type"] is String) {
      facilityType = json["facility_type"];
    }
    if(json["emailAddress"] is String) {
      emailAddress = json["emailAddress"];
    }
    if(json["phoneNumber"] is String) {
      phoneNumber = json["phoneNumber"];
    }
    if(json["websiteURL"] is String) {
      websiteUrl = json["websiteURL"];
    }
    if(json["logoUrl"] is String) {
      logoUrl = json["logoUrl"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["images"] is List) {
      images = json["images"] ?? [];
    }
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["pin_code"] is num) {
      pinCode = (json["pin_code"] as num).toInt();
    }
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
    if(json["latitude_longitude"] is String) {
      latitudeLongitude = json["latitude_longitude"];
    }
    if(json["amenities"] is List) {
      amenities = json["amenities"] ?? [];
    }
    if(json["equipments"] is List) {
      equipments = json["equipments"] ?? [];
    }
    if(json["facilityTiming"] is List) {
      facilityTiming = json["facilityTiming"] == null ? null : (json["facilityTiming"] as List).map((e) => FacilityTiming.fromJson(e)).toList();
    }
    if(json["admission_fee"] is num) {
      admissionFee = (json["admission_fee"] as num).toInt();
    }
    if(json["daily_pass"] is num) {
      dailyPass = (json["daily_pass"] as num).toInt();
    }
    if(json["monthly_pass"] is num) {
      monthlyPass = (json["monthly_pass"] as num).toInt();
    }
    if(json["threeMonth_pass"] is num) {
      threeMonthPass = (json["threeMonth_pass"] as num).toInt();
    }
    if(json["sixMonth_pass"] is num) {
      sixMonthPass = (json["sixMonth_pass"] as num).toInt();
    }
    if(json["annual_pass"] is num) {
      annualPass = (json["annual_pass"] as num).toInt();
    }
    if(json["other"] is String) {
      other = json["other"];
    }
    if(json["review"] is List) {
      review = json["review"] ?? [];
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

  static List<FecilitiesModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FecilitiesModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["tier"] = tier;
    _data["gender"] = gender;
    _data["facilityName"] = facilityName;
    _data["contactPerson"] = contactPerson;
    _data["facility_type"] = facilityType;
    _data["emailAddress"] = emailAddress;
    _data["phoneNumber"] = phoneNumber;
    _data["websiteURL"] = websiteUrl;
    _data["logoUrl"] = logoUrl;
    _data["description"] = description;
    if(images != null) {
      _data["images"] = images;
    }
    _data["address"] = address;
    _data["pin_code"] = pinCode;
    _data["country"] = country;
    _data["state"] = state;
    _data["latitude_longitude"] = latitudeLongitude;
    if(amenities != null) {
      _data["amenities"] = amenities;
    }
    if(equipments != null) {
      _data["equipments"] = equipments;
    }
    if(facilityTiming != null) {
      _data["facilityTiming"] = facilityTiming?.map((e) => e.toJson()).toList();
    }
    _data["admission_fee"] = admissionFee;
    _data["daily_pass"] = dailyPass;
    _data["monthly_pass"] = monthlyPass;
    _data["threeMonth_pass"] = threeMonthPass;
    _data["sixMonth_pass"] = sixMonthPass;
    _data["annual_pass"] = annualPass;
    _data["other"] = other;
    if(review != null) {
      _data["review"] = review;
    }
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    return _data;
  }

  FecilitiesModel copyWith({
    String? id,
    String? tier,
    String? gender,
    String? facilityName,
    String? contactPerson,
    String? facilityType,
    String? emailAddress,
    String? phoneNumber,
    String? websiteUrl,
    String? logoUrl,
    String? description,
    List<dynamic>? images,
    String? address,
    int? pinCode,
    String? country,
    String? state,
    String? latitudeLongitude,
    List<dynamic>? amenities,
    List<dynamic>? equipments,
    List<FacilityTiming>? facilityTiming,
    int? admissionFee,
    int? dailyPass,
    int? monthlyPass,
    int? threeMonthPass,
    int? sixMonthPass,
    int? annualPass,
    String? other,
    List<dynamic>? review,
    String? createdAt,
    String? updatedAt,
    int? v,
  }) => FecilitiesModel(
    id: id ?? this.id,
    tier: tier ?? this.tier,
    gender: gender ?? this.gender,
    facilityName: facilityName ?? this.facilityName,
    contactPerson: contactPerson ?? this.contactPerson,
    facilityType: facilityType ?? this.facilityType,
    emailAddress: emailAddress ?? this.emailAddress,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    websiteUrl: websiteUrl ?? this.websiteUrl,
    logoUrl: logoUrl ?? this.logoUrl,
    description: description ?? this.description,
    images: images ?? this.images,
    address: address ?? this.address,
    pinCode: pinCode ?? this.pinCode,
    country: country ?? this.country,
    state: state ?? this.state,
    latitudeLongitude: latitudeLongitude ?? this.latitudeLongitude,
    amenities: amenities ?? this.amenities,
    equipments: equipments ?? this.equipments,
    facilityTiming: facilityTiming ?? this.facilityTiming,
    admissionFee: admissionFee ?? this.admissionFee,
    dailyPass: dailyPass ?? this.dailyPass,
    monthlyPass: monthlyPass ?? this.monthlyPass,
    threeMonthPass: threeMonthPass ?? this.threeMonthPass,
    sixMonthPass: sixMonthPass ?? this.sixMonthPass,
    annualPass: annualPass ?? this.annualPass,
    other: other ?? this.other,
    review: review ?? this.review,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    v: v ?? this.v,
  );
}

class FacilityTiming {
  Morning? morning;
  Evening? evening;
  String? day;
  String? id;

  FacilityTiming({this.morning, this.evening, this.day, this.id});

  FacilityTiming.fromJson(Map<String, dynamic> json) {
    if(json["morning"] is Map) {
      morning = json["morning"] == null ? null : Morning.fromJson(json["morning"]);
    }
    if(json["evening"] is Map) {
      evening = json["evening"] == null ? null : Evening.fromJson(json["evening"]);
    }
    if(json["day"] is String) {
      day = json["day"];
    }
    if(json["_id"] is String) {
      id = json["_id"];
    }
  }

  static List<FacilityTiming> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FacilityTiming.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(morning != null) {
      _data["morning"] = morning?.toJson();
    }
    if(evening != null) {
      _data["evening"] = evening?.toJson();
    }
    _data["day"] = day;
    _data["_id"] = id;
    return _data;
  }

  FacilityTiming copyWith({
    Morning? morning,
    Evening? evening,
    String? day,
    String? id,
  }) => FacilityTiming(
    morning: morning ?? this.morning,
    evening: evening ?? this.evening,
    day: day ?? this.day,
    id: id ?? this.id,
  );
}

class Evening {
  String? start;
  String? end;
  bool? holiday;

  Evening({this.start, this.end, this.holiday});

  Evening.fromJson(Map<String, dynamic> json) {
    if(json["start"] is String) {
      start = json["start"];
    }
    if(json["end"] is String) {
      end = json["end"];
    }
    if(json["holiday"] is bool) {
      holiday = json["holiday"];
    }
  }

  static List<Evening> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Evening.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    _data["holiday"] = holiday;
    return _data;
  }

  Evening copyWith({
    String? start,
    String? end,
    bool? holiday,
  }) => Evening(
    start: start ?? this.start,
    end: end ?? this.end,
    holiday: holiday ?? this.holiday,
  );
}

class Morning {
  String? start;
  String? end;
  bool? holiday;

  Morning({this.start, this.end, this.holiday});

  Morning.fromJson(Map<String, dynamic> json) {
    if(json["start"] is String) {
      start = json["start"];
    }
    if(json["end"] is String) {
      end = json["end"];
    }
    if(json["holiday"] is bool) {
      holiday = json["holiday"];
    }
  }

  static List<Morning> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Morning.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    _data["holiday"] = holiday;
    return _data;
  }

  Morning copyWith({
    String? start,
    String? end,
    bool? holiday,
  }) => Morning(
    start: start ?? this.start,
    end: end ?? this.end,
    holiday: holiday ?? this.holiday,
  );
}