




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_harvest/constants.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'dart:io' show Platform;

class QRScan extends StatefulWidget {
  const QRScan({ Key key }) : super(key: key);

  @override
  _QRScanState createState() => _QRScanState();
}

class _QRScanState extends State<QRScan> {
  
final qrKey = GlobalKey(debugLabel: 'QR');
QRViewController controller;

@override
void dispose(){
  controller.dispose();
  super.dispose();
}

@override
void reassemble() async{
  super.reassemble();

if (Platform.isAndroid){
  await controller.pauseCamera();
}
  controller.resumeCamera();
}


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            buildQrView(context),
          ],
        )
      ),
      
    );
  }
  
  @override
  Widget buildQrView(BuildContext context){
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        cutOutSize: MediaQuery.of(context).size.width * 0.8,
        borderWidth: 10,
        borderColor: kPrimaryColor,
        borderLength: 20,
      ),
    
    
    );
  }

  void onQRViewCreated(QRViewController controller){
    setState(() => this.controller = controller);
  }
}