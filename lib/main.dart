import 'package:flutter/material.dart';
import 'package:login_screen/spalsh.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firstpage.dart';
import 'homepage.dart';
import 'homepage2.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  bool? isSplashVisited = prefs.getBool('isSplashVisited') ?? false;
  bool? isRagister = prefs.getBool('isRagisterg') ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
     (isSplashVisited == true)
      ?(isLoggedIn == true)
              ? '/'
         : 'HomePage'
      : 'SplashScreen',
      routes: {
        '/' : (context) => FirstPage(),
        'HomePage' : (context) => HomePage(),
        'SplashScreen' : (context) => SplashScreen(),
        'HomePage2' : (context) => HomePage2(),
      },
    ),
  );
}