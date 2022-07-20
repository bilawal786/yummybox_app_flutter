import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummy_box/provider/product_provider.dart';

class ProductWidget extends StatefulWidget {
  ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
                borderRadius: BorderRadius.circular(4.0),
                shape: BadgeShape.square,
                badgeColor: Colors.red,
                badgeContent: Text(
                  '4',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                position: BadgePosition.topStart(
                  top: 10,start: 10,
                ),
                child: Image.network(
                  "https://play-lh.googleusercontent.com/L88AUHyAOXdguuiqlBGrDF2Z1aWgKVlUXLDVEZpV4i-IH7SiK2N9NbhiskUpEJMDbw",
                  height: 130,
                  width: double.infinity,
                ),
              ),
            ),),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                   'patis creation kreyol' ,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Mr salade shop",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                    ),
                  ),
                  Row(
                    children: [
                      Image.network(
                        "https://play-lh.googleusercontent.com/L88AUHyAOXdguuiqlBGrDF2Z1aWgKVlUXLDVEZpV4i-IH7SiK2N9NbhiskUpEJMDbw",
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
                        "250",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "20€",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "25€",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "10:00",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "to",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        "12:00",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Guadeloupe",
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
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    )
      ;
  }
}
