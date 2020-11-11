import 'package:flutter/material.dart';
import 'package:spar/UI/quiz.dart';

class QuizLevel extends StatefulWidget {
  @override
  _QuizLevelState createState() => _QuizLevelState();
}

class _QuizLevelState extends State<QuizLevel> {
  Future showdialog(BuildContext context, String messgae) async {
    return showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text(messgae),
          actions: [
            new FlatButton(
                onPressed: () => Navigator.pop(context), child: new Text("OK"))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: Text("QUIZ LEVEL")),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue[50],
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quizzler()));
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock_open,
                        color: Colors.green,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 01',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quizzler()));
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock_open,
                        color: Colors.green,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 02',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showdialog(context, "Please Compelete Level 02");
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 03',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showdialog(context, "Please Compelete Level 02");
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 04',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showdialog(context, "Please Compelete Level 02");
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 05',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showdialog(context, "Please Compelete Level 02");
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 06',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showdialog(context, "Please Compelete Level 02");
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 07',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showdialog(context, "Please Compelete Level 02");
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 08',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 09',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  showdialog(context, "Please Compelete Level 02");
                },
                splashColor: Colors.green,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: (Column(
//                        CrossAxisAlignment.end, // for right side

                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'L 10',
                              style: new TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
