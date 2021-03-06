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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                    primary: Color.fromARGB(255, 196, 42, 97),
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
