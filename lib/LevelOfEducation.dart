import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/LearnrTags.dart';
import 'package:learnr/CommonWidgets.dart';

enum educationLevel {
  college,
  highSchool,
}

class LevelOfEducation extends StatefulWidget {
  static const String id = 'education';
  @override
  _LevelOfEducationState createState() => _LevelOfEducationState();
}

class _LevelOfEducationState extends State<LevelOfEducation> {
  educationLevel selectedLevel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Text(
                'Please select your level of education:',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ReemKufi'),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                    width: 280,
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedLevel = educationLevel.college;
                        });
                      },
                      colour: selectedLevel == educationLevel.college
                          ? DARK_BLUE
                          : LIGHT_BLUE,
                      cardChild: Center(
                        child: Text(
                          'College',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                    width: 280,
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedLevel = educationLevel.highSchool;
                        });
                      },
                      colour: selectedLevel == educationLevel.highSchool
                          ? DARK_BLUE
                          : LIGHT_BLUE,
                      cardChild: Center(
                        child: Text(
                          'High School (Beta)',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 40,
                    width: 70,
                    child: RaisedButton(
                      color: LIGHT_BLUE,
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return LearnrTags();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProgressBarButton(
                    borderData: Border.all(width: 2.0, color: DARK_BLUE),
                    colorData: LIGHT_BLUE.withOpacity(0.7),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ProgressBarButton(
                    borderData: Border.all(width: 1.5, color: DARK_BLUE),
                    colorData: LIGHT_BLUE.withOpacity(0.2),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ProgressBarButton(
                    borderData: Border.all(width: 1.5, color: DARK_BLUE),
                    colorData: LIGHT_BLUE.withOpacity(0.2),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ProgressBarButton(
                    borderData: Border.all(width: 1.5, color: DARK_BLUE),
                    colorData: LIGHT_BLUE.withOpacity(0.2),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ProgressBarButton(
                    borderData: Border.all(width: 1.5, color: DARK_BLUE),
                    colorData: LIGHT_BLUE.withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
