import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_harvest/Screen/Dashboard/dashboard_screen.dart';
import 'package:i_harvest/Screen/Welcome/components/background.dart';
import 'package:i_harvest/component/roundedButton.dart';



class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Background(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      
      Text('Welcome to IHARVEST',style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      ),
      SizedBox(
        height: 50,
      ),
      SvgPicture.asset('assets/images/welcomepage.svg',height: size.height * 0.45,),
      SizedBox(
        height: 50,
      ),
      RoundedButton(
        text: 'Get Started',
        press: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return DashBoard();},
        ),);
        },
      ),
      SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Powered by    '),
         SvgPicture.asset('assets/images/fama.svg',height: size.height * 0.05,),
        ],
      ),
    ],
    ),
    );
  }
}

