import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yummy_box/screens/profile.dart';
import 'package:yummy_box/screens/recharge.dart';
import 'package:yummy_box/screens/sponsorship.dart';
import 'package:yummy_box/screens/suggest.dart';
import 'package:yummy_box/screens/support.dart';

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
    return SafeArea(
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 197, 54, 106),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                "assets/drawer-pic.png",
                height: 100,
                width: 100,
              ),
            ),
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
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyProfile())),
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-20, 0),
                child: Text(
                  'My profile',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bell_circle,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Notification',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Our Trader',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyRecharge())),
              leading: Icon(
                CupertinoIcons.calendar,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Recharge my account',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySupport())),
              leading: Icon(
                CupertinoIcons.book_circle_fill,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Support Center',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySuggest())),
              leading: Icon(
                CupertinoIcons.building_2_fill,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Suggest a trade',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MySponsorship())),
              leading: Icon(
                CupertinoIcons.book_solid,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Sponsorship',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: DropdownButton(
                hint: Text(
                  "Guadeloupe",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
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
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.stop,
                color: Colors.white,
              ),
              title: Transform.translate(
                offset: Offset(-16, 0),
                child: Text(
                  'Disconnect',
                  textScaleFactor: 1,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
