import 'package:flutter/material.dart';

int loanValue = 50;
int cash = 50;
int enquiry = 50;

class AdView extends StatefulWidget {
  @override
  AdViewState createState() {
    return new AdViewState();
  }
}

class AdViewState extends State<AdView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: Text(
            'Provide Service',
            textScaleFactor: 1.3,
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 20,left:2.0 ),
            child: Column(
              children: <Widget>[
                Row(
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
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      "PressButton",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.pink[900],
                          fontSize: 18.0,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
Container(
                ///for buttons and state etc
                ///padding: EdgeInsets.only(top: 20, left: 2.00, right: 5.0),
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
                        child: Text("  "+loanValue.toString(),
                            style: TextStyle(fontSize: 22.0))),
                    RaisedButton(
                      color: Colors.pink[300],
                      textColor: Colors.white,
                      child: Text('Processed '),
                      onPressed: () {
                        add();
                      },
                    ),
                  ],
                ),
),
                Container
                (//2nd row
                padding: EdgeInsets.only(top: 20, left: 2.00, right: 5.0),
                child:Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Cash Deposit",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 22.0, decoration: TextDecoration.none),
                    )),
                    Expanded(
                        child: Text("  "+cash.toString(),
                            style: TextStyle(fontSize: 22.0))),
                    RaisedButton(
                      color: Colors.pink[300],
                      textColor: Colors.white,
                      child: Text('Processed '),
                      onPressed: () {
                        addcash();
                      },
                    ),
                  ],
                ),
                ),
                Container(

                //3rd row
                padding: EdgeInsets.only(top: 20, left: 2.00, right: 5.0),
                child:Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Enquiry",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 22.0, decoration: TextDecoration.none),
                    )),
                    Expanded(
                        child: Text("  "+enquiry.toString(),
                            style: TextStyle(fontSize: 22.0))),
                    RaisedButton(
                      color: Colors.pink[300],
                      textColor: Colors.white,
                      child: Text('Processed '),
                      onPressed: () {
                        addenq();
                      },
                    ),
                  ],
                )),
              ],
            )));
  }

  void add() {
    setState(() => loanValue += 1);
  }

  void addcash() {
    setState(() => cash += 1);
  }

  void addenq() {
    setState(() => enquiry += 1);
  }
}
