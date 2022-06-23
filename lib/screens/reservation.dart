import 'package:flutter/material.dart';

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

            Padding(

              padding: const EdgeInsets.only(left: 30),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 30,
                width: 300,

              ),
            ),
          ],
        ),
      ),


    );
  }
}
