import 'package:flutter/material.dart';
import 'package:learnr/ChooseSchool.dart';
import 'package:learnr/HomeScreenAlternative.dart';
import 'package:learnr/LevelOfEducation.dart';
import 'package:learnr/MessagesScreen.dart';
import 'package:learnr/NealMessageScreen.dart';
import 'package:learnr/StudyRequests.dart';
import 'LoginScreen.dart';
import 'package:learnr/PersonalityTags.dart';
import 'package:learnr/editProfile.dart';
import 'package:learnr/other.dart';
import 'package:learnr/NavBar.dart';
import 'package:learnr/LearnrTags.dart';
import 'package:learnr/ChooseClasses.dart';
import 'package:learnr/HomeScreen.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: WelcomeScreen.id,
      initialRoute: StudyRequests.id,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        MessagesScreen.id: (context) => MessagesScreen(),
        OtherPage.id: (context) => OtherPage(),
        NealMessageScreen.id: (context) => NealMessageScreen(),
        Nav.id: (context) => Nav(),
        //CRUDTest.id: (context) => CRUDTest(),
        LevelOfEducation.id: (context) => LevelOfEducation(),
        LearnrTags.id: (context) => LearnrTags(),
        PersonalityTags.id: (context) => PersonalityTags(),
        ChooseSchool.id: (context) => ChooseSchool(),
        ChooseClasses.id: (context) => ChooseClasses(),
        editProfile.id: (context) => editProfile(),
        HomeScreenAlternative.id: (context) => HomeScreenAlternative(),
        StudyRequests.id: (context) => StudyRequests(),
        // volunteer.id: (context) => volunteer(),
      },
    );
  }
}
