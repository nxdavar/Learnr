import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:learnr/SettingsPage.dart';
import 'package:learnr/themeData.dart';
import 'package:bubble/bubble.dart';
import 'package:learnr/CommonWidgets.dart';
import 'package:learnr/card_example.dart';
import 'package:swipeable_card/swipeable_card.dart';

class HomeScreenAlternative extends StatefulWidget {
  static const String id = 'alternative';
  @override
  _HomeScreenAlternativeState createState() => _HomeScreenAlternativeState();
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

class _HomeScreenAlternativeState extends State<HomeScreenAlternative> {
  @override
  final List<CardExample> cards = [
    CardExample(
      imageUrl: "images/ritikapic.jpg",
      userName: "Name: Ritika Palacharla",
      major: "Major: Finance",
      year: "Year: Freshman",
      personId1: "Auditory Learnr",
      personId2: "Extrovert",
      pTagOne: "Consistent",
      pTagTwo: "Conversationalist",
      blurb:
          "I’m looking for a casual study buddy who would be down to study at a cafe or coffee shop right after class.",
    ),
    CardExample(
      imageUrl: "images/clarapic.jpg",
      userName: "Name: Clara Jones",
      major: "Major: Political Science",
      year: "Year: Sophomore",
      personId1: "Extrovert",
      personId2: "Kinesthetic Learnr",
      pTagOne: "Active Recall",
      pTagTwo: "Conversationalist",
      blurb:
          "I am looking for someone in my political science class who would not mind working on group projects together.",
    ),
    CardExample(
      imageUrl: "images/josephpic.jpg",
      userName: "Name: Henry Smith",
      major: "Major: Architecture",
      year: "Year: Junior",
      personId1: "Extrovert",
      personId2: "Auditory Learnr",
      pTagOne: "Note Taker",
      pTagTwo: "Conversationalist",
      blurb:
          "I am looking for an upperclassmen who would not mind giving me input on some of my blueprint projects for my classes.",
    ),
    CardExample(
      imageUrl: "images/nitinpic.jpg",
      userName: "Name: Nitin Naresh",
      major: "Major: Computer Science",
      year: "Year: Freshman",
      pTagOne: "Cram",
      pTagTwo: "Conversationalist",
      personId1: "Kinesthetic Learnr",
      personId2: "Extrovert",
      blurb:
          "Looking for a partner for pair programming assignments, or someone who wants to learn a new language! (Preferably Python)",
    ),
    CardExample(),
  ];
  int currentCardIndex = 0;

  Widget build(BuildContext context) {
    SwipeableWidgetController _cardController = SwipeableWidgetController();
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
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            if (currentCardIndex < cards.length)
              SwipeableWidgetSlide(
                key: ObjectKey(currentCardIndex),
                child: cards[currentCardIndex],
                onLeftSwipe: () => swipeLeft(),
                onRightSwipe: () => swipeRight(),
                onTopSwipe: () => swipeTop(),
                onBottomSwipe: () => swipeBottom(),
                nextCards: <Widget>[
                  // show next card
                  // if there are no next cards, show nothing
                  if (!(currentCardIndex + 1 >= cards.length))
                    Align(
                      alignment: Alignment.center,
                      child: cards[currentCardIndex + 1],
                    ),
                ],
              )
            else
              // if the deck is complete, add a button to reset deck
              Center(
                child: FlatButton(
                  child: Text("Reset deck"),
                  onPressed: () => setState(() => currentCardIndex = 0),
                ),
              ),

            // only show the card controlling buttons when there are cards
            // otherwise, just hide it
            if (currentCardIndex < cards.length)
              cardControllerRow(_cardController),
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
                child: Row(
                  children: [
                    SizedBox(width: 100),
                    Text(
                      'Filters',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25.0),
                    ),
                    SizedBox(width: 70),
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: LIGHT_BLUE,
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
            classes('SOC 302'),
            classes('MIS 321'),
            header('Your Study Habits'),
            classes('Cram'),
            classes('Note Taker'),
            header('Desired Learnr Habits'),
            classes('Conversationalist'),
          ],
        ),
      ),
    );
  }

  void swipeLeft() {
    print("left");

    // NOTE: it is your job to change the card
    setState(() => currentCardIndex++);
  }

  void swipeRight() {
    print("right");
    setState(() => currentCardIndex++);
  }

  void swipeTop() {
    print("top");
    setState(() => currentCardIndex++);
  }

  void swipeBottom() {
    print("top");
    setState(() => currentCardIndex++);
  }

  Widget cardControllerRow(SwipeableWidgetController cardController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[],
    );
  }
}
