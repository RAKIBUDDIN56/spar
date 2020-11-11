import 'package:flutter/material.dart';
import 'package:spar/UI/myBook.dart';

void main() {
  runApp(new payment());
}

class payment extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new PaymentPage(title: 'Add New Card'),
    );
  }
}

class PaymentPage extends StatefulWidget {
  PaymentPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PaymentPageState createState() => new _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
            height: 5.0,
          ),
          new ListTile(
            title: const Text(
              "ADD NEW CARD FOR TRANSACTION",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Name",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.credit_card),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Card Number",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Card Expiry",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.code),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "CVV",
              ),
            ),
          ),
          const Divider(
            height: 5.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 180, right: 20),
            title: new FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: new AlertDialog(
                      title: new Text("Card added"),
                      content: new Text("Your new card is added successfully"),
                    ));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "ADD CARD",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Divider(
            height: 10.0,
          ),
          new ListTile(
            title: const Text(
              "ADD PROMOTION CODE",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.code),
            title: new TextField(
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                hintText: "Promotion code",
              ),
            ),
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 180, right: 20),
            title: new FlatButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: new AlertDialog(
                      title: new Text("Code Verified"),
                      content: new Text(
                          "The promotion code you entered is accepted."),
                    ));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "VERIFY",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Divider(
            height: 5.0,
          ),
          new ListTile(
            contentPadding: const EdgeInsets.only(left: 180, right: 20),
            title: new FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyBook()));
                showDialog(
                    context: context,
                    child: new AlertDialog(
                      title: new Text("Purchased"),
                      content: new Text(
                          "The book have been purchase. Rs.450 deducted from your card. Your purchase will be available on your library."),
                    ));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "BUY NOW",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
