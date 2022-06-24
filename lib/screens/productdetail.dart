import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class ProucttDetail extends StatefulWidget {
  const ProucttDetail({Key? key}) : super(key: key);

  @override
  State<ProucttDetail> createState() => _ProucttDetailState();
}

class _ProucttDetailState extends State<ProucttDetail> {

  var check = false;

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
      ),
      endDrawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/test-image.jpeg"),
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
                                      "4",
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
                                    "Box legumes fraicheur",
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
                          Column(
                            children: [
                              Text(
                                "25.00€",
                                style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900, fontSize: 18),
                              ),

                            ],
                          ),
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
                          Text("Disponsible de 07:00 a 18:00", style: TextStyle(color: Colors.black45),),
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
                                "Boulevard du Perou, Les Abymes,Guadloupe",
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
                    Text("Panier legumes FRAICHEUR bouquet a soupe banane jaune citron tomates salade courgette christophine carotte  piment vegetaerian.",
                    style: TextStyle(color: Colors.black45),),
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
                                onPressed: () {
                                  setState((){
                                    check = true;
                                  });
                                },
                                color: Colors.blueGrey,
                                highlightColor: Colors.amberAccent, //<-- SEE HERE
                                iconSize: 30,
                                icon: Icon(
                                  check == false?
                                  Icons.favorite_outline_sharp:Icons.favorite,
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
                                  "3",
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
                    Icons.add_chart,
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
                    Text("Les fruits et legumes frais et de qualites, rien que pour vous",
                      style: TextStyle(color: Colors.black45),),
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
