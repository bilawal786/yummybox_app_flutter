import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yummy_box/screens/Forgetpassword.dart';
import 'package:yummy_box/screens/sign-in.dart';
import 'package:yummy_box/screens/sign-up.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import '../provider/local_provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {

  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<LocaleProvider>(context, listen: false);
      provider.clearLocale();
    });
  }

  String name = "";
  bool changeButton = false;
  bool valuefirst = false;
  bool valuesecond = false;
  final _formKey = GlobalKey();

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
                    AppLocalizations.of(context)!.loginText,
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
