import 'package:flutter/material.dart';
import 'package:flutterecommerceapp/screen/intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.light(),
      home: Scaffold(
        body: IntroScreen(),
      ),
    );
  }
}
