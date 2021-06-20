import 'package:flutter/material.dart';
import 'package:i_harvest/Iwan/secondpage.dart';
import 'package:i_harvest/constants.dart';



class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child:RaisedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(
               builder: (context)=>Secondpage()
               ));
        },
        child: Text('Current price'),
        )
      ),
    );
  }
}