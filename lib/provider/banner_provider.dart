import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/banner_model.dart';

class BannerProvider with ChangeNotifier {
  List<BannerModel> _items = [];

  List<BannerModel> get bannerItems {
    return [..._items];
  }

  Future<void> getBanners(id) async {
    var response = await http.get(
      Uri.parse('http://app.yummybox.fr/api/setting/'+id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      final List<BannerModel> loadedBanner = [];
      extractedData.forEach((e) {
        loadedBanner.add(
          BannerModel(
            link: e['link'],
            images: e['images'],
          ),
        );
      });
      _items = loadedBanner;
      notifyListeners();
    } else {
      print("request not work");
    }
  }
}
