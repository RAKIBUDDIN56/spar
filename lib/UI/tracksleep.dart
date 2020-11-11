import 'package:flutter/material.dart';
import 'package:spar/UI/tracksleeptable.dart';

class TrackSleep extends StatefulWidget {
  @override
  _TrackSleepState createState() => _TrackSleepState();
}

class _TrackSleepState extends State<TrackSleep> {
  Future showdialogSuccess(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(child: new Text("Succefully Added")),
          actions: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("OK")),
          ],
        );
      },
    );
  }

  Future showdialogSuccessAlarm(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(child: new Text("Alarm at 6 A.M ")),
          actions: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.timer,
                    size: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("OK")),
          ],
        );
      },
    );
  }

  Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: Text("Track Sleep")),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: RaisedButton.icon(
                    textColor: Colors.white,
                    color: getColorFromHex('#12CB5C'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TrackSleepTable()));
                    },
                    icon: Icon(Icons.receipt, size: 18),
                    label: Text("View Records"),
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.calendar_today,
                              color: Colors.blue,
                            ),
                            onPressed: () {}),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        labelText: 'Calendar',
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        )),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.timer,
                              color: Colors.blue,
                            ),
                            onPressed: () {}),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        labelText: 'Sleep Start',
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        )),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(
                              Icons.timer,
                              color: Colors.blue,
                            ),
                            onPressed: () {}),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        labelText: 'Sleep end',
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        )),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        labelText: 'Hours slept',
                        labelStyle: TextStyle(
                          color: Colors.blue,
                        )),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      color: getColorFromHex('#00D1F2'),
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.red,
                      onPressed: () {
                        showdialogSuccessAlarm(context);
                      },
                      child: Text(
                        "SET TIMER",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      color: getColorFromHex('#00D1F2'),
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.red,
                      onPressed: () {
                        showdialogSuccess(context);
                      },
                      child: Text(
                        "ADD RECORD",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
