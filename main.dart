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
      body: Center(
        child: Image.network('https://picsum.photos/seed/picsum/200/300'),
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