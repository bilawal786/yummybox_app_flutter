import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MyRecharge extends StatefulWidget {
  const MyRecharge({Key? key}) : super(key: key);

  @override
  State<MyRecharge> createState() => _MyRechargeState();
}

class _MyRechargeState extends State<MyRecharge> {
  String? valueChoose;
  List listItem = [
    "30000 YummyCOIN",
    "53000 YummyCOIN",
    "10000 YummyCOIN",
  ];

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
                width: 18,
              ),
              Text(
                "Créditer mon compte",
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
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 197, 54, 106),
                        ),
                          height: 80,
                          width: double.infinity,

                          child: Padding(
                            padding: const EdgeInsets.all(30.0),

                            child: Text(
                              "Vous avez actuellement 0 YummyCoin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          )),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Nombre de YummyCOIN",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.blueGrey),
                        ),
                        child: DropdownButton(
                          hint: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "30000 YummyCoin",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          value: valueChoose,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue as String?;
                            });
                          },
                          items: listItem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Text(valueItem),
                            );
                          }).toList(),
                          isExpanded: true,
                          underline: const SizedBox(),
                          isDense: true,
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Paiement sécurisé par carte",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        decoration: const InputDecoration(
                          isDense: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                )),
                            hintText: 'Numero de carte',
                            labelText: '',
                            iconColor: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Total 30 €",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.all(10.40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Recharger mon compte",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Image.asset("assets/coin.jpg"),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "1€ = 1000 YummyCoins Le Yummy coin est une monnaie exclusive à Yummy Box, permettant de réserver des produits sur l’application. Chaque utilisateur possède un solde qu’il peut créditer en achetant des coffres de Yummy coins directement sur l’application ou grâce à des actions rémunérées en Yummy coins par YB. La valeur de cette monnaie est directement indexée sur l’Euro et n’est pas soumise à fluctuation d’aucune autre manière que ce soit. ",
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
