// To parse this JSON data, do
//
//     final traderModel = traderModelFromJson(jsonString);

import 'dart:convert';

List<TraderModel> traderModelFromJson(String str) => List<TraderModel>.from(json.decode(str).map((x) => TraderModel.fromJson(x)));

String traderModelToJson(List<TraderModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TraderModel {
  TraderModel({
   required this.shopId,
   required this.shopName,
   required this.address,
   required this.openingTime,
   required this.closingTime,
   required this.likes,
   required this.country,
   required this.shopImage,
   required this.shopLogo,
   required this.shopDescription,
   required this.isLike,
  });

  int shopId;
  String shopName;
  String address;
  String openingTime;
  String closingTime;
  int likes;
  String country;
  String shopImage;
  String shopLogo;
  String shopDescription;
  bool isLike;

  factory TraderModel.fromJson(Map<String, dynamic> json) => TraderModel(
    shopId: json["shop_id"],
    shopName: json["shop_name"],
    address: json["address"],
    openingTime: json["opening_time"],
    closingTime: json["closing_time"],
    likes: json["likes"],
    country: json["country"],
    shopImage: json["shopImage"],
    shopLogo: json["shopLogo"],
    shopDescription: json["shop_description"],
    isLike: json["is_like"],
  );

  Map<String, dynamic> toJson() => {
    "shop_id": shopId,
    "shop_name": shopName,
    "address": address,
    "opening_time": openingTime,
    "closing_time": closingTime,
    "likes": likes,
    "country": country,
    "shopImage": shopImage,
    "shopLogo": shopLogo,
    "shop_description": shopDescription,
    "is_like": isLike,
  };
}
