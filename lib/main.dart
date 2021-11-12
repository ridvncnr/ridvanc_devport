import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ridvanc_devport/HomeScreen.dart';
import 'InfoPage.dart';
import 'VideoPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ridvan Cinar Flutter Portfolio',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(fontFamily: 'Raleway'),
      routes: {
        "/": (BuildContext context) => HomeScreen(),
        "/info": (BuildContext context) =>  InfoPage(),
        "/videos": (BuildContext context) => VideoPage(),
      },
    );
  }
}
