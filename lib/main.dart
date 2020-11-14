import 'package:flutter/material.dart';
import 'package:learnr/LoginScreen.dart';
import 'package:learnr/other.dart';
import 'package:learnr/other.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learnr/signin_dart.dart';
import 'package:learnr/NavBar.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: WelcomeScreen.id,
      initialRoute: LoginScreen.id,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        LoginScreen.id: (context) => LoginScreen(),
        OtherPage.id: (context) => OtherPage(),
        Nav.id: (context) => Nav(),
        // volunteer.id: (context) => volunteer(),
      },
    );
  }
}
