import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/SettingsPage.dart';
import 'package:bubble/bubble.dart';

class NealMessageScreen extends StatefulWidget {
  static const String id = 'NealMessageScreen';
  @override
  _NealMessageScreenState createState() => _NealMessageScreenState();
}

Bubble addText(String text, Alignment align, Color color, BubbleNip nip) {
  return Bubble(
    child: Text(text, style: TextStyle(fontSize: 20, fontFamily: 'OpenSans')),
    alignment: align,
    color: color,
    margin: BubbleEdges.fromLTRB(10, 0, 10, 20),
    nip: nip,
  );
}

class _NealMessageScreenState extends State<NealMessageScreen> {
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
                'Messages',
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
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ListTile(
                  leading: Image.network(
                      "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.15752-0/p280x280/128687479_2860104237606373_1210815728475186783"
                      "_n.jpg?_nc_cat=103&ccb=2&_nc_sid=ae9488&_nc_ohc=OAWCsznd7ksAX9kF63k&_nc_ht=scontent-dfw5-1.xx&tp=6&oh=00d2cfef2"
                      "ffd2f3e70b3b82120a45075&oe=5FE9E60B"),
                  title: Text('          Neal Dawar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'OpenSans')),
                  tileColor: DARK_GREY,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              SizedBox(height: 20),
              addText('You\'ve matched!', Alignment.center, LIGHT_BLUE, null),
              addText('Hey, I\'m Nitin!', Alignment.topRight, DARK_GREY,
                  BubbleNip.rightTop),
              addText('Hey, I\'m Neal! What do you wanna work on?',
                  Alignment.topLeft, LIGHT_GREY, BubbleNip.leftTop),
              addText(
                  'I have a CS Exam coming up. Do you want to go over some practice test'
                  's?',
                  Alignment.topRight,
                  DARK_GREY,
                  BubbleNip.rightTop),
              addText('Sounds good man! When are you free to meet?',
                  Alignment.topLeft, LIGHT_GREY, BubbleNip.leftTop),
              addText(
                  'I\'m free pretty much all day Saturday. Let me know what time works for you!',
                  Alignment.topRight,
                  DARK_GREY,
                  BubbleNip.rightTop),
              addText('Let\'s do Saturday at 8 pm then.', Alignment.topLeft,
                  LIGHT_GREY, BubbleNip.leftTop),
              addText('Alright, I\'ll see you there man!', Alignment.topRight,
                  DARK_GREY, BubbleNip.rightTop),
              SizedBox(height: 30),
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
                              hintText: 'Type a message...',
                              suffixIcon: Icon(
                                Icons.send,
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
            ],
          ),
        ),
      ),
    );
  }
}
