// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
   required this.token,
   required this.user,
  });

  String token;
  User user;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    token: json["token"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "user": user.toJson(),
  };
}

class User {
  User({
   required this.id,
   required this.name,
   required this.username,
   required this.email,
   required this.roles,
   required this.phone,
   required this.address,
   required this.timezone,
   required this.balanceId,
   required this.refferal,
   required this.img,
  });

  int id;
  String name;
  String username;
  String email;
  int roles;
  String phone;
  String address;
  String timezone;
  int balanceId;
  String refferal;
  String img;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    roles: json["roles"],
    phone: json["phone"],
    address: json["address"],
    timezone: json["timezone"],
    balanceId: json["balance_id"],
    refferal: json["refferal"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "roles": roles,
    "phone": phone,
    "address": address,
    "timezone": timezone,
    "balance_id": balanceId,
    "refferal": refferal,
    "img": img,
  };
}
