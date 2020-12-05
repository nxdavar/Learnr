import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';

import 'HomeScreen.dart';

class CardExample extends StatelessWidget {
  const CardExample({
    Key key,
    this.imageUrl = "images/henrypic.jpg",
    this.userName = "Name: Chloe Jones",
    this.major = "Major: Architecture",
    this.year = "Year: Junior",
    this.blurb =
        "Looking for a senior student who can sometimes help read over my resumes for full time roles. ",
    this.pTagOne = "Cram",
    this.pTagTwo = "Note Taker",
    this.personId1 = "Extrovert",
    this.personId2 = "Kinesthetic",
  }) : super(key: key);
  final String imageUrl;
  final String userName;
  final String major;
  final String year;
  final String blurb;
  final String pTagOne;
  final String pTagTwo;
  final String personId1;
  final String personId2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 770,
      width: 450,
      margin: EdgeInsets.all(12),
      // Warning: hard-coding values like this is a bad practice
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 2.0,
          color: DARK_BLUE,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: Container(
                child: Image.asset(imageUrl),
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                ),
              ),
            ),
          ),
          spacing(10),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                belowPicText(userName, 18),
                spacing(4),
                belowPicText(major, 18),
                spacing(4),
                belowPicText(year, 18)
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Bubble(
              alignment: Alignment.center,
              color: LIGHT_BLUE,
              padding: BubbleEdges.all(15),
              margin: BubbleEdges.only(left: 40, right: 40, top: 5, bottom: 10),
              radius: Radius.circular(50),
              child: Text(
                blurb,
                style: TextStyle(fontSize: 15, fontFamily: 'openSans'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          spacing(15),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                belowPicText('Learnr Tags: ', 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(pTagOne),
                    card(pTagTwo),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                belowPicText('Personality Badges: ', 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    card(personId1),
                    card(personId2),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Colors.greenAccent,
                      size: 25,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 25,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
