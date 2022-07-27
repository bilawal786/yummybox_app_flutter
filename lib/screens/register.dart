import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yummy_box/screens/sign-in.dart';

import '../model/login_model.dart';
import '../provider/location_provider.dart';
import 'discover.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _SignUpState();
}

class _SignUpState extends State<RegisterScreen> {


  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController FirstNameController = TextEditingController();
  TextEditingController LastNameController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();

  Future<void> login(email, password, first_name, last_name, phone,) async {

    var response = await http.post(
      Uri.parse('https://demo.yummybox.fr/api/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': emailController.text,
        'password': passwordController.text,
        'first_name': FirstNameController.text,
        'last_name': LastNameController.text,
        'phone': PhoneController.text,
      }),
    );
    if (response.statusCode == 200) {
      print('login api works');
      final login = LoginModel.fromJson(jsonDecode(response.body));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', login.token);
      await prefs.setString('email', login.user.email);
      await prefs.setInt('id', login.user.id);
      await prefs.setString('points', login.user.points);
      await prefs.setInt('roles', login.user.roles);
      await prefs.setString('phone', login.user.phone);
      await prefs.setString('address', login.user.address);
      await prefs.setString('timezone', login.user.timezone);
      await prefs.setInt('balance_id', login.user.balanceId);
      await prefs.setString('refferal', login.user.refferal);
      await prefs.setString('img', login.user.img);
      print("success respinse "+response.body);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    } else {
      print('Login api not working');
    }
    // print("Server response" + response.body);
  }
  OnRegisterPressed() {
    login(emailController.text, passwordController.text, FirstNameController.text,
      FirstNameController.text, LastNameController.text,);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    FirstNameController.dispose();
    LastNameController.dispose();
    PhoneController.dispose();
    super.dispose();
  }


  String name = "";
  bool valuefirst = false;
  bool valuesecond = false;
  final _formKey = GlobalKey<FormState>();


  var _isInit = true;

  @override
  void didChangeDependencies() {
    if(_isInit){
      Provider.of<LocationProvider>(context).getLocations();

    }
    _isInit = false;
    super.didChangeDependencies();
  }

  String? valueChoose ='';
  List listItem = [
    "Guadeloupe",
    "Martinique",
    "Guyane",
    "Le Reunion",
    "Saint-Martin",
  ];

  @override
  Widget build(BuildContext context) {
    final locationData = Provider.of<LocationProvider>(context, listen: false);
    final locations = locationData.locationItems;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                      controller: FirstNameController,
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
                        if (value == null || value.isEmpty) {
                          return 'Please enter name';
                        }
                        return null;
                      },
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: TextFormField(
                      controller: LastNameController,
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
                      controller: emailController,
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
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: TextFormField(
                      controller: PhoneController,
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
                        if (value == null || value.isEmpty) {
                          return 'Please enter phone number';
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
                          child:Container(
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
                              onChanged: (newvalue)
                              {
                                setState(() {
                                  valueChoose = newvalue.toString();
                                });
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => MyDiscover(id: valueChoose??"1")),
                                // );
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
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: TextFormField(

                      controller: passwordController,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                              )),
                          hintText: 'Enter your password',
                          labelText: 'Enter your password',
                          iconColor: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
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
                      // validator: (value) {
                      //   if (value == null || value.isEmpty) {
                      //     return 'Password not matched';
                      //   }
                      //   return null;
                      // },
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
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return "please enter user code";
                      //   }
                      //   return null;
                      // },
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
                          onPressed: () {

                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')),
                              );
                            }
                            OnRegisterPressed();

                          },
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
      ),
    );
  }
}
