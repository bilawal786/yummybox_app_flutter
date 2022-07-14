import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/screens/productdetail.dart';

class MyDiscover extends StatefulWidget {
  const MyDiscover({Key? key}) : super(key: key);

  @override
  State<MyDiscover> createState() => _MyDiscoverState();
}

class _MyDiscoverState extends State<MyDiscover> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://app.yummybox.fr/storage/358/ILE-DE-FRANCE.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://app.yummybox.fr/storage/459/2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://app.yummybox.fr/storage/458/3.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 230.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 400),
                    viewportFraction: 1,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Our Categories",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: imageUrl.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Card(
                          child: GridTile(
                              footer: GridItemTitle(
                                title: _gridItemTitle[index],
                              ),
                              child: GridItem(
                                  imageUrl: imageUrl[index].toString())),
                        );
                      }),
                ),

                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Premium",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3 / 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: preImage.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Card(
                          child: GridTile(
                              footer: GridItemTitle(
                                title: _preTitle[index],
                              ),
                              child: GridItem(
                                  imageUrl: preImage[index].toString())),
                        );
                      }),
                ),
                SizedBox(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (ctx, index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProucttDetail()));
                            },
                            child: Card(
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
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
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
