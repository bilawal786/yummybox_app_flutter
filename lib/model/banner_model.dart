// To parse this JSON data, do
//
//     final bannerModel = bannerModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/foundation.dart';

List<BannerModel> bannerModelFromJson(String str) => List<BannerModel>.from(json.decode(str).map((x) => BannerModel.fromJson(x)));

String bannerModelToJson(List<BannerModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BannerModel with ChangeNotifier {
  BannerModel({
    required this.link,
    required this.images,
  });

  String link;
  String images;

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
    link: json["link"],
    images: json["images"],
  );

  Map<String, dynamic> toJson() => {
    "link": link,
    "images": images,
  };
}
