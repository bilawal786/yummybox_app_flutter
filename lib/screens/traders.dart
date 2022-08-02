import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummy_box/provider/trader_provider.dart';
import 'package:yummy_box/screens/productdetail.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MyTraders extends StatefulWidget {
  const MyTraders({Key? key}) : super(key: key);

  @override
  State<MyTraders> createState() => _MyTradersState();
}

class _MyTradersState extends State<MyTraders> {


  var _isInit = true;

  @override
  void didChangeDependencies() {
    if(_isInit){

      Provider.of<TraderProvider>(context).getTraders();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  final List _preTitle = ['Renee', '0 Marche', 'Denial'];
  @override
  Widget build(BuildContext context) {
    final TraderData = Provider.of<TraderProvider>(context, listen: false);
    final traders = TraderData.traderItems;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Traders",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: traders.length,
                itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ProucttDetail()));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            traders[index].shopImage,
                            height: 150,
                            width: 150,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                             traders[index].shopName,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              traders[index].country,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.network(
                                      traders[index].shopLogo,
                                      height: 40,
                                      width: 40,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                    Text(
                                      traders[index].likes.toString(),
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Available from', style: TextStyle(fontSize: 8, color: Colors.black),),
                                  SizedBox(width: 2,),
                                  Text(traders[index].openingTime, style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),),
                                  SizedBox(width: 2,),
                                  Text('a', style: TextStyle(fontSize: 10),),
                                  SizedBox(width: 2,),
                                  Text(traders[index].closingTime, style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),),
                                ],
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

class GridItemTitle extends StatelessWidget {
  final String title;
  const GridItemTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;

  const GridItem({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Badge(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
        borderRadius: BorderRadius.circular(4.0),
        shape: BadgeShape.square,
        badgeContent: Text(
          "0",
          style: TextStyle(color: Colors.white),
        ),
        badgeColor: Colors.black,
        position: BadgePosition.topEnd(top: -6, end: -6),
        child: Image.network(
          imageUrl,
          height: 50,
          width: 50,
        ),
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    );
  }
}

