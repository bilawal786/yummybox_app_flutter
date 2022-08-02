import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yummy_box/model/favourite_model.dart';
import 'package:yummy_box/model/product_model.dart';
import '../model/category_model.dart';

class FavouriteProvider with ChangeNotifier {
  List<FavouriteModel> _items = [];

  List<FavouriteModel> get favouriteItems {
    return [..._items];
  }

  Future<void> getfavourites(id) async {
    var response = await http.get(
      Uri.parse('https://demo.yummybox.fr/api/favourite/product'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMjYwNWQzYzBhOGZmYTNmNDJhYzhiNWZjMzFhZjAxZjk2NjFhNTU3MzYzZmUwZDFjN2FkODZjZjM3NDY4NWY4M2QyMDFhYWM0OTg3MmY3N2UiLCJpYXQiOjE2NTkwNzE4ODMsIm5iZiI6MTY1OTA3MTg4MywiZXhwIjoxNjkwNjA3ODgzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.Vp1WfHOupIm0q8wuqhOB7KJ03xpKBVzdAi8YzXQ-4Z0L-zlUmdjYKBzC5_Uc80gS6lM_Qpvc9TnC2kTWxkSzzN2edvAVlfK6V1eVBFKI7Kby0twaizWWUlxbWBOLj1WcyJ9d7j7uQYYVKzwj19e6gOAASkkVBsqVHA-VYNppoeZWNo70rsFgrmVdDEOmp9mppRNzWZDFBPZcABr_JRR704nOzig7VycIjtWS_fTver6MAwgxvMg8evAUgyEO1IdZw8r_DBmKdP65M3sDOeUgHKlWX5h2CkIgPuaS4rNmXaewcex0d8jm7Y4vnXLN1g2JfhxJDK2I8pqvje1z2JocI2I39j8Z-fOU7MQERwkhYnckhDGzLtpVYZo-XUf2E9YdPvMraf1RMQXqj2MMqBrVy9tXOxItkJ1bnHieI4HvfgtkBEIXUJ9Ou2UVR5X6OGMCnX87lwhI-7v4hR3qP85jwHuPUHhic-qPB07GHXEN4P4IizWbcUOzmegPkL4gBGMzwBWqgMYHzXpRBspSWfJ-cW43Ap6cT_CqK7YeTxLCvEDJwUxavmCbL3elNcoNqELdLk-ICJ7ce8jwY5-OavJttA1bt3wEgAbjP_SAhQyStnzlYaG1J4y9-ZA6g5f1lpbH1Lfh3fN0UOYuZBo-MFQbrwrhJxbPrmowuDrNZb8En-A'
      },
    );
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      final List<FavouriteModel> loadedFavourite = [];
      extractedData.forEach((e) {
        loadedFavourite.add(
         FavouriteModel(
             productId: e['product_id'],
             productImage: e['product_image'],
             shopId: e['shop_id'],
             shopName: e['shop_name'],
             address: e['address'],
             productName: e['product_name'],
             price: e['price'],
             discountPrice: e['discount_price'],
             startTime: e['start_time'],
             endTime: e['end_time'],
             likes: e['likes'],
             quantity: e['quantity'],
             country: e['country'],
             shopImage: e['shopImage'],
             shopLogo: e['shopLogo'],
             productDescription: e['product_description'],
             shopDescription: e['shop_description'],
             isLike: e['is_like'])
        );
      });
      _items = loadedFavourite;
      notifyListeners();
    } else {
      print("request not work");
    }
    print(response.body);
  }
}