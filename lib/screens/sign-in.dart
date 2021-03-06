import 'package:flutter/material.dart';
import 'package:yummy_box/screens/Favourite.dart';
import 'package:yummy_box/screens/Home.dart';
import 'package:yummy_box/screens/map.dart';
import 'package:yummy_box/screens/reservation.dart';
import 'package:yummy_box/widgets/drawer.dart';

import '../widgets/appbar.dart';

class SignIn extends StatefulWidget {
  final String id;
  const SignIn({Key? key, required this.id}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var index = 0;
  var navList = [
    MyDiscover(id: "1"),
    MyMap(),
    MyFavourite(),
    MyReservation(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize( preferredSize: const Size.fromHeight(50), child: MyAppBar()),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          index = value;
          print(widget.id.toString());
        }),
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black.withOpacity(.60),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
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
