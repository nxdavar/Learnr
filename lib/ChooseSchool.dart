import 'dart:core';

import 'package:flutter/material.dart';
import 'package:learnr/ChooseClasses.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/CommonWidgets.dart';

// this will be used to allow users to choose
// a different school
class School {
  int id;
  String name;

  School(this.id, this.name);

  static List<School> getSchools() {
    return <School>[
      School(1, 'University of Texas at Austin'),
      School(2, 'University of Texas at Dallas'),
      School(3, 'Texas A&M University'),
      School(4, 'Texas Tech University'),
    ];
  }
}

class Major {
  int id;
  String name;

  Major(this.id, this.name);

  static List<Major> getMajors() {
    return <Major>[
      Major(1, 'Business'),
      Major(2, 'Agricultural Sciences'),
      Major(3, 'Computer Science'),
      Major(4, 'Communications'),
      Major(5, 'Education'),
      Major(6, 'Engineering'),
      Major(7, 'Health Sciences'),
      Major(8, 'Philosophy'),
      Major(9, 'Biological Sciences'),
      Major(10, 'Physical Sciences'),
      Major(11, 'Social Sciences & Law'),
    ];
  }
}

class Year {
  int id;
  String name;

  Year(this.id, this.name);

  static List<Year> getYears() {
    return <Year>[
      Year(1, 'Freshman'),
      Year(2, 'Sophomore'),
      Year(3, 'Junior'),
      Year(4, 'Senior'),
    ];
  }
}

// ChooseSchool Dropdown class
class ChooseSchool extends StatefulWidget {
  static const String id = 'school';
  @override
  _ChooseSchoolState createState() => _ChooseSchoolState();
}

class _ChooseSchoolState extends State<ChooseSchool> {
  bool cramSelected = false;
  bool consistentSelected = false;
  bool noteTaker = false;
  bool conversation = false;
  bool silentStudy = false;
  bool activeRecall = false;
  // creating lists and items for Schools dropdown
  List<School> _schools = School.getSchools();
  List<DropdownMenuItem<School>> _schoolItems;
  School _selectedSchool;

  // creating lists and items for Majors dropdown
  List<Major> _majors = Major.getMajors();
  List<DropdownMenuItem<Major>> _majorItems;
  Major _selectedMajor;

  // creating lists and items for Years dropdown
  List<Year> _years = Year.getYears();
  List<DropdownMenuItem<Year>> _yearItems;
  Year _selectedYear;

  @override
  void initState() {
    _schoolItems = buildSchoolItems(_schools);
    _selectedSchool = _schoolItems[0].value;
    _majorItems = buildMajorItems(_majors);
    _selectedMajor = _majorItems[0].value;
    _yearItems = buildYearItems(_years);
    _selectedYear = _yearItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<School>> buildSchoolItems(List schools) {
    List<DropdownMenuItem<School>> items = List();
    for (School school in schools) {
      items.add(
        DropdownMenuItem(
          value: school,
          child: Text(school.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<Major>> buildMajorItems(List majors) {
    List<DropdownMenuItem<Major>> items = List();
    for (Major major in majors) {
      items.add(
        DropdownMenuItem(
          value: major,
          child: Text(major.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<Year>> buildYearItems(List years) {
    List<DropdownMenuItem<Year>> items = List();
    for (Year year in years) {
      items.add(
        DropdownMenuItem(
          value: year,
          child: Text(year.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(School selectedSchool) {
    setState(() {
      _selectedSchool = selectedSchool;
    });
  }

  changeMajorItem(Major selectedMajor) {
    setState(() {
      _selectedMajor = selectedMajor;
    });
  }

  changeYearItem(Year selectedYear) {
    setState(() {
      _selectedYear = selectedYear;
    });
  }

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
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: Image.asset('images/blank_profile.png'),
                )),
            SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    'Choose Your School:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  DropdownButton(
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                        fontSize: 16),
                    dropdownColor: LIGHT_BLUE,
                    iconDisabledColor: DARK_BLUE,
                    value: _selectedSchool,
                    items: _schoolItems,
                    onChanged: onChangeDropdownItem,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Choose Your Major:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  DropdownButton(
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                        fontSize: 16),
                    dropdownColor: LIGHT_BLUE,
                    iconDisabledColor: DARK_BLUE,
                    value: _selectedMajor,
                    items: _majorItems,
                    onChanged: changeMajorItem,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Choose Your Year:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  DropdownButton(
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Colors.black,
                        fontSize: 16),
                    dropdownColor: LIGHT_BLUE,
                    iconDisabledColor: DARK_BLUE,
                    value: _selectedYear,
                    items: _yearItems,
                    onChanged: changeYearItem,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    'Blurb:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: LIGHT_BLUE),
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontSize: 17.0),
                            keyboardType: TextInputType.multiline,
                            maxLines: 3),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
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
                              return ChooseClasses();
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
