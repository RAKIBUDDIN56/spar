import 'package:flutter/material.dart';

void main() {
  runApp(new contribute());
}

class contribute extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new contributePage(title: 'Make a contribution'),
    );
  }
}

class contributePage extends StatefulWidget {
  contributePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _contributePageState createState() => new _contributePageState();
}

class _contributePageState extends State<contributePage> {
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
              "ADD YOUR CONTRIBUTION BELOW",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.list),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Title",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.reorder),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Description",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.priority_high),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Keywords",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.youtube_searched_for),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Link",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.list),
            title: new DropdownButton(
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("Thought and beheviour",
                        style: TextStyle(fontSize: 18)),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Health", style: TextStyle(fontSize: 18)),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("Parenting", style: TextStyle(fontSize: 18)),
                      value: 3),
                  DropdownMenuItem(
                      child: Text("Personal Development",
                          style: TextStyle(fontSize: 18)),
                      value: 4),
                  DropdownMenuItem(
                      child: Text("Professional topics",
                          style: TextStyle(fontSize: 18)),
                      value: 5)
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                }),
          ),
          const Divider(
            height: 25.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 180, right: 20),
            title: new FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: new AlertDialog(
                      title: new Text("Contributed"),
                      content:
                          new Text("Your contribution is accepted. Thank you."),
                    ));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "CONTRIBUTE",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
