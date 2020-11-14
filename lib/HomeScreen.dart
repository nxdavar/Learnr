import 'package:flutter/material.dart';
import 'package:learnr/main.dart';
import 'package:learnr/SettingsPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const SECONDARY_COLOR = const Color(0xFF9CB8E4);
  static const NAV_BAR_COLOR = const Color(0xFFC4C4C4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SECONDARY_COLOR,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            Text(
              'Learnr',
              style: TextStyle(
                  fontSize: 24.0, letterSpacing: 1.5, fontFamily: 'OpenSans'),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingsPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text('This do be the home screen'),
        ),
      ),
    );
  }
}
