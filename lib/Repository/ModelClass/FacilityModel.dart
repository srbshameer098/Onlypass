
class FacilityModel {
  List<dynamic>? accessDevices;
  List<Category>? category;
  String? id;
  String? tier;
  List<String>? gender;
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
  List<FacilityTiming>? facilityTiming;
  int? admissionFee;
  int? dailyPass;
  String? other;
  List<dynamic>? review;
  String? createdAt;
  String? updatedAt;
  int? v;
  List<dynamic>? paymentInfo;
  int? monthlyPass;
  int? annualPass;
  RushHours? rushHours;
  String? link;
  List<Equipments>? equipments;
  int? threeMonthPass;
  int? sixMonthPass;

  FacilityModel({this.accessDevices, this.category, this.id, this.tier, this.gender, this.facilityName, this.contactPerson, this.facilityType, this.emailAddress, this.phoneNumber, this.websiteUrl, this.logoUrl, this.description, this.images, this.address, this.pinCode, this.country, this.state, this.latitudeLongitude, this.amenities, this.facilityTiming, this.admissionFee, this.dailyPass, this.other, this.review, this.createdAt, this.updatedAt, this.v, this.paymentInfo, this.monthlyPass, this.annualPass, this.rushHours, this.link, this.equipments, this.threeMonthPass, this.sixMonthPass});

  FacilityModel.fromJson(Map<String, dynamic> json) {
    if(json["access_devices"] is List) {
      accessDevices = json["access_devices"] ?? [];
    }
    if(json["category"] is List) {
      category = json["category"] == null ? null : (json["category"] as List).map((e) => Category.fromJson(e)).toList();
    }
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["tier"] is String) {
      tier = json["tier"];
    }
    if(json["gender"] is List) {
      gender = json["gender"] == null ? null : List<String>.from(json["gender"]);
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
    if(json["facilityTiming"] is List) {
      facilityTiming = json["facilityTiming"] == null ? null : (json["facilityTiming"] as List).map((e) => FacilityTiming.fromJson(e)).toList();
    }
    if(json["admission_fee"] is num) {
      admissionFee = (json["admission_fee"] as num).toInt();
    }
    if(json["daily_pass"] is num) {
      dailyPass = (json["daily_pass"] as num).toInt();
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
    if(json["paymentInfo"] is List) {
      paymentInfo = json["paymentInfo"] ?? [];
    }
    if(json["monthly_pass"] is num) {
      monthlyPass = (json["monthly_pass"] as num).toInt();
    }
    if(json["annual_pass"] is num) {
      annualPass = (json["annual_pass"] as num).toInt();
    }
    if(json["rushHours"] is Map) {
      rushHours = json["rushHours"] == null ? null : RushHours.fromJson(json["rushHours"]);
    }
    if(json["link"] is String) {
      link = json["link"];
    }
    if(json["equipments"] is List) {
      equipments = json["equipments"] == null ? null : (json["equipments"] as List).map((e) => Equipments.fromJson(e)).toList();
    }
    if(json["threeMonth_pass"] is num) {
      threeMonthPass = (json["threeMonth_pass"] as num).toInt();
    }
    if(json["sixMonth_pass"] is num) {
      sixMonthPass = (json["sixMonth_pass"] as num).toInt();
    }
  }

  static List<FacilityModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => FacilityModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(accessDevices != null) {
      _data["access_devices"] = accessDevices;
    }
    if(category != null) {
      _data["category"] = category?.map((e) => e.toJson()).toList();
    }
    _data["_id"] = id;
    _data["tier"] = tier;
    if(gender != null) {
      _data["gender"] = gender;
    }
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
    if(facilityTiming != null) {
      _data["facilityTiming"] = facilityTiming?.map((e) => e.toJson()).toList();
    }
    _data["admission_fee"] = admissionFee;
    _data["daily_pass"] = dailyPass;
    _data["other"] = other;
    if(review != null) {
      _data["review"] = review;
    }
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    if(paymentInfo != null) {
      _data["paymentInfo"] = paymentInfo;
    }
    _data["monthly_pass"] = monthlyPass;
    _data["annual_pass"] = annualPass;
    if(rushHours != null) {
      _data["rushHours"] = rushHours?.toJson();
    }
    _data["link"] = link;
    if(equipments != null) {
      _data["equipments"] = equipments?.map((e) => e.toJson()).toList();
    }
    _data["threeMonth_pass"] = threeMonthPass;
    _data["sixMonth_pass"] = sixMonthPass;
    return _data;
  }

