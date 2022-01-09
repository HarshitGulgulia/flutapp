import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
      home: Home(),
  ));
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Product'),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
              child: Image.asset('assets/gm.jpg'),
            flex:3,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.tealAccent,
              padding: EdgeInsets.all(30),
              child: Text('go'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.lightGreenAccent,
              padding: EdgeInsets.all(30),
              child: Text('goa'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(30),
              child: Text('gone'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        backgroundColor: Colors.green[700],
      ),
    );
  }
}