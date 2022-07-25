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
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: 'John',
                        labelText: 'First Name*',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter user name";
                      }
                      return null;
                    },
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: 'Doe',
                        labelText: 'Last Name*',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter user name";
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: 'Doe',
                        labelText: 'User Name*',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter user name";
                      }
                      return null;
                    },
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: 'Johndoe@example.com',
                        labelText: 'Email',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter user email";
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: '06 90 12 34 56',
                        labelText: 'Phone Number',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter user phone number";
                      }
                      return null;
                    },
                  ),
                ),



                Container(
                  width: 400,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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


                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: 'Forgot your password',
                        labelText: 'Forgot your password',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter user password";
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: 'Password confirmation',
                        labelText: 'Password Confirmation',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please confirm user password";
                      }
                      return null;
                    },
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            )),
                        hintText: 'Referral code (optional)',
                        labelText: 'Referral code (optional)',
                        iconColor: Colors.white),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter user code";
                      }
                      return null;
                    },
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      "I accept the term and condition as well as \nPrivacy Policy",
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
                              "Create an account!",
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
