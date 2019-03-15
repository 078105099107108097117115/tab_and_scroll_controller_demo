import 'package:flutter/material.dart';
import 'package:tab_and_scroll_controller_demo/myHomePage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tabcontrollee and ScrollController Demo',
      theme: ThemeData(
        primaryColorDark: Colors.black,
        primaryColor: Colors.cyanAccent,
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}
