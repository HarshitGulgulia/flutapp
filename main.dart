import 'package:flutter/material.dart';
import 'name.dart';

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
  Widget nameTemplate(name){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              name.text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange[800],
              ),
            ),
            SizedBox(height: 6),
            Text(
              name.author,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.values[7],
                color: Colors.deepOrange[400],
              ),
            ),
          ],
        ),
      )
    );
  }
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
          return nameTemplate(name);
        }).toList(),
      ),
    );
  }
}
