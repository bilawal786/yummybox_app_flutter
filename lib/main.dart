import 'package:flutter/material.dart';
import 'package:yummy_box/provider/banner_provider.dart';
import 'package:yummy_box/provider/category_provider.dart';
import 'package:yummy_box/provider/pre_provider.dart';
import 'package:yummy_box/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import 'L10n/L10n.dart';

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
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: AppBarTheme( // <-- SEE HERE
            iconTheme: IconThemeData(color: Colors.black),
          ),
        ),
        supportedLocales: L10n.all,
        localizationsDelegates: [
          AppLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => Login(),
        },
      ),
    );
  }
}
