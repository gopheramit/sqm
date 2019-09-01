import 'package:flutter/material.dart';
import 'dart:async';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:sqm/ui/home.dart';

class ScanPage extends StatefulWidget {
  @override
  ScanPageState createState() {
    return new ScanPageState();
  }
}

class ScanPageState extends State<ScanPage> {
  String result = "Click on scan to join Queue !";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        if (f1 == 1 && f2 == 0) {
          var x = int.parse(qrResult);

          x = x + lcountValue;
          lcountValue = lcountValue + 1;
          result ="You are Added to Loan Enquiry Queue\n"+ "Your token no is  " + x.toString();
        }
        if (f1 == 0 && f2 == 1) {
          var x = int.parse(qrResult);
          x = x + ccountValue;
          ccountValue = ccountValue + 1;
          result = "You are Added to Cash/Deposit Queue\n"+ "Your token no is  " + x.toString();
        }
        if (f1 == 1 && f2 == 1) {
          var x = int.parse(qrResult);
          x = x + ecountValue;
          ecountValue = ecountValue + 1;
          result = "You are Added to General Enquiry Queue\n"+ "Your token no is  " + x.toString();
        }
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: Text("QR Scanner", textScaleFactor: 1.3),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Text(
                  result,
                  style: new TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink[900]),
                ),
              ),
              RaisedButton(
                  color: Colors.pink[300],
                  textColor: Colors.white,
                  child: Text('Scan', textScaleFactor: 2.0),
                  onPressed: () {
                    _scanQR();
                  }),
              RaisedButton(
                  color: Colors.pink[300],
                  textColor: Colors.white,
                  child: Text('Done', textScaleFactor: 2.0),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => ScanPage()),
                    );
                  })
            ],
          ),
        ));
  }
}
