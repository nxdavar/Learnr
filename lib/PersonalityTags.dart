import 'package:flutter/material.dart';
import 'package:learnr/ChooseSchool.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/CommonWidgets.dart';

class PersonalityTags extends StatefulWidget {
  static const String id = 'personality';
  @override
  _PersonalityTagsState createState() => _PersonalityTagsState();
}

class _PersonalityTagsState extends State<PersonalityTags> {
  bool introvert = false;
  bool extrovert = false;
  bool auditory = false;
  bool kinesthetic = false;

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
              flex: 1,
              child: Text(
                'Choose Your Filters:',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ReemKufi'),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 15.0),
                        child: Text(
                          'Personality Tags:',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Add the new widgets here
                      SizedBox(
                        height: 75,
                        width: 210,
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              introvert = !introvert;
                              if (introvert && extrovert) {
                                extrovert = !extrovert;
                              }
                            });
                          },
                          colour: introvert ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Introvert',
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
                        width: 210,
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              extrovert = !extrovert;
                              if (extrovert && introvert) {
                                introvert = !introvert;
                              }
                            });
                          },
                          colour: extrovert ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Extrovert',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 75,
                        width: 210,
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              auditory = !auditory;
                            });
                          },
                          colour: auditory ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Auditory Learner',
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
                        width: 210,
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              kinesthetic = !kinesthetic;
                            });
                          },
                          colour: kinesthetic ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Kinesthetic Learner',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    width: 70,
                    child: RaisedButton(
                      color: LIGHT_BLUE,
                      child: Text(
                        'BACK',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
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
                              return ChooseSchool();
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
                    borderData: Border.all(width: 2.0, color: DARK_BLUE),
                    colorData: LIGHT_BLUE.withOpacity(0.7),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ProgressBarButton(
                    borderData: Border.all(width: 1.5, color: DARK_BLUE),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
