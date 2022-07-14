// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/foundation.dart';

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel with ChangeNotifier{
  CategoryModel({
    required this.id,
    required this.title,
    required this.slug,
    required this.description,
    required this.image,
    required this.quantity,
  });

  int id;
  String title;
  String slug;
  String description;
  String image;
  int quantity;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json["id"],
    title: json["title"],
    slug: json["slug"],
    description: json["description"],
    image: json["image"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "slug": slug,
    "description": description,
    "image": image,
    "quantity": quantity,
  };
}
