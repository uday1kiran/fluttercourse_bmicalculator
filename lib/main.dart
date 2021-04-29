import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.red, //top menu color.
          accentColor: Colors.purple, // sub items color,like floating action button.
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))
      ),
      home: InputPage(),
    );
  }
}


