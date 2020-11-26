import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/CommonWidgets.dart';
import 'package:learnr/NavBar.dart';

class ChooseClasses extends StatefulWidget {
  static const String id = 'classes';
  @override
  _ChooseClassesState createState() => _ChooseClassesState();
}

class _ChooseClassesState extends State<ChooseClasses> {
  @override
  bool introvert = false;
  bool extrovert = false;
  bool auditory = false;
  bool kinesthetic = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();
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
                'Choose Your Classes:',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ReemKufi'),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 15.0),
                        child: Text(
                          'Find your Class:',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    // Search bar
                    padding: const EdgeInsets.fromLTRB(8, 15, 8, 8),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 0.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: LIGHT_BLUE,
                            ),
                            width: 400,
                            child: TextField(
                              onChanged: (value) {},
                              style: TextStyle(color: Colors.black),
                              controller: editingController,
                              decoration: InputDecoration(
                                  hintStyle:
                                      TextStyle(color: Color(0xFF4C5156)),
                                  hintText: 'BCH 369, CS 314...',
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 15.0),
                        child: Text(
                          'Your Current Classes:',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25.0, 0, 0, 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          height: 150,
                          width: 390,
                          child: ListView(
                            children: [
                              Container(
                                child: Card(
                                  child: Container(
                                    color: LIGHT_BLUE,
                                    child: ListTile(
                                      title: Text('MIS 321'),
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: LIGHT_BLUE,
                                  child: ListTile(
                                    title: Text('RHE 309'),
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: LIGHT_BLUE,
                                  child: ListTile(
                                    title: Text('BIO 465'),
                                  ),
                                ),
                              ),
                            ],
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
                    width: 80,
                    child: RaisedButton(
                      color: LIGHT_BLUE,
                      child: Text(
                        'FINISH',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Nav();
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
                    colorData: LIGHT_BLUE.withOpacity(0.7),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ProgressBarButton(
                    borderData: Border.all(width: 1.5, color: DARK_BLUE),
                    colorData: LIGHT_BLUE.withOpacity(0.7),
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
