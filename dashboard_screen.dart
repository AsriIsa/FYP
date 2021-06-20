import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_harvest/Iwan/firstpage.dart';
import 'package:i_harvest/Iwan/scan.dart';
import 'package:i_harvest/Screen/Welcome/components/background.dart';
import 'package:i_harvest/component/roundedButton.dart';
import 'package:i_harvest/constants.dart';



class DashBoard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: UpperBackground(),
    );
      
    
  }
}

class UpperBackground extends StatelessWidget {
  
  const UpperBackground({
    Key key,
    
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      
            child: Stack(
        children: <Widget>[
          Container(
            height: size.height * .5,
            decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/images/kictgarden.jpg"),
                ),
              ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/logouia.png'),
                  backgroundColor: Colors.tealAccent[700],
                ),
                SizedBox(
                  height: 40,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                                    child: Container(
                    alignment: Alignment.center,
                    color: kPrimaryLightColor,
                    height: size.height * 0.1,
                    width: size.width * 0.9,
                    
                  ),
                ),

                SizedBox(
                  height: 40,
                ),
                Row(
                                  children: <Widget>[
                                Expanded(
                                                                  child: Column(
                                                                            children: <Widget>[CircleAvatar(
                                               backgroundImage: NetworkImage('https://image.freepik.com/free-vector/phone-scan-icon-phone-hand_255524-168.jpg'),
                                               ),
                                               FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return QRScan();},
        ),);
        }, child: Text('Scan'),
                                               )
                                                                             ] ),
                                ),
                                Expanded(
                                                                  child: Column(
                                                                            children: <Widget>[CircleAvatar(
                                               backgroundImage: NetworkImage('https://image.flaticon.com/icons/png/512/306/306439.png'),
                                              backgroundColor: Colors.white,
                                              
                                               ),
                                               FlatButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return Firstpage();},
        ),);
        }, child: Text('Search'),
                                               )
                                                                             ] ),
                                ),
                                Expanded(
                                                                  child: Column(
                                                                            children: <Widget>[CircleAvatar(
                                               backgroundImage: NetworkImage('https://png.pngtree.com/element_our/png_detail/20181229/vector-directions-icon-png_302734.jpg'),
                                               backgroundColor: Colors.white,
                                               ),
                                               FlatButton(onPressed: (){}, child: Text('Garden Layout'),
                                               )
                                                                             ] ),
                                ),
                  ]
                ),
                SizedBox(
                    height: 30,
                ),
                 SvgPicture.asset('assets/images/welcome.svg',height: size.height * 0.2,),
                 SizedBox(
                    height: 30,
                ),
                 Text('Everything is Here',style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                 ),),
              ],
            ),
          ),
          
        ],

      ),
    );
  }
}