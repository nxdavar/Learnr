import 'package:flutter/material.dart';
import 'package:learnr/LevelOfEducation.dart';
import 'package:learnr/themeData.dart';
import 'package:learnr/sign_in.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';
  // This widget is the root of your application.
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learnr',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Image.asset(
                    'images/LearnrSplash.png',
                    height: 400,
                    width: 400,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: LIGHT_GREY,
                        onPressed: () {
                          signInWithGoogle().then((result) {
                            if (result != null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LevelOfEducation();
                                  },
                                ),
                              );
                            }
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'images/google_transparent.png',
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sign in with Google',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'OpenSans'),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
