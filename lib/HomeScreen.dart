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

Text belowPicText(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
      fontFamily: 'openSans',
      fontSize: 15,
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
                  border: Border.all(
                    width: 2,
                  ),
                ),
              ),
            ),
            spacing(5),
            belowPicText('Name: Nitin Naresh'),
            spacing(5),
            belowPicText('Major: Computer Science'),
            spacing(5),
            belowPicText('Year: Freshman'),
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
            Text(
              'Personality Tags: ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'openSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
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
    );
  }
}
