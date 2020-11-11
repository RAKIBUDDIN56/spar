import 'package:flutter/material.dart';
import 'package:spar/UI/food.dart';
import 'package:spar/UI/tracksleep.dart';
import 'package:spar/UI/trackEdu.dart';

void main() {
  runApp(new track());
}

class track extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new TrackPage(title: 'Track my child'),
    );
  }
}

class TrackPage extends StatefulWidget {
  TrackPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TrackPageState createState() => new _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  int _value = 1;
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
            height: 40.0,
          ),
          new ListTile(
            title: const Text(
              "CHOOSE CHILD TO TRACK : ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 50, right: 50),
            leading: const Icon(Icons.person),
            title: new DropdownButton(
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("Child 1", style: TextStyle(fontSize: 18)),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Child 2", style: TextStyle(fontSize: 18)),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("Child 3", style: TextStyle(fontSize: 18)),
                      value: 3),
                  DropdownMenuItem(
                      child: Text("Child 4", style: TextStyle(fontSize: 18)),
                      value: 4)
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                }),
          ),
          const Divider(
            height: 60.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 20, right: 20),
            title: new FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => foodtrack()),
                );
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "TRACK FOOD",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const Divider(
            height: 30.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 20, right: 20),
            title: new FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrackSleep()),
                );
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "TRACK SLEEP",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          const Divider(
            height: 30.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 20, right: 20),
            title: new FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Education()),
                );
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "TRACK EDUCATION",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
