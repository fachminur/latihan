import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/page/login.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashHome extends StatefulWidget {
  @override
  _SplashHomeState createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 10,
        navigateAfterSeconds: AfterSplash(),
        title: Text(
          'Getting Started',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('assets/flutter.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.lightBlue);
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Login());
  }
}
