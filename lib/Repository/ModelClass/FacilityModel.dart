
class FacilityModel {
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
  List<String>? images;
  String? address;
  int? pinCode;
  String? country;
  String? state;
  String? latitudeLongitude;
  List<Amenities>? amenities;
  List<Equipments>? equipments;
  List<FacilityTiming>? facilityTiming;
  int? admissionFee;
  String? other;
  List<String>? review;
  String? createdAt;
  String? updatedAt;
  int? v;

  FacilityModel({this.id, this.tier, this.gender, this.facilityName, this.contactPerson, this.facilityType, this.emailAddress, this.phoneNumber, this.websiteUrl, this.logoUrl, this.description, this.images, this.address, this.pinCode, this.country, this.state, this.latitudeLongitude, this.amenities, this.equipments, this.facilityTiming, this.admissionFee, this.other, this.review, this.createdAt, this.updatedAt, this.v});

  FacilityModel.fromJson(Map<String, dynamic> json) {
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
      images = json["images"] == null ? null : List<String>.from(json["images"]);
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
      amenities = json["amenities"] == null ? null : (json["amenities"] as List).map((e) => Amenities.fromJson(e)).toList();
    }
    if(json["equipments"] is List) {
      equipments = json["equipments"] == null ? null : (json["equipments"] as List).map((e) => Equipments.fromJson(e)).toList();
    }
    if(json["facilityTiming"] is List) {
      facilityTiming = json["facilityTiming"] == null ? null : (json["facilityTiming"] as List).map((e) => FacilityTiming.fromJson(e)).toList();
    }
    if(json["admission_fee"] is num) {
      admissionFee = (json["admission_fee"] as num).toInt();
    }
    if(json["other"] is String) {
      other = json["other"];
    }
    if(json["review"] is List) {
      review = json["review"] == null ? null : List<String>.from(json["review"]);
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

  static List<FacilityModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FacilityModel.fromJson(map)).toList();
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
      _data["amenities"] = amenities?.map((e) => e.toJson()).toList();
    }
    if(equipments != null) {
      _data["equipments"] = equipments?.map((e) => e.toJson()).toList();
    }
    if(facilityTiming != null) {
      _data["facilityTiming"] = facilityTiming?.map((e) => e.toJson()).toList();
    }
    _data["admission_fee"] = admissionFee;
    _data["other"] = other;
    if(review != null) {
      _data["review"] = review;
    }
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    return _data;
  }

  FacilityModel copyWith({
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
    List<String>? images,
    String? address,
    int? pinCode,
    String? country,
    String? state,
    String? latitudeLongitude,
    List<Amenities>? amenities,
    List<Equipments>? equipments,
    List<FacilityTiming>? facilityTiming,
    int? admissionFee,
    String? other,
    List<String>? review,
    String? createdAt,
    String? updatedAt,
    int? v,
  }) => FacilityModel(
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

class Equipments {
  String? equipmentName;
  String? equipmentImg;
  String? id;

  Equipments({this.equipmentName, this.equipmentImg, this.id});

  Equipments.fromJson(Map<String, dynamic> json) {
    if(json["equipment_name"] is String) {
      equipmentName = json["equipment_name"];
    }
    if(json["equipment_img"] is String) {
      equipmentImg = json["equipment_img"];
    }
    if(json["_id"] is String) {
      id = json["_id"];
    }
  }

  static List<Equipments> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Equipments.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["equipment_name"] = equipmentName;
    _data["equipment_img"] = equipmentImg;
    _data["_id"] = id;
    return _data;
  }

  Equipments copyWith({
    String? equipmentName,
    String? equipmentImg,
    String? id,
  }) => Equipments(
    equipmentName: equipmentName ?? this.equipmentName,
    equipmentImg: equipmentImg ?? this.equipmentImg,
    id: id ?? this.id,
  );
}

class Amenities {
  String? amenitiesName;
  String? isPaid;
  String? iconUrl;
  String? id;

  Amenities({this.amenitiesName, this.isPaid, this.iconUrl, this.id});

  Amenities.fromJson(Map<String, dynamic> json) {
    if(json["amenities_name"] is String) {
      amenitiesName = json["amenities_name"];
    }
    if(json["isPaid"] is String) {
      isPaid = json["isPaid"];
    }
    if(json["iconUrl"] is String) {
      iconUrl = json["iconUrl"];
    }
    if(json["_id"] is String) {
      id = json["_id"];
    }
  }

  static List<Amenities> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Amenities.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["amenities_name"] = amenitiesName;
    _data["isPaid"] = isPaid;
    _data["iconUrl"] = iconUrl;
    _data["_id"] = id;
    return _data;
  }

  Amenities copyWith({
    String? amenitiesName,
    String? isPaid,
    String? iconUrl,
    String? id,
  }) => Amenities(
    amenitiesName: amenitiesName ?? this.amenitiesName,
    isPaid: isPaid ?? this.isPaid,
    iconUrl: iconUrl ?? this.iconUrl,
    id: id ?? this.id,
  );
}