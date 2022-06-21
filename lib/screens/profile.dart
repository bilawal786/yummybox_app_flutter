import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
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
                "My Profile",
                style: TextStyle(
                  color: Color.fromARGB(255, 197, 54, 106),
                ),
              ),
            ],
          ),
        ),
        endDrawer: MyDrawer(),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/user.png"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "John Doe",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Text(
                  "You still have 0 YummyCoins",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text("Edit my Profile"),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      "My reservations",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      "Top up my YummyCoin account",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      "Term of service",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      "How it works",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
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
      ),
    );
  }
}
