import 'package:flutter/material.dart';
import 'name.dart';
import 'Name_Card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Name> names = [
    Name(author: 'HG', text: 'Harshit Gulgulia'),
    Name(author: 'HG', text: 'Harshit Gulgulia'),
    Name(author: 'HG', text: 'Harshit Gulgulia'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Sample'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: names.map((name) {
          return NameCard(
              name: name,
            delete: () {
                setState(() {
                  names.remove(name);
                });
            }
          );
        }).toList(),
      ),
    );
  }
}


