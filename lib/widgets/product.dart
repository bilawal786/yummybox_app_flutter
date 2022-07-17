import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

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
                  "0",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                position: BadgePosition.topStart(
                  top: 10,start: 10,
                ),
                child: Image.network(
                  "https://app.yummybox.fr/storage/376/firmin---presentation.jpeg",
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
                    "Les Belles Envies",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Box de 2 patisseries",
                    style: TextStyle(
                      fontSize: 10,
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
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Panier a 6.00€",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "12.00€",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough
                        ),
                      ),
                    ],
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
