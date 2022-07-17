import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/screens/productdetail.dart';

class MyReservation extends StatefulWidget {
  const MyReservation({Key? key}) : super(key: key);

  @override
  State<MyReservation> createState() => _MyReservationState();
}

class _MyReservationState extends State<MyReservation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text("Note: You can cancel the order within 2 hours", style: TextStyle(
                  color: Colors.black45,
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (ctx, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProucttDetail()));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.network(
                                  "https://app.yummybox.fr/storage/376/firmin---presentation.jpeg",
                                  height: 130,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                              child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Les Belles Envies",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "1 x article(s) - 9.50€",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueGrey,
                                ),
                              ),

                              Row(
                                children: [
                                  Text(
                                    "22 janv.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 20,
                                      child: ElevatedButton(
                                        onPressed: (){},
                                        child: Text("Recupere", style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                        ),
                                      ),
                                    ),
                                  )

                                ],
                              ),

                            ],
                          )
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


    );
  }
}
