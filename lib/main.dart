import 'package:flutter/material.dart';
import 'package:yummy_box/provider/banner_provider.dart';
import 'package:yummy_box/provider/category_provider.dart';
import 'package:yummy_box/provider/location_provider.dart';
import 'package:yummy_box/provider/pre_provider.dart';
import 'package:yummy_box/provider/product_provider.dart';
import 'package:yummy_box/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => BannerProvider()),
        ChangeNotifierProvider(create: (ctx) => CategoryProvider()),
        ChangeNotifierProvider(create: (ctx) => PreProvider()),
        ChangeNotifierProvider(create: (ctx) => ProductProvider()),
        ChangeNotifierProvider(create: (ctx) => LocationProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => Login(),
        },
      ),
    );
  }
}
