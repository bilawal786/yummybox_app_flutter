// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';
import 'package:flutter/material.dart';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel with ChangeNotifier {
  ProductModel({
     required this.productId,
     required this.product_image,
   required this.shopId,
   required this.shopName,
   required this.address,
    required this.productName,
   required this.price,
   required this.discountPrice,
   required this.startTime,
   required this.endTime,
   required this.likes,
   required this.quantity,
   required this.country,
   required this.shopImage,
   required this.shopLogo,
   required this.productDescription,
   required this.shopDescription,
    this.isLike = false,
  });

  int productId;
  String product_image;
  int shopId;
  String shopName;
  String address;
  String productName;
  String price;
  String discountPrice;
  String startTime;
  String endTime;
  int likes;
  int quantity;
  String country;
  String shopImage;
  String shopLogo;
  String productDescription;
  String shopDescription;
  bool isLike = false;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    productId: json["product_id"],
    product_image: json["product_image"],
    shopId: json["shop_id"],
    shopName: json["shop_name"],
    address: json["address"],
    productName: json["product_name"],
    price: json["price"],
    discountPrice: json["discount_price"],
    startTime: json["start_time"],
    endTime: json["end_time"],
    likes: json["likes"],
    quantity: json["quantity"],
    country: json["country"],
    shopImage: json["shopImage"],
    shopLogo: json["shopLogo"],
    productDescription: json["product_description"],
    shopDescription: json["shop_description"],
    isLike: json["is_like"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "product_image": product_image,
    "shop_id": shopId,
    "shop_name": shopName,
    "address": address,
    "product_name": productName,
    "price": price,
    "discount_price": discountPrice,
    "start_time": startTime,
    "end_time": endTime,
    "likes": likes,
    "quantity": quantity,
    "country": country,
    "shopImage": shopImage,
    "shopLogo": shopLogo,
    "product_description": productDescription,
    "shop_description": shopDescription,
    "is_like": isLike,
  };


  void toggleFav() {
    isLike = !isLike;
    notifyListeners();
    print(isLike);
  }
}
