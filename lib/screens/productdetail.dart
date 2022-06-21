import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class ProucttDetail extends StatelessWidget {
  const ProucttDetail({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              width: 70,
            ),
            Text(
              "Agri-O-Conso",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      endDrawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/test-image.jpeg"),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Badge(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 5),
                                shape: BadgeShape.square,
                                badgeContent: Text(
                                  "4",
                                  style: TextStyle(color: Colors.white),
                                ),
                                badgeColor: Colors.red,
                                position:
                                    BadgePosition.topEnd(top: -6, end: -6),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Box legumes fraicheur",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "25.00€",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Text("Disponsible de 07:00 a 18:00"),
                    ],
                  ),


                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text(
                      "Boulevard du Perou, Les Abymes,Guadloupe",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Card(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "CE QUE VOUS POUVEZ AVOIR",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Column(
                children: [
                  Text(
                    "FAVORIS",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 10, bottom: 5),
                            child: Image.asset(
                              "assets/logo.jpg",
                              height: 40,
                              width: 40,
                            ),
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
                                "94",
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 197, 54, 106),
        unselectedItemColor: Colors.black.withOpacity(.60),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Reservation',
          ),
        ],
      ),
    );
  }
}
