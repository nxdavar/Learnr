import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  static const SECONDARY_COLOR = const Color(0xFF9CB8E4);
  static const NAV_BAR_COLOR = const Color(0xFFC4C4C4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: SECONDARY_COLOR,
        title: Text(
          'Learnr',
          style: TextStyle(
              fontSize: 24.0, letterSpacing: 1.5, fontFamily: 'OpenSans'),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('This do be the messages screen'),
        ),
      ),
    );
  }
}
