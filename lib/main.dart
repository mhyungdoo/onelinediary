import 'package:flutter/material.dart';
import 'package:onelinediary/page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Line Diary',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Noto Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