  FacilityModel copyWith({
    List<dynamic>? accessDevices,
    List<Category>? category,
    String? id,
    String? tier,
    List<String>? gender,
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
    List<FacilityTiming>? facilityTiming,
    int? admissionFee,
    int? dailyPass,
    String? other,
    List<dynamic>? review,
    String? createdAt,
    String? updatedAt,
    int? v,
    List<dynamic>? paymentInfo,
    int? monthlyPass,
    int? annualPass,
    RushHours? rushHours,
    String? link,
    List<Equipments>? equipments,
    int? threeMonthPass,
    int? sixMonthPass,
  }) => FacilityModel(
    accessDevices: accessDevices ?? this.accessDevices,
    category: category ?? this.category,
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
    facilityTiming: facilityTiming ?? this.facilityTiming,
    admissionFee: admissionFee ?? this.admissionFee,
    dailyPass: dailyPass ?? this.dailyPass,
    other: other ?? this.other,
    review: review ?? this.review,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    v: v ?? this.v,
    paymentInfo: paymentInfo ?? this.paymentInfo,
    monthlyPass: monthlyPass ?? this.monthlyPass,
    annualPass: annualPass ?? this.annualPass,
    rushHours: rushHours ?? this.rushHours,
    link: link ?? this.link,
    equipments: equipments ?? this.equipments,
    threeMonthPass: threeMonthPass ?? this.threeMonthPass,
    sixMonthPass: sixMonthPass ?? this.sixMonthPass,
  );
}

class Equipments {
  String? id;
  String? name;
  String? image;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? description;
  bool? status;

  Equipments({this.id, this.name, this.image, this.createdAt, this.updatedAt, this.v, this.description, this.status});

  Equipments.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["image"] is String) {
      image = json["image"];
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
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["status"] is bool) {
      status = json["status"];
    }
  }

  static List<Equipments> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Equipments.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["name"] = name;
    _data["image"] = image;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    _data["description"] = description;
    _data["status"] = status;
    return _data;
  }

  Equipments copyWith({
    String? id,
    String? name,
    String? image,
    String? createdAt,
    String? updatedAt,
    int? v,
    String? description,
    bool? status,
  }) => Equipments(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    v: v ?? this.v,
    description: description ?? this.description,
    status: status ?? this.status,
  );
}

class RushHours {
  Morning1? morning;
  Evening1? evening;

  RushHours({this.morning, this.evening});

  RushHours.fromJson(Map<String, dynamic> json) {
    if(json["morning"] is Map) {
      morning = json["morning"] == null ? null : Morning1.fromJson(json["morning"]);
    }
    if(json["evening"] is Map) {
      evening = json["evening"] == null ? null : Evening1.fromJson(json["evening"]);
    }
  }

  static List<RushHours> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => RushHours.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(morning != null) {
      _data["morning"] = morning?.toJson();
    }
    if(evening != null) {
      _data["evening"] = evening?.toJson();
    }
    return _data;
  }

  RushHours copyWith({
    Morning1? morning,
    Evening1? evening,
  }) => RushHours(
    morning: morning ?? this.morning,
    evening: evening ?? this.evening,
  );
}

class Evening1 {
  String? start;
  String? end;

  Evening1({this.start, this.end});

  Evening1.fromJson(Map<String, dynamic> json) {
    if(json["start"] is String) {
      start = json["start"];
    }
    if(json["end"] is String) {
      end = json["end"];
    }
  }

  static List<Evening1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Evening1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }

  Evening1 copyWith({
    String? start,
    String? end,
  }) => Evening1(
    start: start ?? this.start,
    end: end ?? this.end,
  );
}

class Morning1 {
  String? start;
  String? end;

  Morning1({this.start, this.end});

  Morning1.fromJson(Map<String, dynamic> json) {
    if(json["start"] is String) {
      start = json["start"];
    }
    if(json["end"] is String) {
      end = json["end"];
    }
  }

  static List<Morning1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Morning1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }

  Morning1 copyWith({
    String? start,
    String? end,
  }) => Morning1(
    start: start ?? this.start,
    end: end ?? this.end,
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

class Category {
  String? id;
  String? categoryName;
  String? description;
  bool? status;
  String? logo;
  String? createdAt;
  String? updatedAt;
  int? v;

  Category({this.id, this.categoryName, this.description, this.status, this.logo, this.createdAt, this.updatedAt, this.v});

  Category.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["category_name"] is String) {
      categoryName = json["category_name"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["status"] is bool) {
      status = json["status"];
    }
    if(json["logo"] is String) {
      logo = json["logo"];
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

  static List<Category> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Category.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["category_name"] = categoryName;
    _data["description"] = description;
    _data["status"] = status;
    _data["logo"] = logo;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    return _data;
  }

  Category copyWith({
    String? id,
    String? categoryName,
    String? description,
    bool? status,
    String? logo,
    String? createdAt,
    String? updatedAt,
    int? v,
  }) => Category(
    id: id ?? this.id,
    categoryName: categoryName ?? this.categoryName,
    description: description ?? this.description,
    status: status ?? this.status,
    logo: logo ?? this.logo,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    v: v ?? this.v,
  );
}