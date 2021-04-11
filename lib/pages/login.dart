import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtechviral/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name;
  bool chnage = false;
  final _formkey = GlobalKey<FormState>();

  gotoHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        chnage = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        chnage = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assests/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          hintText: "Enter UserName",
                          labelText: 'Username'),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          print("Please Enter UserName");
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          hintText: "Enter Password",
                          labelText: 'Password'),
                      validator: (value) {
                        if (value.isEmpty) {
                          print("Enter the Password");
                        } else if (value.length < 6) {
                          print("Please Enter Atleast 6 Digit");
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AnimatedContainer(
                      width: chnage ? 140 : 180,
                      height: 50,
                      duration: Duration(seconds: 1),
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        onPressed: () => gotoHome(context),
                        child: chnage
                            ? Icon(Icons.done)
                            : Text(
                                "Login",
                                style: TextStyle(fontSize: 25),
                              ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
