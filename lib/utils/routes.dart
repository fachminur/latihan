import 'package:flutter/cupertino.dart';
import 'package:hello/page/beranda.dart';

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
};
