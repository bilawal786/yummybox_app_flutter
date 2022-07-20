import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:yummy_box/screens/productdetail.dart';
import 'package:yummy_box/widgets/product.dart';

class MyFavourite extends StatefulWidget {
  const MyFavourite({Key? key}) : super(key: key);

  @override
  State<MyFavourite> createState() => _MyFavouriteState();
}

class _MyFavouriteState extends State<MyFavourite> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ProucttDetail(products: [index],)));
                  },
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




