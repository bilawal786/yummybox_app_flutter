// To parse this JSON data, do
//
//     final preModel = preModelFromJson(jsonString);

import 'dart:convert';

List<PreModel> preModelFromJson(String str) => List<PreModel>.from(json.decode(str).map((x) => PreModel.fromJson(x)));

String preModelToJson(List<PreModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PreModel {
  PreModel({
     required this.id,
    required this.title,
   required this.image,
  });

  int id;
  String title;
  String image;

  factory PreModel.fromJson(Map<String, dynamic> json) => PreModel(
    id: json["id"],
    title: json["title"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "image": image,
  };
}
