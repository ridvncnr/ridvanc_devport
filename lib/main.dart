import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ridvanc_devport/Home_Screen.dart';
import 'package:ridvanc_devport/Info_Page.dart';
import 'package:ridvanc_devport/Video_Page.dart';



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
        "/": (BuildContext context) => const Home_Screen(),
        "/info": (BuildContext context) =>  Info_Page(),
        "/videos": (BuildContext context) => const Video_Page(),
      },
    );
  }
}
