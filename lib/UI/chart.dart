import 'package:flutter/material.dart';

// ignore: camel_case_types
class chartpage extends StatefulWidget {
  @override
  _chartpageState createState() => _chartpageState();
}

// ignore: camel_case_types
class _chartpageState extends State<chartpage> {
  Future showdialogDelete(BuildContext context) async {
    return showDialog(
      context: context,
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
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("OK")),
          ],
        );
      },
    );
  }

  Future showdialog(BuildContext context, String messgae) async {
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
      appBar: new AppBar(
        title: Center(child: Text("FOOD TRACK RECORD")),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: DataTable(
              columns: [
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
                  'Time',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 15.0),
                )),
                DataColumn(
                    label: Text(
                  'Food',
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
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("20/09/2020")),
                  DataCell(Text("2.00pm")),
                  DataCell(Text("Rice")),
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
                  DataCell(Text("3.00pm")),
                  DataCell(Text("Fruits")),
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
                  DataCell(Text("1.00pm")),
                  DataCell(Text("Potatoes")),
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
                  DataCell(Text("1.30pm")),
                  DataCell(Text("Rice")),
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
                  DataCell(Text("04/10/2020")),
                  DataCell(Text("3.30pm")),
                  DataCell(Text("Ceralac")),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
