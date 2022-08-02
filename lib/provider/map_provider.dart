import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/map_model.dart';

class MapProvider with ChangeNotifier {
  List<MapModel> _items = [];

  List<MapModel> get mapItems {
    return [..._items];
  }

  Future<void> getMap() async {
    var response = await http.get(
      Uri.parse('https://demo.yummybox.fr/api/map'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      final List<MapModel> loadedMap = [];
      extractedData.forEach((e) {
        loadedMap.add(
           MapModel(
               id: e['id'],
               name: e['name'],
               logo: e['logo'],
               image: e['image'],
               latitude: e['latitude'],
               longitude: e['longitude'])
        );
      });
      _items = loadedMap;
      notifyListeners();
    } else {
      print("map request not work");
    }
  }
}