import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MySponsorship extends StatefulWidget {
  const MySponsorship({Key? key}) : super(key: key);

  @override
  State<MySponsorship> createState() => _MySponsorshipState();
}

class _MySponsorshipState extends State<MySponsorship> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
       backgroundColor: Colors.white,
       iconTheme: IconThemeData(color: Colors.black),
       title: Row(
         mainAxisSize: MainAxisSize.min,
         children: [
           IconButton(
               onPressed: () {
                 Navigator.pop(context);
               },
               icon: Icon(Icons.arrow_back)
           ),

           SizedBox(
             width: 70,
           ),
           Text(
             "Parrainage",
             style: TextStyle(
                 color: Colors.black,
                 fontSize: 16
             ),
           ),
         ],
       ),
     ),

      endDrawer: MyDrawer(),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset("assets/part2.jpg"),
              Positioned(
                bottom: 150,
                right: 35,
                left: 35,

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  width: 200,

                   padding: const EdgeInsets.all(4),
                  child: const Text(
                    'RF-197791-YUMMY',
                    style: TextStyle(fontSize: 18, color: Colors.black,
                     fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              ),
              Positioned(
                bottom: 100,
                  left: 145,
                  right: 145,
                  child: ElevatedButton(
                    style:  ElevatedButton.styleFrom(
                        primary: Colors.yellow),

                    onPressed: () {  },
                    child: Text(
                      "Copy", style: TextStyle(
                      color: Colors.black,
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
