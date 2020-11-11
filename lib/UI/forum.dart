import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: new AppBar(
        title: Center(child: Text("Public Chat")),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'This is a public chat',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    backgroundImage: AssetImage('images/su.jpg'),
                  ),
                  Container(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            transform: Matrix4.translationValues(-80, 0, 0.0),
                            child: Text(
                              "Sutharshan",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(0.0, 5.0, 0.0),
                            child: Text(
                              "How can I track feeding details?",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(40.0, 10.0, 0.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    backgroundImage: AssetImage('images/ash.jpg'),
                  ),
                  Container(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            transform: Matrix4.translationValues(-100, 0, 0.0),
                            child: Text(
                              "Ashvini",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(0.0, 5.0, 0.0),
                            child: Text(
                              "Go to the home and find track..",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(40.0, 20.0, 0.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            transform: Matrix4.translationValues(0, 0, 0.0),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
                transform: Matrix4.translationValues(40, -30, 0.0),
                width: 300,
                height: 50,
                child: TextField(
                  decoration: new InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {}),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1.0),
                    ),
                    labelText: 'Post reply',
                  ),
                )),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    backgroundImage: AssetImage('images/rab.jpg'),
                  ),
                  Container(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            transform: Matrix4.translationValues(-100, 0, 0.0),
                            child: Text(
                              "Rakhib",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(0.0, 5.0, 0.0),
                            child: Text(
                              "How can I track sleeping details?",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(40.0, 10.0, 0.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    backgroundImage: AssetImage('images/vps.jpg'),
                  ),
                  Container(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            transform: Matrix4.translationValues(-100, 0, 0.0),
                            child: Text(
                              "Pirathi",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(0.0, 5.0, 0.0),
                            child: Text(
                              "Go to the home and find sleep..",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(40.0, 20.0, 0.0),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                      transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            transform: Matrix4.translationValues(0, 0, 0.0),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
                transform: Matrix4.translationValues(40, -30, 0.0),
                width: 300,
                height: 50,
                child: TextField(
                  decoration: new InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {}),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1.0),
                    ),
                    labelText: 'Post reply',
                  ),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: new InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      ),
                      onPressed: () {}),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  labelText: 'Ask a question here...',
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
