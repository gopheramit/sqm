import 'package:flutter/material.dart';
import 'package:sqm/ui/adminhome.dart';

class AdHomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AdHomepagestate();
}

class _AdHomepagestate extends State<AdHomepage> {
  final double _formdistance = 5.0;
  TextEditingController logincontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String result="";

  int check() {
    if (logincontroller.text == "172801" && passwordcontroller.text == "12345") {
      return 1;
    } else {
      return 0;
    }
  }
  String message(){
    int x;
    x=check();
    if(x==1){
      result="Sucessful login";
      return result;
    }
    else{
      result="Wrong Login ID or  Password";
      return result;
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('Admin', textScaleFactor: 1.3),
          backgroundColor: Colors.pink[900],
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(top: _formdistance, bottom: _formdistance),
                child: TextField(
                  controller: logincontroller,
                  decoration: InputDecoration(
                      labelText: 'Login',
                      hintText: 'e.g 172801',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: _formdistance, bottom: _formdistance),
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'e.g 12345',
                      labelStyle: textStyle,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  keyboardType: TextInputType.number,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                        color: Colors.pink[300],
                        textColor: Colors.white,
                        child: Text(
                          'Proceed',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          setState(() {
                          result = message();
                        });
                          if (check() == 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdView()));
                          }
                        }),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    result,
                    style: textStyle,
                  ))
            ],
          ),
        ));
  }
}
