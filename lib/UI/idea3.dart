import 'package:flutter/material.dart';
import 'package:spar/UI/ideas.dart';
import 'dart:ui';
import 'package:nice_button/nice_button.dart';

class Ideas3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Ideas3State();
  }
}

class Ideas3State extends State<Ideas3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Ideas")),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              " The Stages ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              " This is platform to share idea  This is platform to share idea and important resources that are relevant to the different   ....",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.all(5),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ideas(),
                                    ));
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              "Challengaes",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "  We live in fast times that demand more and more effort us just to keep up with all the information available There is a lot of  .....            ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.only(top: 12),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ideas(),
                                    ));
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              "Quizzes ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "We live in fast times that demand more and more effort us just to keep up with all the information available There is a lot of  .....              ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.all(5),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ideas(),
                                    ));
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              "Think-Grows' HELP",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "We live in fast times that demand more and more effort us just to keep up with all the information available There is a lot of  .....              ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.all(5),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ideas(),
                                    ));
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              "Steps ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "We live in fast times that demand more and more effort us just to keep up with all the information available There is a lot of  .....              ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.all(5),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ideas(),
                                    ));
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              "Insights ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "We live in fast times that demand more and more effort us just to keep up with all the information available There is a lot of  .....              ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.all(5),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ideas(),
                                    ));
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              "Concept ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "We live in fast times that demand more and more effort us just to keep up with all the information available There is a lot of  .....              ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.all(5),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                print("hello");
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("images/idea22.jpg"))),
                    // padding: const EdgeInsets.all(3),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          child: Column(children: <Widget>[
                            Text(
                              "The topics ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueAccent),
                            ),
                            Text(
                              "We live in fast times that demand more and more effort us just to keep up with all the information available There is a lot of  .....              ",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            NiceButton(
                              //padding: EdgeInsets.all(5),
                              width: 255,
                              elevation: 4.0,
                              radius: 34.0,
                              text: "View ",
                              background: Colors.pink[700],
                              onPressed: () {
                                print("hello");
                              },
                            )
                            //color: Colors.greenAccent,
                            // onPressed: () {},
                            //),
                          ]
                              //child: const Text("He'd have you all unravel at the")),
                              //color: Colors.green[100],
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
