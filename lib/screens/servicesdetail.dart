import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Privacy Policy",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),

      endDrawer: MyDrawer(),

      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("YUMMY BOX \nCONDITIONS \nGENERALES \nD'UTILISATION", style: TextStyle(
                      fontSize: 35,
                      color: Colors.blueGrey,
                    ),),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Text("1. INTRODUCTION", style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
