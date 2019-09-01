import 'package:flutter/material.dart';
import 'package:sqm/scan/scan.dart';
import 'package:sqm/ui/adminhome.dart';

int lcountValue = 50;
int ccountValue = 50;
int ecountValue = 50;
int f1 = 0;
int f2 = 0;

class View extends StatefulWidget {
  @override
  ViewState createState() {
    return new ViewState();
  }
}

class ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
            backgroundColor: Colors.pink[900],
            title: Text('Join Queue ', textScaleFactor: 1.3)),
        body: Container(
            padding: EdgeInsets.only(top: 20, left: 2.00, right: 5.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20, left: 2.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Department",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.pink[900],
                            fontSize: 18.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      )),
                      Expanded(
                          child: Text(
                        "Curr. token",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.pink[900],
                            fontSize: 19.0,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold),
                      )),
                      Expanded(
                          child: Text(
                        "Pressbutton",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 5.0, right: 12.0),

                  ///for buttons and state etc
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Loan",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 22.0, decoration: TextDecoration.none),
                      )),
                      Expanded(
                          child: Text("  " + loanValue.toString(),
                              style: TextStyle(fontSize: 23.0))),
                      RaisedButton(
                        color: Colors.pink[300],
                        textColor: Colors.white,
                        child: Text(
                          'Join ',
                        ),
                        onPressed: () {
                          f1 = 1;
                          f2 = 0;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScanPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                //2nd row
                Container(
                  padding: EdgeInsets.only(top: 20, left: 5.0, right: 12.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Cash Deposit",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 22.0, decoration: TextDecoration.none),
                      )),
                      Expanded(
                          child: Text("  " + cash.toString(),
                              style: TextStyle(fontSize: 23.0))),
                      RaisedButton(
                        color: Colors.pink[300],
                        textColor: Colors.white,
                        child: Text('Join '),
                        onPressed: () {
                          f1 = 0;
                          f2 = 1;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScanPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 20, left: 5.0, right: 12.0),
                  //3rd row
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Enquiry",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 22.0, decoration: TextDecoration.none),
                      )),
                      Expanded(
                          child: Text("  " + enquiry.toString(),
                              style: TextStyle(fontSize: 23.0))),
                      RaisedButton(
                        color: Colors.pink[300],
                        textColor: Colors.white,
                        child: Text('Join '),
                        onPressed: () {
                          f1 = 1;
                          f2 = 1;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScanPage()),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
