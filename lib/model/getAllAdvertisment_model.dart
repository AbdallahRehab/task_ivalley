import 'dart:convert';

List<GetAllAdvertismentModel> getAllAdvertismentModelFromJson(String str) =>
    List<GetAllAdvertismentModel>.from(
        json.decode(str).map((x) => GetAllAdvertismentModel.fromJson(x)));

String getAllAdvertismentModelToJson(List<GetAllAdvertismentModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllAdvertismentModel {
  GetAllAdvertismentModel({
    this.advertismentId,
    this.price,
    this.count,
    this.carModel,
    this.createdDate,
    this.createdBy,
    this.lastModifiedDate,
    this.lastModifiedBy,
    this.isDeleted,
    this.advertTypeId,
    this.carBrandId,
    this.carTypeId,
    this.exhibitionProfileId,
    this.note,
    this.mainTitle,
    this.model,
    this.advertCityId,
    this.transmissionTypeId,
    this.categoryTypeId,
    this.colorId,
    this.whatsappCounter,
    this.callCounter,
    this.description,
    this.keyWords,
    this.isOnline,
    this.isFinance,
    this.numberOfCars,
    this.registrationAmont,
    this.agencyWarranty,
    this.mainImagePath,
    this.brandName,
    this.typeName,
    this.userId,
    this.logopath,
    this.transmissionTypeName,
    this.color,
    this.categoryType,
    this.city,
    this.rate,
    this.cityName,
    this.advertTypeName,
    this.hours,
    this.minuts,
    this.liked,
    this.exhibitionProfileId1,
    this.fullName,
    this.phone,
    this.otherPhone,
    this.exhibitionLogo,
    this.email,
    this.commercialRegister,
    this.municipalLicense,
    this.loginExpireDate,
    this.city1,
    this.rate1,
    this.userId1,
    this.createdDate1,
    this.createdBy1,
    this.lastModifiedDate1,
    this.lastModifiedBy1,
    this.isDeleted1,
    this.isLock,
    this.otherPhone2,
    this.typeOfSubscriptionId,
    this.otherPhone3,
    this.otherPhone4,
    this.otherPhone5,
    this.otherPhone6,
    this.otherPhone7,
    this.rateCount,
  });

  int? advertismentId;
  double? price;
  dynamic? count;
  DateTime? carModel;
  DateTime? createdDate;
  String? createdBy;
  DateTime? lastModifiedDate;
  String? lastModifiedBy;
  dynamic? isDeleted;
  int? advertTypeId;
  int? carBrandId;
  int? carTypeId;
  int? exhibitionProfileId;
  String? note;
  String? mainTitle;
  String? model;
  int? advertCityId;
  dynamic? transmissionTypeId;
  int? categoryTypeId;
  int? colorId;
  int? whatsappCounter;
  int? callCounter;
  String? description;
  String? keyWords;
  bool? isOnline;
  bool? isFinance;
  int? numberOfCars;
  double? registrationAmont;
  String? agencyWarranty;
  String? mainImagePath;
  String? brandName;
  String? typeName;
  String? userId;
  String? logopath;
  dynamic? transmissionTypeName;
  String? color;
  String? categoryType;
  String? city;
  String? rate;
  String? cityName;
  String? advertTypeName;
  int? hours;
  int? minuts;
  int? liked;
  int? exhibitionProfileId1;
  String? fullName;
  String? phone;
  String? otherPhone;
  String? exhibitionLogo;
  String? email;
  String? commercialRegister;
  String? municipalLicense;
  DateTime? loginExpireDate;
  String? city1;
  String? rate1;
  String? userId1;
  DateTime? createdDate1;
  dynamic? createdBy1;
  DateTime? lastModifiedDate1;
  dynamic? lastModifiedBy1;
  dynamic? isDeleted1;
  bool? isLock;
  String? otherPhone2;
  int? typeOfSubscriptionId;
  String? otherPhone3;
  dynamic? otherPhone4;
  dynamic? otherPhone5;
  dynamic? otherPhone6;
  dynamic? otherPhone7;
  int? rateCount;

  factory GetAllAdvertismentModel.fromJson(Map<String, dynamic> json) =>
      GetAllAdvertismentModel(
        advertismentId:
            json["AdvertismentID"] == null ? null : json["AdvertismentID"],
        price: json["Price"] == null ? null : json["Price"].toDouble(),
        count: json["Count"],
        carModel:
            json["CarModel"] == null ? null : DateTime.parse(json["CarModel"]),
        createdDate: json["CreatedDate"] == null
            ? null
            : DateTime.parse(json["CreatedDate"]),
        createdBy: json["CreatedBy"] == null ? null : json["CreatedBy"],
        lastModifiedDate: json["LastModifiedDate"] == null
            ? null
            : DateTime.parse(json["LastModifiedDate"]),
        lastModifiedBy:
            json["LastModifiedBy"] == null ? null : json["LastModifiedBy"],
        isDeleted: json["IsDeleted"],
        advertTypeId:
            json["AdvertTypeID"] == null ? null : json["AdvertTypeID"],
        carBrandId: json["CarBrandID"] == null ? null : json["CarBrandID"],
        carTypeId: json["CarTypeID"] == null ? null : json["CarTypeID"],
        exhibitionProfileId: json["ExhibitionProfileID"] == null
            ? null
            : json["ExhibitionProfileID"],
        note: json["Note"] == null ? null : json["Note"],
        mainTitle: json["MainTitle"] == null ? null : json["MainTitle"],
        model: json["Model"] == null ? null : json["Model"],
        advertCityId:
            json["AdvertCityID"] == null ? null : json["AdvertCityID"],
        transmissionTypeId: json["TransmissionTypeId"],
        categoryTypeId:
            json["CategoryTypeId"] == null ? null : json["CategoryTypeId"],
        colorId: json["ColorId"] == null ? null : json["ColorId"],
        whatsappCounter:
            json["WhatsappCounter"] == null ? null : json["WhatsappCounter"],
        callCounter: json["CallCounter"] == null ? null : json["CallCounter"],
        description: json["Description"] == null ? null : json["Description"],
        keyWords: json["KeyWords"] == null ? null : json["KeyWords"],
        isOnline: json["IsOnline"] == null ? null : json["IsOnline"],
        isFinance: json["IsFinance"] == null ? null : json["IsFinance"],
        numberOfCars:
            json["NumberOfCars"] == null ? null : json["NumberOfCars"],
        registrationAmont: json["RegistrationAmont"] == null
            ? null
            : json["RegistrationAmont"].toDouble(),
        agencyWarranty:
            json["AgencyWarranty"] == null ? null : json["AgencyWarranty"],
        mainImagePath:
            json["MainImagePath"] == null ? null : json["MainImagePath"],
        brandName: json["BrandName"] == null ? null : json["BrandName"],
        typeName: json["TypeName"] == null ? null : json["TypeName"],
        userId: json["UserID"] == null ? null : json["UserID"],
        logopath: json["logopath"] == null ? null : json["logopath"],
        transmissionTypeName: json["TransmissionTypeName"],
        color: json["Color"] == null ? null : json["Color"],
        categoryType:
            json["CategoryType"] == null ? null : json["CategoryType"],
        city: json["City"] == null ? null : json["City"],
        rate: json["Rate"] == null ? null : json["Rate"],
        cityName: json["CityName"] == null ? null : json["CityName"],
        advertTypeName:
            json["AdvertTypeName"] == null ? null : json["AdvertTypeName"],
        hours: json["Hours"] == null ? null : json["Hours"],
        minuts: json["Minuts"] == null ? null : json["Minuts"],
        liked: json["Liked"] == null ? null : json["Liked"],
        exhibitionProfileId1: json["ExhibitionProfileID1"] == null
            ? null
            : json["ExhibitionProfileID1"],
        fullName: json["FullName"] == null ? null : json["FullName"],
        phone: json["Phone"] == null ? null : json["Phone"],
        otherPhone: json["OtherPhone"] == null ? null : json["OtherPhone"],
        exhibitionLogo:
            json["ExhibitionLogo"] == null ? null : json["ExhibitionLogo"],
        email: json["Email"] == null ? null : json["Email"],
        commercialRegister: json["CommercialRegister"] == null
            ? null
            : json["CommercialRegister"],
        municipalLicense:
            json["MunicipalLicense"] == null ? null : json["MunicipalLicense"],
        loginExpireDate: json["LoginExpireDate"] == null
            ? null
            : DateTime.parse(json["LoginExpireDate"]),
        city1: json["City1"] == null ? null : json["City1"],
        rate1: json["Rate1"] == null ? null : json["Rate1"],
        userId1: json["UserID1"] == null ? null : json["UserID1"],
        createdDate1: json["CreatedDate1"] == null
            ? null
            : DateTime.parse(json["CreatedDate1"]),
        createdBy1: json["CreatedBy1"],
        lastModifiedDate1: json["LastModifiedDate1"] == null
            ? null
            : DateTime.parse(json["LastModifiedDate1"]),
        lastModifiedBy1: json["LastModifiedBy1"],
        isDeleted1: json["IsDeleted1"],
        isLock: json["IsLock"] == null ? null : json["IsLock"],
        otherPhone2: json["OtherPhone2"] == null ? null : json["OtherPhone2"],
        typeOfSubscriptionId: json["TypeOfSubscriptionID"] == null
            ? null
            : json["TypeOfSubscriptionID"],
        otherPhone3: json["OtherPhone3"] == null ? null : json["OtherPhone3"],
        otherPhone4: json["OtherPhone4"],
        otherPhone5: json["OtherPhone5"],
        otherPhone6: json["OtherPhone6"],
        otherPhone7: json["OtherPhone7"],
        rateCount: json["RateCount"] == null ? null : json["RateCount"],
      );

  Map<String, dynamic> toJson() => {
        "AdvertismentID": advertismentId == null ? null : advertismentId,
        "Price": price == null ? null : price,
        "Count": count,
        "CarModel": carModel == null ? null : carModel!.toIso8601String(),
        "CreatedDate":
            createdDate == null ? null : createdDate!.toIso8601String(),
        "CreatedBy": createdBy == null ? null : createdBy,
        "LastModifiedDate": lastModifiedDate == null
            ? null
            : lastModifiedDate!.toIso8601String(),
        "LastModifiedBy": lastModifiedBy == null ? null : lastModifiedBy,
        "IsDeleted": isDeleted,
        "AdvertTypeID": advertTypeId == null ? null : advertTypeId,
        "CarBrandID": carBrandId == null ? null : carBrandId,
        "CarTypeID": carTypeId == null ? null : carTypeId,
        "ExhibitionProfileID":
            exhibitionProfileId == null ? null : exhibitionProfileId,
        "Note": note == null ? null : note,
        "MainTitle": mainTitle == null ? null : mainTitle,
        "Model": model == null ? null : model,
        "AdvertCityID": advertCityId == null ? null : advertCityId,
        "TransmissionTypeId": transmissionTypeId,
        "CategoryTypeId": categoryTypeId == null ? null : categoryTypeId,
        "ColorId": colorId == null ? null : colorId,
        "WhatsappCounter": whatsappCounter == null ? null : whatsappCounter,
        "CallCounter": callCounter == null ? null : callCounter,
        "Description": description == null ? null : description,
        "KeyWords": keyWords == null ? null : keyWords,
        "IsOnline": isOnline == null ? null : isOnline,
        "IsFinance": isFinance == null ? null : isFinance,
        "NumberOfCars": numberOfCars == null ? null : numberOfCars,
        "RegistrationAmont":
            registrationAmont == null ? null : registrationAmont,
        "AgencyWarranty": agencyWarranty == null ? null : agencyWarranty,
        "MainImagePath": mainImagePath == null ? null : mainImagePath,
        "BrandName": brandName == null ? null : brandName,
        "TypeName": typeName == null ? null : typeName,
        "UserID": userId == null ? null : userId,
        "logopath": logopath == null ? null : logopath,
        "TransmissionTypeName": transmissionTypeName,
        "Color": color == null ? null : color,
        "CategoryType": categoryType == null ? null : categoryType,
        "City": city == null ? null : city,
        "Rate": rate == null ? null : rate,
        "CityName": cityName == null ? null : cityName,
        "AdvertTypeName": advertTypeName == null ? null : advertTypeName,
        "Hours": hours == null ? null : hours,
        "Minuts": minuts == null ? null : minuts,
        "Liked": liked == null ? null : liked,
        "ExhibitionProfileID1":
            exhibitionProfileId1 == null ? null : exhibitionProfileId1,
        "FullName": fullName == null ? null : fullName,
        "Phone": phone == null ? null : phone,
        "OtherPhone": otherPhone == null ? null : otherPhone,
        "ExhibitionLogo": exhibitionLogo == null ? null : exhibitionLogo,
        "Email": email == null ? null : email,
        "CommercialRegister":
            commercialRegister == null ? null : commercialRegister,
        "MunicipalLicense": municipalLicense == null ? null : municipalLicense,
        "LoginExpireDate":
            loginExpireDate == null ? null : loginExpireDate!.toIso8601String(),
        "City1": city1 == null ? null : city1,
        "Rate1": rate1 == null ? null : rate1,
        "UserID1": userId1 == null ? null : userId1,
        "CreatedDate1":
            createdDate1 == null ? null : createdDate1!.toIso8601String(),
        "CreatedBy1": createdBy1,
        "LastModifiedDate1": lastModifiedDate1 == null
            ? null
            : lastModifiedDate1!.toIso8601String(),
        "LastModifiedBy1": lastModifiedBy1,
        "IsDeleted1": isDeleted1,
        "IsLock": isLock == null ? null : isLock,
        "OtherPhone2": otherPhone2 == null ? null : otherPhone2,
        "TypeOfSubscriptionID":
            typeOfSubscriptionId == null ? null : typeOfSubscriptionId,
        "OtherPhone3": otherPhone3 == null ? null : otherPhone3,
        "OtherPhone4": otherPhone4,
        "OtherPhone5": otherPhone5,
        "OtherPhone6": otherPhone6,
        "OtherPhone7": otherPhone7,
        "RateCount": rateCount == null ? null : rateCount,
      };
}
