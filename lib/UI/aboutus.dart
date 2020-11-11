import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  Future showdialog(BuildContext context, String messgae) async {
    return showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text(messgae),
          actions: [
            new FlatButton(
                onPressed: () => Navigator.pop(context), child: new Text("Ok"))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: Text("About Us")),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              transform: Matrix4.translationValues(0.0, -10.0, 0.0),
              child: Center(
                child: Image(
                  image: AssetImage('images/appicon.png'),
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              color: Colors.blue[50],
              padding: EdgeInsets.fromLTRB(15, 5, 5, 10),
              child: Text(
                'Health is a digital health company that uses mobile technology to help women and families live healthier lives. The Ovia Health apps have helped millions of women and families on their fertility, pregnancy, and parenting journeys. With billions of data points collected and analyzed, Ovia Health uses data-driven science to help women conceive, have healthier pregnancies, and start families with confidence.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Rate this App",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            RatingBar(
              initialRating: 1,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Post Review",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0.0),
                child: TextField(
                  decoration: new InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          showdialog(
                              context,
                              "Successfully submitted \n"
                              "Thank you for your rating");
                        }),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    labelText: 'Write Review',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
