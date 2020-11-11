import 'package:flutter/material.dart';

class TrackSleepTable extends StatefulWidget {
  @override
  _TrackSleepTableState createState() => _TrackSleepTableState();
}

class _TrackSleepTableState extends State<TrackSleepTable> {
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
        title: Center(child: Text("Track Sleep Informations")),
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
                  DataCell(Text("2.00pm-8.00pm")),
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
                  DataCell(Text("3.00pm-7.00pm")),
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
                  DataCell(Text("1.00pm-7.00pm")),
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
                  DataCell(Text("1.30pm-6.30pm")),
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
                  DataCell(Text("3.30pm-8.30pm")),
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
