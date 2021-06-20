import 'package:flutter/material.dart';
import 'package:i_harvest/Screen/Welcome/welcome_screen.dart';
import 'package:i_harvest/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: WelcomeScreen(),
    );
  }
}
