import 'package:flutter/material.dart';
import 'package:yummy_box/provider/banner_provider.dart';
import 'package:yummy_box/provider/category_provider.dart';
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
        ChangeNotifierProvider(create: (ctx) => CategoryProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: AppBarTheme( // <-- SEE HERE
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
