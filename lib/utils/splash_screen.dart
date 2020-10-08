import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/page/beranda.dart';
import 'package:hello/page/dashboard.dart';
import 'package:hello/page/dashboard2.dart';
import 'package:hello/page/dashboard3.dart';
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
        seconds: 5,
        navigateAfterSeconds: AfterSplash(),
        title: Text(
          'SPIP Mobile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('assets/logo-bpkp.png'),
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
