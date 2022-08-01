// To parse this JSON data, do
//
//     final preModel = preModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/pre_model.dart';

class PreProvider with ChangeNotifier {
  List<PreModel> _items = [];

  List<PreModel> get preItems {
    return [..._items];
  }

  Future<void> getPre(id) async {
    var response = await http.get(
      Uri.parse('http://app.yummybox.fr/api/vip/category/'+id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      final List<PreModel> loadedPre = [];
      extractedData.forEach((e) {
        loadedPre.add(
          PreModel(id: e['id'], title: e['title'], image: e['image'])
        );
      });
      _items = loadedPre;
      notifyListeners();
    } else {
      print("request not work");
    }
  }
}