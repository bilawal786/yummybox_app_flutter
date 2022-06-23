import 'package:flutter/material.dart';
import 'package:yummy_box/screens/basket.dart';
import 'package:yummy_box/screens/discover.dart';
import 'package:yummy_box/screens/map.dart';
import 'package:yummy_box/screens/reservation.dart';
import 'package:yummy_box/widgets/drawer.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var index = 0;

  var navList = [
    MyDiscover(),
    MyMap(),
    MyBasket(),
    MyReservation(),
  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset('assets/logo.jpg'),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              "Yummy box",
              style: TextStyle(
                color: Color.fromARGB(255, 197, 54, 106),
              ),
            ),
          ],
        ),
      ),
      endDrawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          index = value;
          print(index);
        }),
        currentIndex: index,
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
      body: navList[index],

    );
  }
}
