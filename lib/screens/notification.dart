import 'package:flutter/material.dart';
import 'package:yummy_box/screens/productdetail.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MyNotification extends StatelessWidget {
  const MyNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (ctx, index) => GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                          // MaterialPageRoute(builder: (context) => ProucttDetail()));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, bottom: 40),
                              child: Icon(Icons.notification_add_outlined, color: Colors.red,),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nouveau panier",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only( right: 20),
                                child: Text(
                                  "Fais vite, Boulangerie Firmin vient de\nragouter des paniers a sauver😊",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.blueGrey,
                                  ),
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
      ),
    );
  }
}
