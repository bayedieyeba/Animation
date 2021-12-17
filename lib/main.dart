import 'package:animation/welcome_page.dart';
import 'package:flutter/material.dart';

const d_red = const Color(0xFFE9717D);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
