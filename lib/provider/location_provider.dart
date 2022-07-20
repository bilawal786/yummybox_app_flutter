import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yummy_box/model/location.dart';

import '../model/banner_model.dart';

class LocationProvider with ChangeNotifier {
  List<LocationModel> _items = [];

  List<LocationModel> get locationItems {
    return [..._items];
  }

  Future<void> getLocations() async {
    var response = await http.get(
      Uri.parse('http://app.yummybox.fr/api/location'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      final List<LocationModel> loadedLocation = [];
      extractedData.forEach((e) {
        loadedLocation.add(
         LocationModel(id: e['id'], name: e['name'])
        );
      });
      _items = loadedLocation;
      notifyListeners();
    } else {
      print("request not work");
    }
  }
}
