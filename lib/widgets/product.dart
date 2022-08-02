import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummy_box/model/product_model.dart';
import 'package:yummy_box/provider/product_provider.dart';

class ProductWidget extends StatefulWidget {
  final ProductModel products;
  ProductWidget({Key? key, required this.products}) : super(key: key);

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
                  widget.products.quantity.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                position: BadgePosition.topStart(
                  top: 10,start: 10,
                ),
                child: Image.network(
                  widget.products.shopImage,
                  height: 130,
                  width: double.infinity,
                ),
              ),
            ),),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.products.productName ,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.products.shopName,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                    ),
                  ),
                  Row(
                    children: [
                      Image.network(
                        widget.products.shopLogo,
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
                        widget.products.likes.toString(),
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

                      Text('Panier a', style: TextStyle(fontSize: 14,
                      color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 2,),
                      Text(
                        widget.products.discountPrice,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Text("€", style: TextStyle(fontSize: 14, color: Colors.red),),
                      SizedBox(width: 3,),
                      Text(
                        widget.products.price,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough
                        ),
                      ),
                      Text('€', style: TextStyle(fontSize: 14, color: Colors.black),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Text('Disponible de', style: TextStyle(fontSize: 8),),
                      SizedBox(width: 2,),
                      Text(
                        widget.products.startTime,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'to',
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        widget.products.endTime,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.products.country,
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
