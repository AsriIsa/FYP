import 'package:flutter/material.dart';
import 'package:i_harvest/Iwan/home.dart';
import 'package:i_harvest/constants.dart';


class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'This will be the price',
      theme: ThemeData(
        
        primaryColor: kPrimaryColor,
      ),
      home: Home(),
    );
  }
}