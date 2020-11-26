import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/SettingsPage.dart';

class StudyRequests extends StatefulWidget {
  @override
  _StudyRequestsState createState() => _StudyRequestsState();
}

class _StudyRequestsState extends State<StudyRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: LIGHT_BLUE,
        title: Row(
          children: [
            Expanded(
              child: Container(),
              flex: 2,
            ),
            Expanded(
              flex: 2,
              child: Text(
                'Learnr',
                style: TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 1.5,
                  fontFamily: 'OpenSans',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
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
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text('This do be the study requests screen'),
        ),
      ),
    );
  }
}
