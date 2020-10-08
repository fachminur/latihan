import 'package:flutter/cupertino.dart';
import 'package:hello/page/beranda.dart';
import 'package:hello/page/dashboard.dart';
import 'package:hello/page/dashboard2.dart';
import 'package:hello/page/dashboard3.dart';

import 'package:hello/page/home.dart';
import 'package:hello/page/login.dart';
import 'package:hello/page/more.dart';
import 'package:hello/utils/splash_screen.dart';

final routes = {
  '/': (context) => new SplashHome(),
  '/login': (context) => new Login(),
  '/home': (context) => HomePage(),
  '/beranda': (context) => Beranda(),
  '/more': (context) => ShowMore(),
  '/dashboard': (context) => Dashboard(),
  '/dashboard2': (context) => Dashboard2(),
  '/dashboard3': (context) => Dashboard3(),
};
