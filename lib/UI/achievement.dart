import 'package:flutter/material.dart';

class Achievement extends StatefulWidget {
  @override
  _TrackEducationTableState createState() => _TrackEducationTableState();
}

class _TrackEducationTableState extends State<Achievement> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  showdialogDelete(BuildContext context) {
    return showDialog(
        context: _scaffoldKey.currentContext,
        builder: (context) {
          return AlertDialog(
            title: Center(child: new Text("Succefully Deleted")),
            actions: [
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 100,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              Padding(padding: new EdgeInsets.all(10.5)),
              new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: new Text("OK")),
            ],
          );
        });
  }

  showdialog(BuildContext context, String messgae) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: new Text(messgae),
          actions: [
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  showdialogDelete(context);
                },
                child: new Text("Delete")),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("Cancle"))
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
      key: _scaffoldKey,
      appBar: new AppBar(
        title: Center(child: Text("Achievements")),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              child: DataTable(columns: [
            DataColumn(
                label: Text(
              'Date ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 15.0),
            )),
            DataColumn(
                label: Text(
              'Year',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 15.0),
            )),
            DataColumn(
                label: Text(
              'Awards',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 15.0),
            )),
            DataColumn(
                label: Text(
              'Action',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 15.0),
            )),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("20/09/2020")),
              DataCell(Text("5")),
              DataCell(Text("1st Place in drawing ")),
              DataCell(FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.red,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.red,
                onPressed: () {
                  showdialog(context, "Do you want to delete?");
                },
                child: Text(
                  "Delete",
                  style: TextStyle(fontSize: 15.0),
                ),
              ))
            ]),
            DataRow(cells: [
              DataCell(Text("01/10/2020")),
              DataCell(Text("7")),
              DataCell(Text("2nd palce in racing ")),
              DataCell(FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.red,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.red,
                onPressed: () {
                  showdialog(context, "Do you want to delete?");
                },
                child: Text(
                  "Delete",
                  style: TextStyle(fontSize: 15.0),
                ),
              ))
            ]),
            DataRow(cells: [
              DataCell(Text("02/10/2020")),
              DataCell(Text("4")),
              DataCell(Text("1st palce in singing ")),
              DataCell(FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.red,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.red,
                onPressed: () {
                  showdialog(context, "Do you want to delete?");
                },
                child: Text(
                  "Delete",
                  style: TextStyle(fontSize: 15.0),
                ),
              ))
            ]),
            DataRow(cells: [
              DataCell(Text("03/10/2020")),
              DataCell(Text("6")),
              DataCell(Text("3rd palce in dancing ")),
              DataCell(FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.red,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.red,
                onPressed: () {
                  showdialog(context, "Do you want to delete?");
                },
                child: Text(
                  "Delete",
                  style: TextStyle(fontSize: 15.0),
                ),
              ))
            ]),
          ])),
        ],
      ),
    );
  }
}
