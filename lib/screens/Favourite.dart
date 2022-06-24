import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:yummy_box/screens/productdetail.dart';

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProucttDetail()));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Badge(
                            padding:
                                EdgeInsets.symmetric(vertical: 4, horizontal: 7),
                            borderRadius: BorderRadius.circular(4.0),
                            shape: BadgeShape.square,
                            badgeColor: Colors.red,
                            badgeContent: Text(
                              "0",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            position: BadgePosition.topStart(
                              top: 30,
                            ),
                            child: Image.network(
                              "https://app.yummybox.fr/storage/376/firmin---presentation.jpeg",
                              height: 150,
                              width: 150,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Les Belles Envies",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Box de 2 patisseries",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.red,
                              ),
                            ),
                            Row(
                              children: [
                                Image.network(
                                  "https://app.yummybox.fr/category/1649248522category.png",
                                  height: 30,
                                  width: 30,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                ),
                                Text(
                                  "289",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 8,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Panier a 6.00€",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "Disponible de 09:30 a 18:00\nGuadeloupe",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.black,
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              icon: Icon(
                                Icons.shopping_cart,
                                size: 15,
                                color: Colors.white,
                              ),
                              label: Text(
                                "To Book",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




