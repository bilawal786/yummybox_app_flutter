import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return
      AppBar(
      leading: Padding( padding: EdgeInsets.all(5), child: Image.asset('assets/logo-new.png')), // you can put Icon as well, it accepts any widget.
      title: Text ("Yummy Box", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20)),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.person, color: Colors.black,),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),),
      ],
      elevation: 2,
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}
