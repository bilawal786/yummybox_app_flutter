import 'package:flutter/material.dart';
import 'package:yummy_box/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
