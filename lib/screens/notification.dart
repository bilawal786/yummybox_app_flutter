import 'package:flutter/material.dart';
import 'package:yummy_box/widgets/drawer.dart';

class MyNotification extends StatelessWidget {
  const MyNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            SizedBox(
              width: 60,
            ),
            Text(
              "Notifications",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),

      endDrawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Text("Notification"),
        ),
      ),

    );
  }
}
