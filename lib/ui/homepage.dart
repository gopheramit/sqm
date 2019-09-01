import 'package:flutter/material.dart';
import 'package:sqm/ui/home.dart';
import 'package:sqm/ui/admin.dart';

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Homepagestate();
}

class _Homepagestate extends State<MyHome> {
  final _state = ['Select State', 'Maharashtra', "Karnataka"];
  String _currency = 'Select State';

  final _state1 = ['Select City', 'Pune', "Banglore"];
  String _currency1 = 'Select City';

  final _state2 = ['Select IFSC CODE', '1728', "1829"];
  String _currency2 = 'Select IFSC CODE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text(
          'BANK',
          textScaleFactor: 1.3,
        ),
        backgroundColor: Colors.pink[900],
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(top: 2.0, left: 2.00, right: 8.0),
            icon: Icon(Icons.account_circle, size: 40),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdHomepage()));
            },
          ),
        ],
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(
                      left: 10, right: 105.0, top: 10.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                      border: new Border.all(width: 2, color: Colors.black)),
                  child: DropdownButton<String>(
                      items: _state.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                        );
                      }).toList(),
                      value: _currency,
                      onChanged: (String value) {
                        _ondropdownchange(value);
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(
                      left: 10, right: 135.0, top: 10.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                      border: new Border.all(width: 2, color: Colors.black)),
                  child: DropdownButton<String>(
                      items: _state1.map((String value1) {
                        return DropdownMenuItem<String>(
                          value: value1,
                          child: Text(
                            value1,
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                        );
                      }).toList(),
                      value: _currency1,
                      onChanged: (String value1) {
                        _ondropdownchange1(value1);
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(
                      left: 10, right: 30.0, top: 10.0, bottom: 15.0),
                  decoration: new BoxDecoration(
                      border: new Border.all(width: 2, color: Colors.black)),
                  child: DropdownButton<String>(
                      items: _state2.map((String value2) {
                        return DropdownMenuItem<String>(
                          value: value2,
                          child: Text(
                            value2,
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                        );
                      }).toList(),
                      value: _currency2,
                      onChanged: (String value2) {
                        _ondropdownchange2(value2);
                      }),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      color: Colors.pink[300],
                      textColor: Colors.white,
                      child: Text(
                        'Submit',
                        textScaleFactor: 2.0,
                      ),
                      onPressed: () {
                        if (this._currency == "Maharashtra" &&
                            this._currency1 == "Pune" &&
                            this._currency2 == "1728") {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => View()));
                        }
                        if (this._currency == "Karnataka" &&
                            this._currency1 == "Banglore" &&
                            this._currency2 == "1829") {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => View()));
                        }
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
      // )
    );
  }

  _ondropdownchange(String value) {
    setState(() {
      this._currency = value;
    });
  }

  _ondropdownchange1(String value) {
    setState(() {
      this._currency1 = value;
    });
  }

  _ondropdownchange2(String value) {
    setState(() {
      this._currency2 = value;
    });
  }
}
