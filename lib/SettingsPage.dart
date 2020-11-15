import 'package:flutter/material.dart';
import 'package:learnr/LoginScreen.dart';
import 'package:learnr/signin_dart.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Settings',
          style: TextStyle(
              fontSize: 24.0, letterSpacing: 1.5, fontFamily: 'OpenSans'),
        ),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            color: Colors.red,
            child: Text(
              'LOG OUT',
              style: TextStyle(
                  fontFamily: 'OpenSans', fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              signOutGoogle();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
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
