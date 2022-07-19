// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  ProductModel({
     required this.productId,
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
    required this.isLike,
  });

  int productId;
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
  bool isLike;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    productId: json["product_id"],
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
}
