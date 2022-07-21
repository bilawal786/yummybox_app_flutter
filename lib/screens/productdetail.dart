import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:yummy_box/model/product.dart';
import 'package:yummy_box/widgets/drawer.dart';

class ProucttDetail extends StatefulWidget {
  final ProductModel products;
  const ProucttDetail({Key? key, required this.products}) : super(key: key);

  @override
  State<ProucttDetail> createState() => _ProucttDetailState();
}

class _ProucttDetailState extends State<ProucttDetail> {

  var check = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.products.shopName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
                height: 250,
                child: Image.network(widget.products.product_image, fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Badge(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 5),
                                    shape: BadgeShape.square,
                                    borderRadius: BorderRadius.circular(3),
                                    badgeContent: Text(
                                      widget.products.quantity.toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    badgeColor: Colors.red,
                                    position:
                                        BadgePosition.topEnd(top: -6, end: -6),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    widget.products.productName,
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,),
                          child: Text(
                            "Reserver",
                            style: TextStyle(fontSize: 12, color: Colors.white,
                            fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Panier a', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),),
                          SizedBox(width: 5,),
                          Text(
                            widget.products.discountPrice,
                            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 18),
                          ),
                          Text('€', style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),

                          Text(widget.products.price,
                          style:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,decoration: TextDecoration.lineThrough),
                          ),
                          Text('€', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.access_alarm_outlined, size: 30, color: Colors.red,),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Disponible de', style: TextStyle(fontSize: 12, color: Colors.black),),
                          SizedBox(width: 5,),
                          Text(widget.products.startTime, style: TextStyle(color: Colors.black),),
                          SizedBox(width: 5,),
                          Text('to'),
                          SizedBox(width: 5,),
                          Text(widget.products.endTime, style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.place_outlined, color: Colors.red,),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              width: 200,
                              child: Text(
                                widget.products.address,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Spacer(
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                     ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "CE QUE VOUS POUVEZ AVOIR",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Html(data: widget.products.productDescription),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "FAVORIS",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 10, bottom: 5),
                              child:
                              IconButton(
                                onPressed:(){ widget.products.toggleFav();},
                                highlightColor: Colors.amberAccent, //<-- SEE HERE
                                iconSize: 30,
                                icon: widget.products.isLike == true ? Icon(
                                 Icons.favorite,
                                  color: Colors.red,
                                ) : Icon(
                                  Icons.favorite_outline_sharp,
                                  color: Colors.red,
                                ),
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Favori"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        Card(
                          child: Column(children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 40, right: 40, top: 10, bottom: 5),
                                child: Text(
                                  widget.products.likes.toString(),
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Favoris"),
                            ),
                          ]),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            Container(
              height: 60,
              width: double.infinity,
              child: Card(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,),

                  label: Text(
                    "Reserver",
                    style: TextStyle(fontSize: 16, color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(
                    Icons.shopping_bag,
                    size: 20,
                    color: Colors.white,
                  ),

                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "CE QUE VOUS DEVEZ SAVOIR",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Html(data: widget.products.shopDescription),
                  ]),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
