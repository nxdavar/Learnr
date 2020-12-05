import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/SettingsPage.dart';
import 'package:learnr/ChatModel.dart';

class MessagesScreen extends StatefulWidget {
  static const String id = 'messages';
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
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
          child: ListView.builder(
            itemCount: ChatModel.dummyData.length,
            itemBuilder: (context, index) {
              ChatModel _model = ChatModel.dummyData[index];
              return Column(
                children: <Widget>[
                  Divider(
                    height: 20.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(_model.avatarUrl),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(_model.name,
                        style: TextStyle(fontSize: 20.0)),
                        SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          _model.datetime,
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                    subtitle: Text(_model.message,
                    style: TextStyle(fontSize: 14.0)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
