import 'package:flutter/material.dart';
import 'package:learnr/CRUDTest.dart';
import 'package:learnr/ChooseSchool.dart';
import 'package:learnr/LevelOfEducation.dart';
import 'package:learnr/LoginScreen.dart';
import 'package:learnr/PersonalityTags.dart';
import 'package:learnr/editProfile.dart';
import 'package:learnr/other.dart';
import 'package:learnr/other.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learnr/sign_in.dart';
import 'package:learnr/NavBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:learnr/CRUDTest.dart';
import 'package:learnr/LearnrTags.dart';
import 'package:learnr/ChooseClasses.dart';

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
        CRUDTest.id: (context) => CRUDTest(),
        LevelOfEducation.id: (context) => LevelOfEducation(),
        LearnrTags.id: (context) => LearnrTags(),
        PersonalityTags.id: (context) => PersonalityTags(),
        ChooseSchool.id: (context) => ChooseSchool(),
        ChooseClasses.id: (context) => ChooseClasses(),
        editProfile.id: (context) => editProfile(),
        // volunteer.id: (context) => volunteer(),
      },
    );
  }
}
