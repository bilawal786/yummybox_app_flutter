
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yummy_box/screens/Forgetpassword.dart';
import 'package:yummy_box/screens/routes.dart';
import 'package:yummy_box/screens/sign-in.dart';
import 'package:yummy_box/screens/sign-up.dart';
import 'package:http/http.dart' as http;
import '../model/login_model.dart';
import 'discover.dart';
import 'discover.dart';
import 'notification.dart';




class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}



class _LoginState extends State<Login> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login(email, password) async {
    try {
      var response = await http.post(
        Uri.parse('https://demo.yummybox.fr/api/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
        },
        body:
        jsonEncode(<String, String>{'email': emailController.text, 'password': passwordController.text}),
      );
      if (response.statusCode == 200) {
        print('login successfully ');
        print(emailController.text);
        print(passwordController.text);
         final login = LoginModel.fromJson(jsonDecode(response.body));

         final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', login.token);
        await prefs.setString('name', login.user.name);
        await  prefs.setString('email', login.user.email);
        await prefs.setString('username', login.user.username);
         await prefs.setInt('id', login.user.id);
         await prefs.setInt('roles', login.user.roles);
         await prefs.setString('phone', login.user.phone);
         await prefs.setString('address', login.user.address);
         await prefs.setString('timezone', login.user.timezone);
         await prefs.setInt('balance_id', login.user.balanceId);
         await prefs.setString('refferal', login.user.refferal);
         await prefs.setString('img', login.user.img);


         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => MyDiscover(id: '1')),
         );
      } else {
        print('Response not working');
      }
      print(response.body);
    } catch (e) {
      print(e.toString());
    }
  }

  LoginButtonPressed(){
   login(emailController.text, passwordController.text);
  }
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool changeButton = false;
  bool valuefirst = false;
  bool valuesecond = false;
  final _formKey = GlobalKey();
  var isloaded = 0;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    "assets/test-image.jpeg",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Login to continoue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                          hintText: 'Email',
                          labelText: 'Email',
                          iconColor: Colors.white),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your Email";
                        } else if (value.length < 30) {
                          return " write your email";
                        }
                        return null;
                      }
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
                          hintText: ' *******',
                          labelText: 'Password',
                          iconColor: Colors.white),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is required ?";
                        } else if (value.length < 8) {
                          return " validation is required";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
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
                            LoginButtonPressed();
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
                                "Login",
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
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotScreen()),);
                          },
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          ),
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
                      Text(
                        "OU",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
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
                                "Create an account !",
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
                      Container(
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
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
                                "Browse as a guest",
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
