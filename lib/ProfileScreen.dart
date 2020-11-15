import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: LIGHT_BLUE,
        title: Text(
          'Learnr',
          style: TextStyle(
              fontSize: 24.0, letterSpacing: 1.5, fontFamily: 'OpenSans'),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('This do be the profile screen'),
        ),
      ),
    );
  }
}
