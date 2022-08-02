// To parse this JSON data, do
//
//     final favouriteModel = favouriteModelFromJson(jsonString);

import 'dart:convert';

List<FavouriteModel> favouriteModelFromJson(String str) =>
    List<FavouriteModel>.from(
        json.decode(str).map((x) => FavouriteModel.fromJson(x)));

String favouriteModelToJson(List<FavouriteModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FavouriteModel {
  FavouriteModel({
    required this.productId,
    required this.productImage,
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
  String productImage;
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

  factory FavouriteModel.fromJson(Map<String, dynamic> json) => FavouriteModel(
        productId: json["product_id"],
        productImage: json["product_image"],
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
        "product_image": productImage,
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
