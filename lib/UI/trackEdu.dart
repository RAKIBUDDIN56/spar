import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:spar/UI/achievement.dart';

class Education extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new EducationState();
  }
}

class EducationState extends State<Education> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _awardController = new TextEditingController();
  final TextEditingController _ageController = new TextEditingController();

  String _welcomesString = "";
  void _erase() {
    setState(() {
      _welcomesString =
          "At age 4 learn to run, throw, kick , climb and swing with cose . Hand and finger skills. Stand on feet for more than 9  seconds. ";
    });
  }

  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime(2021, 10),
        firstDate: DateTime(2011, 8),
        lastDate: DateTime(2122));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  bool showTost() {
    Fluttertoast.showToast(
        msg: "Enter all fields !",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white);
  }

  bool showTost2() {
    Fluttertoast.showToast(
        msg: "Enter all fields !",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 2,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white);
  }

  bool showTost3() {
    Fluttertoast.showToast(
        msg: "Award Added !",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        backgroundColor: Colors.blueAccent,
        textColor: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: Text("Track Education")),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: new Container(
        margin: EdgeInsets.all(12),
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            //image/profile
            new Padding(padding: new EdgeInsets.all(5.5)),
            Center(
              child: Text(
                "Know what your child whats to learn",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            //form
            Padding(padding: EdgeInsets.all(12)),
            new Container(
              height: 120.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        hintText: 'Your child age',
                        icon: new Icon(Icons.person)),
                  ),

                  new Padding(padding: new EdgeInsets.all(10.5)), //add padding
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                            margin: const EdgeInsets.only(left: 120.0),
                            child: new RaisedButton(
                              onPressed: () {
                                if (_userController.text.isEmpty) {
                                  showTost2();
                                } else {
                                  //_welcomesString = "Here";
                                  _erase();
                                }
                              },
                              elevation: 33.0,
                              color: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)),
                              child: new Text("Get Info",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 16.9)),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Padding(padding: const EdgeInsets.all(5.0)),

            new Container(
                width: 200,
                height: 100,
                color: Colors.white,
                child: new Text(
                  " $_welcomesString",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 19.4,
                      fontWeight: FontWeight.w500),
                )),
            new Container(
                width: 200,
                height: 300,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text(
                      " Add your child achievement ",
                      style: new TextStyle(
                          color: Colors.black,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(padding: EdgeInsets.all(12)),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(5)),
                        Text("Select date:",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87)),
                        Padding(padding: EdgeInsets.all(12)),
                        Text(
                          "${selectedDate.toLocal()}".split(" ")[0],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () => _selectDate(context),
                          //child: Text("Select date"),
                        ),
                      ],
                    ),
                    TextField(
                      controller: _ageController,
                      decoration: new InputDecoration(
                          hintText: ' Child Age',
                          icon: new Icon(Icons.timelapse)),
                    ),
                    Padding(padding: EdgeInsets.all(12)),
                    TextField(
                      controller: _awardController,
                      decoration: new InputDecoration(
                          hintText: 'Award', icon: new Icon(Icons.work)),
                    ),
                    Padding(padding: EdgeInsets.all(12)),
                    Row(children: [
                      Padding(padding: EdgeInsets.all(20)),
                      Center(
                        child: RaisedButton(
                          onPressed: () {
                            if (_ageController.text.isNotEmpty &&
                                _awardController.text.isNotEmpty) {
                              showTost3();
                            } else {
                              showTost();
                            }
                          },
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          child: Text(
                            "Add Award",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Achievement(),
                              ));

                          //showTost();
                        },
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text(
                          "Show  Award",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.white),
                        ),
                      ),
                    ]),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
