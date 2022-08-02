// To parse this JSON data, do
//
//     final mapModel = mapModelFromJson(jsonString);

import 'dart:convert';

List<MapModel> mapModelFromJson(String str) => List<MapModel>.from(json.decode(str).map((x) => MapModel.fromJson(x)));

String mapModelToJson(List<MapModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MapModel {
  MapModel({
  required  this.id,
  required  this.name,
  required  this.logo,
  required  this.image,
  required  this.latitude,
  required  this.longitude,
  });

  int id;
  String name;
  String logo;
  String image;
  String latitude;
  String longitude;

  factory MapModel.fromJson(Map<String, dynamic> json) => MapModel(
    id: json["id"],
    name: json["name"],
    logo: json["logo"],
    image: json["image"],
    latitude: json["latitude"],
    longitude: json["longitude"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "logo": logo,
    "image": image,
    "latitude": latitude,
    "longitude": longitude,
  };
}
