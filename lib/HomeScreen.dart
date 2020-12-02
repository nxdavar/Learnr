import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learnr/SettingsPage.dart';
import 'package:learnr/themeData.dart';
import 'package:bubble/bubble.dart';
import 'package:learnr/CommonWidgets.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

ListTile header(String text) {
  return ListTile(
    title: Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        )),
  );
}

SizedBox spacing(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox card(String text) {
  return SizedBox(
    height: 75,
    width: 180,
    child: ReusableCard(
      colour: LIGHT_BLUE,
      cardChild: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Card classes(String course) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: LIGHT_BLUE,
    child: ListTile(
      title: Text(course,
          textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
    ),
    margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
  );
}

Text belowPicText(String text, double fontSize) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontFamily: 'openSans',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextButton icon(IconData image, Color color) {
  return TextButton(
    child: Icon(
      image,
      color: color,
      size: 100,
    ),
    onPressed: () {},
  );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: LIGHT_BLUE,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }),
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            spacing(50), // calls helper method to create sized box
            Center(
              child: Container(
                child: Image(
                  image: AssetImage('images/nitinpic.jpg'),
                  height: 250,
                  width: 250,
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
              ),
            ),
            spacing(5),
            belowPicText('Name: Nitin Naresh', 15),
            spacing(5),
            belowPicText('Major: Computer Science', 15),
            spacing(5),
            belowPicText('Year: Freshman', 15),
            Bubble(
              alignment: Alignment.center,
              color: LIGHT_BLUE,
              padding: BubbleEdges.all(20),
              margin: BubbleEdges.only(left: 40, right: 40, top: 5, bottom: 10),
              radius: Radius.circular(50),
              child: Text(
                'Looking for a partner for pair programming assignments, '
                'or someone who wants to learn a new language! Preferably'
                ' Python, but I\'m looking for more experience in general!',
                style: TextStyle(fontSize: 15, fontFamily: 'openSans'),
                textAlign: TextAlign.center,
              ),
            ),
            belowPicText('Personality Tags: ', 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card('Cram'),
                card('Extrovert'),
              ],
            ),
            SizedBox(width: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                icon(Icons.check_circle_outline_sharp, Colors.green),
                icon(Icons.do_not_disturb, Colors.red),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 150.0,
              child: DrawerHeader(
                child: Text(
                  'Filters',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
              ),
            ),
            header('Change Classes'),
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
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Color(0xFF4C5156)),
                            hintText: 'BCH 369, CS 314...',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            header('Your Classes'),
            classes('CS 314'),
            classes('CS 311'),
            classes('M408D'),
            header('Study Habits'),
            classes('Cram'),
            classes('Extrovert'),
            header('Desired Learnr Habits'),
            classes('Extrovert'),
          ],
        ),
      ),
    );
  }
}
