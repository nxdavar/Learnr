import 'package:flutter/material.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/SettingsPage.dart';

class StudyRequests extends StatefulWidget {
  static const String id = 'requests';
  @override
  static const String id = 'StudyRequests';
  _StudyRequestsState createState() => _StudyRequestsState();
}

class _StudyRequestsState extends State<StudyRequests> {
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
                'Learnr',
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
      body: Center(
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Divider(
                  height: 20.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage('https://scontent-dfw5-1.xx.fbcdn.net/v/t1.15752-9/s2048x2048/128687479_2860104237606373_1210815728475186783_n.jpg?_nc_cat=103&ccb=2&_nc_sid=ae9488&_nc_ohc=NO05ccjxRSoAX_FuhKh&_nc_ht=scontent-dfw5-1.xx&tp=7&oh=bb418a9a687ced4378d7cff9420ade31&oe=5FEFBA59'),
                  ),
                  title: Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Icon(Icons.do_not_disturb, color: Colors.red),
                      SizedBox(width: 30),
                      Text('Neal Davar',
                          style: TextStyle(fontSize: 20.0)),
                      SizedBox(width: 30),
                      Icon(Icons.check, color: Colors.green),
                    ],
                  ),
                  trailing: Icon(
                    Icons.info,
                    size: 25.0,
                  ),
                ),
                Divider(
                  height: 20.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1592085549692-e936f347b400?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29sbGVnZSUyMHN0dWRlbnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Icon(Icons.do_not_disturb, color: Colors.red),
                      SizedBox(width: 30),
                      Text('Jenny Vu',
                          style: TextStyle(fontSize: 20.0)),
                      SizedBox(width: 30),
                      Icon(Icons.check, color: Colors.green),
                    ],
                  ),
                  trailing: Icon(
                    Icons.info,
                    size: 25.0,
                  ),
                ),
                Divider(
                  height: 20.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1593371545309-559a8cf66fda?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=700&q=80'),
                  ),
                  title: Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Icon(Icons.do_not_disturb, color: Colors.red),
                      SizedBox(width: 30),
                      Text('Mark Jones',
                          style: TextStyle(fontSize: 20.0)),
                      SizedBox(width: 30),
                      Icon(Icons.check, color: Colors.green),
                    ],
                  ),
                  trailing: Icon(
                    Icons.info,
                    size: 25.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
