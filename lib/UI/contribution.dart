import 'package:flutter/material.dart';
import 'package:spar/UI/contribute.dart';

void main() {
  runApp(new contribution());
}

class contribution extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new contributionPage(title: 'Contributions'),
    );
  }
}

class contributionPage extends StatefulWidget {
  contributionPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _contributionPageState createState() => new _contributionPageState();
}

class _contributionPageState extends State<contributionPage> {
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
              "CHOOSE THE CONTRIBUTION TITLE : ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 50, right: 50),
            leading: const Icon(Icons.view_list),
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
            height: 30.0,
          ),
          new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new ListTile(
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    title: new ListTile(
                      title: const Text(
                        "The Age of Things" +
                            "\n" +
                            "How old are some things? The universe, earth, life on earth and what does it mean?",
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
                new ListTile(
                  leading: const Icon(Icons.person),
                  title: new TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: new InputDecoration(
                      hintText: "Comment Here",
                    ),
                  ),
                ),
                new ListTile(
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    title: new ListTile(
                      title: const Text(
                        "Opiote drug and brain" +
                            "\n" +
                            "This discuss the chemistry, effects and the general scientific background of opiote drugs.",
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
                new ListTile(
                  leading: const Icon(Icons.person),
                  title: new TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: new InputDecoration(
                      hintText: "Comment Here",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 15.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 180, right: 20),
            title: new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => contribute(),
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
