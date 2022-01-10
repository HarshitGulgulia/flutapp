import 'package:flutter/material.dart';

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
  List<String> names = [
    'Harshit Gulgulia',
    'ISE',
    '1MV20IS021',
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
          return Text(name);
        }).toList(),
      ),
    );
  }
}
