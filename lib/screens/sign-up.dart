import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name = "";
  bool valuefirst = false;
  bool valuesecond = false;

  String? valueChoose;
  List listItem = [
    "Guadeloupe",
    "Martinique",
    "Guyane",
    "Le Reunion",
    "Saint-Martin",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/creez-pic.jpg"),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 50.0,
                  ),
                  child: TextFormField(
                    initialValue: "John",
                    cursorColor: Colors.black38,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      labelText: 'First name',
                      // hintText: 'John',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Prenom required";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 50.0,
                  ),
                  child: TextFormField(
                    initialValue: "Doe",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      labelText: 'Last name',
                      // hintText: 'Doe',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Nom required";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 50.0,
                  ),
                  child: TextFormField(
                    initialValue: "johndoe@example.com",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      labelText: 'Email',
                      // hintText: 'johndoe@example.com',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 50.0,
                  ),
                  child: TextFormField(
                    initialValue: "06 90 12 34 56",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      labelText: 'Phone number',
                      // hintText: '0690123456',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 400,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Region",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: DropdownButton(
                          hint: Text(
                            "Guadeloupe",
                            style: TextStyle(
                              fontSize: 14,
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
                    ],
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [

                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 50.0,
                  ),
                  child: TextFormField(
                    initialValue: "Forgot your password",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      labelText: 'Forgot your password',
                      // hintText: 'Mot de passe',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 50.0,
                  ),
                  child: TextFormField(
                    initialValue: "Password Confirmation",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      labelText: 'Password Confirmation',
                      // hintText: 'confirmation du mot the passe',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 50.0,
                  ),
                  child: TextFormField(
                    initialValue: "Referral code (optional)",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      labelText: 'Referral code (optional)',
                      // hintText: 'Code de parrainage (facultatif)',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      checkColor: Colors.blue,
                      activeColor: Colors.green,
                      value: this.valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuefirst = value!;
                        });
                      },
                    ),
                    Text(
                      "I accept the term and condition as well as Privacy Policy",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 235, 200, 26),
                                  Color.fromARGB(255, 236, 17, 152)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 270.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Creer un compte",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/nav-image.jpg",
                      height: 80,
                      width: 80,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
