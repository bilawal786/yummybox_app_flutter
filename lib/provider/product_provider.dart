import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yummy_box/model/product_model.dart';
import '../model/category_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _items = [];

  List<ProductModel> get productItems {
    return [..._items];
  }

  Future<void> getProducts(id) async {
    var response = await http.get(
      Uri.parse('https://demo.yummybox.fr/api/products/'+id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);
      final List<ProductModel> loadedProducts = [];
      extractedData.forEach((e) {
        loadedProducts.add(
         ProductModel(
             productId: e['product_id'],
             product_image: e['product_image'],
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
             isLike: e['is_like'],
         ),
        );
      });
      _items = loadedProducts;
      notifyListeners();
    } else {
      print("request not work");
    }
  }
}