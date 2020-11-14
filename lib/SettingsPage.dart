import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  static const SECONDARY_COLOR = const Color(0xFF9CB8E4);
  static const NAV_BAR_COLOR = const Color(0xFFC4C4C4);

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
          child: Text('This do be the profile screen'),
        ),
      ),
    );
  }
}
