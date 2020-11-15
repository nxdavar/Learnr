import 'package:flutter/material.dart';
import 'package:learnr/PersonalityTags.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/CommonWidgets.dart';

class LearnrTags extends StatefulWidget {
  static const String id = 'learnrTags';
  @override
  _LearnrTagsState createState() => _LearnrTagsState();
}

class _LearnrTagsState extends State<LearnrTags> {
  bool cramSelected = false;
  bool consistentSelected = false;
  bool noteTaker = false;
  bool conversation = false;
  bool silentStudy = false;
  bool activeRecall = false;

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
                          'Learnr Tags:',
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
                              cramSelected = !cramSelected;
                            });
                          },
                          colour: cramSelected ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Cram',
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
                              consistentSelected = !consistentSelected;
                            });
                          },
                          colour: consistentSelected ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Consistent',
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
                              activeRecall = !activeRecall;
                            });
                          },
                          colour: activeRecall ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Active Recall',
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
                              noteTaker = !noteTaker;
                            });
                          },
                          colour: noteTaker ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Note Taker',
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
                              conversation = !conversation;
                            });
                          },
                          colour: conversation ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Conversationalist',
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
                              silentStudy = !silentStudy;
                            });
                          },
                          colour: silentStudy ? DARK_BLUE : LIGHT_BLUE,
                          cardChild: Center(
                            child: Text(
                              'Silent Study',
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
                              return PersonalityTags();
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
