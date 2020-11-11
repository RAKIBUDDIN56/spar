import 'package:flutter/material.dart';
import 'package:spar/UI/payment.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.summary,
    this.price,
  });

  final Widget thumbnail;
  final String title;
  final String summary;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: thumbnail,
          ),
          Expanded(
            flex: 4,
            child: _VideoDescription(
              title: title,
              summary: summary,
              price: price,
            ),
          ),
          RaisedButton(
            //Icons.more_vert,

            color: Colors.blueAccent,

            child: Text(
              " Buy ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => payment(),
                  ));
            },
            //size: 34.0,
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key key,
    this.title,
    this.summary,
    this.price,
  }) : super(key: key);

  final String title;
  final String summary;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.redAccent,
              fontSize: 18.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            summary,
            style: const TextStyle(fontSize: 11.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$price LKR ',
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyLibrary extends StatelessWidget {
  MyLibrary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Library")),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        itemExtent: 106.0,
        children: <CustomListItem>[
          CustomListItem(
            summary:
                'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho that was first published in 1988.',
            price: 299,
            thumbnail: Container(
              child: Image(
                image: AssetImage("images/al chemist.jpeg"),
                //size: 78,
              ),
            ),
            //decoration: const BoxDecoration(color: Colors.blue),
            //Image.asset("image/book.png"),
            title: 'Al Chemist',
          ),
          CustomListItem(
            summary:
                'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho that was first published in 1988.',
            price: 598,
            thumbnail: Container(
              child: Image(
                image: AssetImage("images/book7.jpg"),
                //size: 78,
              ),
            ),
            //decoration: const BoxDecoration(color: Colors.blue),
            //Image.asset("image/book.png"),
            title: 'Map of Stars',
          ),
          CustomListItem(
            summary:
                'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho that was first published in 1988.',
            price: 2000,
            thumbnail: Container(
              child: Image(
                image: AssetImage("images/note.jpg"),
                //size: 78,
              ),
            ),
            //decoration: const BoxDecoration(color: Colors.blue),
            //Image.asset("image/book.png"),
            title: 'Note Book',
          ),
          CustomListItem(
            summary:
                'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho that was first published in 1988.',
            price: 999,
            thumbnail: Container(
              child: Image(
                image: AssetImage("images/book5.jpg"),
                //size: 78,
              ),
            ),
            //decoration: const BoxDecoration(color: Colors.blue),
            //Image.asset("image/book.png"),
            title: 'Me befoe you',
          ),
          CustomListItem(
            summary:
                'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho that was first published in 1988.',
            price: 199,
            thumbnail: Container(
              child: Image(
                image: AssetImage("images/book4.jpg"),
                //size: 78,
              ),
            ),
            //decoration: const BoxDecoration(color: Colors.blue),
            //Image.asset("image/book.png"),
            title: 'Loving Literature ',
          ),
          CustomListItem(
            summary:
                'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho that was first published in 1988.',
            price: 999,
            thumbnail: Container(
              child: Image(
                image: AssetImage("images/al chemist.jpeg"),
                //size: 78,
              ),
            ),
            //decoration: const BoxDecoration(color: Colors.blue),
            //Image.asset("image/book.png"),
            title: 'Al Chemist',
          ),
          CustomListItem(
            summary:
                'Veronika Decides to Die (Portuguese: Veronika Decide Morrer) is a novel by Paulo Coelho. It tells the story of 24-year-old .',
            price: 884000,
            thumbnail: Container(
                child: Image(
              image: AssetImage("images/eleven.jpg"),
            )),
            title: 'Veronika Decides to Die',
          ),
        ],
      ),
    );
  }
}
