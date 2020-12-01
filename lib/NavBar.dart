import 'package:flutter/material.dart';
import 'package:learnr/StudyRequests.dart';
import 'package:learnr/HomeScreen.dart';
import 'package:learnr/ProfileScreen.dart';
import 'package:learnr/MessagesScreen.dart';
import 'package:learnr/themeData.dart';

class Nav extends StatefulWidget {
  static const String id = 'navigation';
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MessagesScreen(),
    HomeScreen(),
    StudyRequests(),
    ProfileScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: NAV_BAR_COLOR.withOpacity(0.8),
            primaryColor: Colors.black,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.grey))),
        child: SizedBox(
          height: 85,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Messages'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.quick_contacts_mail_sharp),
                  label: 'Learnr Requests'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            backgroundColor: NAV_BAR_COLOR,
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
          ),
        ),
      ),
    );
  }
}
