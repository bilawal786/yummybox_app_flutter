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

  var _isInit = true;

  @override
  void didChangeDependencies() {
    if(_isInit){

      Provider.of<ProductProvider>(context).getProducts();
    }
    _isInit = false;
    setState((){
      isloading = false;
    });
    super.didChangeDependencies();
  }
  var isloading = true;

  @override
  Widget build(BuildContext context) {
    final prodData = Provider.of<ProductProvider>(context, listen: false);
    final prod = prodData.productItems;
    return isloading  == true ? Center(child: CircularProgressIndicator(),) : Card(
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
                  '${prod[0].quantity}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                position: BadgePosition.topStart(
                  top: 10,start: 10,
                ),
                child: Image.network(
                  "${prod[0].shopImage}",
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
                   '${prod[0].productName}' ,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${prod[0].shopName}",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                    ),
                  ),
                  Row(
                    children: [
                      Image.network(
                        "${prod[0].shopLogo}",
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
                        "${prod[0].likes}",
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
                        "${prod[0].discountPrice}",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "${prod[0].price}",
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
                        "${prod[0].startTime}",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "${prod[0].endTime}",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "${prod[0].country}",
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
