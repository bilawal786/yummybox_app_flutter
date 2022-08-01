import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/category_model.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel> _items = [];

  List<CategoryModel> get categoryItems {
    return [..._items];
  }

  Future<void> getCategories(id) async {
    var response = await http.get(
      Uri.parse('http://app.yummybox.fr/api/category/'+id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      final List<CategoryModel> loadedCategories = [];
      extractedData.forEach((e) {
        loadedCategories.add(
          CategoryModel(
            id: e['id'],
            description: e['description'],
            image: e['image'],
            quantity: e['quantity'],
            title: e['title'],
          ),
        );
      });
      _items = loadedCategories;
      notifyListeners();
    } else {
      print("request not work");
    }
  }
}
