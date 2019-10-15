import 'package:flutter/material.dart';
import 'package:sound_reconized/Navigation/Navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.white,
        textTheme: TextTheme(
          title: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.cyanAccent),
        ),
      ),
    );
  }
}
