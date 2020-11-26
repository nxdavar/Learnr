import 'package:flutter/material.dart';
import 'package:learnr/ProfileScreen.dart';
import 'package:learnr/themeData.dart';

class editProfile extends StatefulWidget {
  static const String id = 'editProfile';
  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LIGHT_BLUE,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 24.0,
            letterSpacing: 1.5,
            fontFamily: 'OpenSans',
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            color: LIGHT_BLUE,
            child: Text(
              'Update Profile',
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'OpenSans',
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
