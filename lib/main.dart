import 'package:flutter/material.dart';
import 'package:hello/utils/routes.dart';

import 'package:hello/page/login.dart';
import 'package:hello/utils/splash_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'BPKP',
//       theme: ThemeData(
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//           primaryColor: Colors.lightBlue,
//           accentColor: Colors.red,
//           brightness: Brightness.light,
//           textTheme: TextTheme(
//             headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//             headline5: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
//             headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//             bodyText1: TextStyle(
//               fontSize: 20.0,
//             ),
//             bodyText2: TextStyle(fontSize: 18.0),
//           )),
//       home: SplashHome(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.lightBlue,
          accentColor: Colors.red,
          brightness: Brightness.light,
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline5: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText1: TextStyle(
              fontSize: 20.0,
            ),
            bodyText2: TextStyle(fontSize: 18.0),
          )),
      title: 'BPKP',
      initialRoute: '/',
      routes: routes,
    );
  }
}
