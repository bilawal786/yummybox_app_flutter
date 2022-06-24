import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/screens/productdetail.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MyTraders extends StatefulWidget {
  const MyTraders({Key? key}) : super(key: key);

  @override
  State<MyTraders> createState() => _MyTradersState();
}

class _MyTradersState extends State<MyTraders> {

  final List imageUrl = [
    'https://app.yummybox.fr/storage/331/Fruits.png',
    'https://app.yummybox.fr/storage/330/Divers.png',
    'https://app.yummybox.fr/storage/329/Produits-Bio.png',
    'https://app.yummybox.fr/storage/328/Epicerie.png',
    'https://app.yummybox.fr/storage/327/Boulangerie.png',
    'https://app.yummybox.fr/storage/326/Lunch.png',
  ];

  final List _gridItemTitle = [
    'Fruits/legumes',
    'Divers',
    'Produits bio',
    'Epicerie',
    'Boulangerie',
    'Lunch',
  ];

  final List preImage = [
    'https://app.yummybox.fr/category/1643659597category.png',
    'https://app.yummybox.fr/category/1646850567category.png',
    'https://app.yummybox.fr/category/1649248522category.png',
  ];

  final List _preTitle = ['Renee', '0 Marche', 'Denial'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 30,
              ),
              Text(
                "Nos commercants",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: MyDrawer(),

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
                          child: Image.network(
                            "https://app.yummybox.fr/storage/386/5eae051b03933_ecomax-1359680.jpg",
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
                              "COLIPRIX (ECOMAX) ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Bergevin",
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
                                      "https://app.yummybox.fr/category/1649248522category.png",
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
                                      "187",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "Available from 08:30 a 20:00",
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.black,
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

