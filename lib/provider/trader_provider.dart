import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yummy_box/model/product.dart';
import 'package:yummy_box/model/traders_model.dart';
import '../model/category_model.dart';

class TraderProvider with ChangeNotifier {
  List<TraderModel> _items = [];

  List<TraderModel> get traderItems {
    return [..._items];
  }

  Future<void> getTraders() async {
    var response = await http.get(
      Uri.parse('https://demo.yummybox.fr/api/traders'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMjYwNWQzYzBhOGZmYTNmNDJhYzhiNWZjMzFhZjAxZjk2NjFhNTU3MzYzZmUwZDFjN2FkODZjZjM3NDY4NWY4M2QyMDFhYWM0OTg3MmY3N2UiLCJpYXQiOjE2NTkwNzE4ODMsIm5iZiI6MTY1OTA3MTg4MywiZXhwIjoxNjkwNjA3ODgzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.Vp1WfHOupIm0q8wuqhOB7KJ03xpKBVzdAi8YzXQ-4Z0L-zlUmdjYKBzC5_Uc80gS6lM_Qpvc9TnC2kTWxkSzzN2edvAVlfK6V1eVBFKI7Kby0twaizWWUlxbWBOLj1WcyJ9d7j7uQYYVKzwj19e6gOAASkkVBsqVHA-VYNppoeZWNo70rsFgrmVdDEOmp9mppRNzWZDFBPZcABr_JRR704nOzig7VycIjtWS_fTver6MAwgxvMg8evAUgyEO1IdZw8r_DBmKdP65M3sDOeUgHKlWX5h2CkIgPuaS4rNmXaewcex0d8jm7Y4vnXLN1g2JfhxJDK2I8pqvje1z2JocI2I39j8Z-fOU7MQERwkhYnckhDGzLtpVYZo-XUf2E9YdPvMraf1RMQXqj2MMqBrVy9tXOxItkJ1bnHieI4HvfgtkBEIXUJ9Ou2UVR5X6OGMCnX87lwhI-7v4hR3qP85jwHuPUHhic-qPB07GHXEN4P4IizWbcUOzmegPkL4gBGMzwBWqgMYHzXpRBspSWfJ-cW43Ap6cT_CqK7YeTxLCvEDJwUxavmCbL3elNcoNqELdLk-ICJ7ce8jwY5-OavJttA1bt3wEgAbjP_SAhQyStnzlYaG1J4y9-ZA6g5f1lpbH1Lfh3fN0UOYuZBo-MFQbrwrhJxbPrmowuDrNZb8En-A'
      },
    );
    if (response.statusCode == 200) {
      print('get trader successfully');
      final extractedData = json.decode(response.body);
      final List<TraderModel> loadedTraders = [];
      extractedData.forEach((e) {
        loadedTraders.add(
         TraderModel(
             shopId: e['shop_id'],
             shopName: e['shop_name'],
             address: e['address'],
             openingTime: e['opening_time'],
             closingTime: e['closing_time'],
             likes: e['likes'],
             country: e['country'],
             shopImage: e['shopImage'],
             shopLogo: e['shopLogo'],
             shopDescription: e['shop_description'],
             isLike: e['is_like'])
        );
      });
      _items = loadedTraders;
      notifyListeners();
    } else {
      print("traders request not work");
    }
    print(response.body);
  }
}