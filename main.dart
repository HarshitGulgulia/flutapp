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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Hello'),
          FlatButton(
            onPressed: () {},
            color: Colors.lightGreen,
            child: Text('Welcome'),
          ),
          Container(
            color: Colors.tealAccent,
            padding: EdgeInsets.all(30),
            child: Text('Inside Container'),
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