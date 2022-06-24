import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yummy_box/screens/recharge.dart';
import 'package:yummy_box/screens/reservation.dart';
import 'package:yummy_box/screens/servicesdetail.dart';
import 'package:yummy_box/screens/sign-in.dart';
import 'package:yummy_box/widgets/drawer.dart';

import 'editprofile.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    icon: Icon(Icons.arrow_back)
                    ),

                SizedBox(
                  width: 70,
                ),
                Text(
                  "My Profile",
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
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => EditProfile()));
                  },
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyReservation(),
                      ),
                      );
                    },
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyRecharge(),
                      ),
                      );
                    },
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceDetails(),
                      ),
                      );
                    },
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

      ),
    );
  }
}
