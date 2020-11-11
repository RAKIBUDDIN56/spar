import 'package:flutter/material.dart';

import 'package:spar/UI/chart.dart';

void main() {
  runApp(new foodtrack());
}

class foodtrack extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FoodTrackPage(title: 'Track Food'),
    );
  }
}

class FoodTrackPage extends StatefulWidget {
  FoodTrackPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FoodTrackPageState createState() => new _FoodTrackPageState();
}

class _FoodTrackPageState extends State<FoodTrackPage> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<Null> selecttime(BuildContext context) async {
    final TimeOfDay pick = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (pick != null && pick != selectedTime)
      setState(() {
        selectedTime = pick;
      });
  }

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          const Divider(
            height: 20.0,
          ),
          new ListTile(
            title: const Text(
              "ADD NEW FOOD ENTRY",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: new RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text(
                selectedDate.day.toString() +
                    "-" +
                    selectedDate.month.toString() +
                    "-" +
                    selectedDate.year.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              color: Colors.lightBlue,
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.alarm),
            title: new RaisedButton(
              onPressed: () => selecttime(context),
              child: Text(
                selectedTime.hour.toString() +
                    ":" +
                    selectedTime.minute.toString() +
                    " " +
                    selectedTime.period.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              color: Colors.lightBlue,
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.fastfood),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Food intaken",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.local_dining),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Amount of food",
              ),
            ),
          ),
          const Divider(
            height: 10.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 180, right: 20),
            title: new FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: new AlertDialog(
                      title: new Text("Record added"),
                      content: new Text(
                          "The food record have been added succesfully..."),
                    ));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "ADD RECORD",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Divider(
            height: 20.0,
          ),
          new ListTile(
            title: const Text(
              "VIEW PAST FOOD RECORDS",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 180, right: 20),
            title: new FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => chartpage()),
                );
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "PAST RECORDS",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
