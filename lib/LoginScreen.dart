import 'package:flutter/material.dart';
import 'package:learnr/LevelOfEducation.dart';
import 'package:learnr/other.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learnr/signin_dart.dart';
import 'package:learnr/NavBar.dart';
import 'package:learnr/themeData.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';
  // This widget is the root of your application.
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  'Welcome to',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: "ReemKufi",
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  'Learnr',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                      fontFamily: "ReemKufi",
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.network(
                'https://answers.unity.com/storage/temp/157590-blockpiece.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: lightGrey,
                  onPressed: () {
                    signInWithGoogle().then((result) {
                      if (result != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return LevelOfEducation();
                            },
                          ),
                        );
                      }
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'images/google_transparent.png',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'OpenSans'),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
