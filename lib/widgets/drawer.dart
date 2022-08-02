import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yummy_box/provider/location_provider.dart';
import 'package:yummy_box/screens/login.dart';
import 'package:yummy_box/screens/notification.dart';
import 'package:yummy_box/screens/profile.dart';
import 'package:yummy_box/screens/recharge.dart';
import 'package:yummy_box/screens/sign-in.dart';
import 'package:yummy_box/screens/sponsorship.dart';
import 'package:yummy_box/screens/suggest.dart';
import 'package:yummy_box/screens/support.dart';
import 'package:yummy_box/screens/traders.dart';

import '../screens/Home.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<LocationProvider>(context).getLocations();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  String? valueChoose = "";
  bool isLoggedIn = false;

  OnDisconnect() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

  String img = '';
  String name = '';
  String points = '';

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      img = (prefs.getString('img') ?? 'https://media.istockphoto.com/vectors/user-icon-flat-isolated-on-white-background-user-symbol-vector-vector-id1300845620?k=20&m=1300845620&s=612x612&w=0&h=f4XTZDAv7NPuZbG0habSpU0sNgECM0X7nbKzTUta3n8=');
      name = (prefs.getString('name') ?? 'Guest User');
      points = (prefs.getString('points') ?? '  Yummycoins 0');
    });
  }

  @override
  Widget build(BuildContext context) {
    final locationData = Provider.of<LocationProvider>(context, listen: false);
    final locations = locationData.locationItems;
    return Drawer(
      backgroundColor: Color.fromARGB(255, 196, 42, 97),
      child: SingleChildScrollView(
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
                  child: Image.network(
                    '$img',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$name',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$points',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                // Text(
                //   " YummyCoin",
                //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                // ),
              ],
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
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MySuggest())),
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
                    valueChoose!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                onChanged: (newvalue) {
                  setState(() {
                    valueChoose = newvalue.toString();
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn(id: valueChoose.toString())),
                  );
                },
                items: locations.map((locationitems) {
                  return DropdownMenuItem(
                    value: locationitems.id,
                    child: Text(locationitems.name),
                  );
                }).toList(),
                isExpanded: true,
                underline: const SizedBox(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                      OnDisconnect();
                    },
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
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
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
