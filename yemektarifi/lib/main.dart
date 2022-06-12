// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:yemektarifi/pages/splashpage.dart';
import 'package:yemektarifi/pages/welcomepage.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(duration: 5, goToPage: WelcomePage(),)
    );
  }
}
