import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/screens/login.dart';
import 'package:yummy_box/screens/notification.dart';
import 'package:yummy_box/screens/profile.dart';
import 'package:yummy_box/screens/recharge.dart';
import 'package:yummy_box/screens/sponsorship.dart';
import 'package:yummy_box/screens/suggest.dart';
import 'package:yummy_box/screens/support.dart';
import 'package:yummy_box/screens/traders.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String? valueChoose;
  List listItem = [
    "Guadeloupe",
    "Martinique",
    "Guyane",
    "Le Reunion",
    "Saint-Martin"
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 196, 42, 97),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink.shade100,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/user.png",
                fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Guest User",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Text(
            "0 YummyCoin",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyProfile())),
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'My profile',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyNotification())),
              leading: Icon(
                CupertinoIcons.bell_circle,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Notification',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyTraders())),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Our Trader',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyRecharge())),
              leading: Icon(
                CupertinoIcons.calendar,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Recharge my account',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySupport())),
              leading: Icon(
                CupertinoIcons.book_circle_fill,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Support Center',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MySuggest())),
              leading: Icon(
                CupertinoIcons.building_2_fill,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Suggest a trade',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySponsorship())),
              leading: Icon(
                CupertinoIcons.book_solid,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Sponsorship',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          Container(
            height: 30,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),

            child: DropdownButton(
              hint: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Guadeloupe",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue as String?;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
              isExpanded: true,
              underline: const SizedBox(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Login())),
              leading: Icon(
                CupertinoIcons.lock,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Disconnect',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow,
                  ),
                  child: IconButton(onPressed: ( ) => Navigator.pop(context),

                      icon: Icon(Icons.arrow_forward),
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
