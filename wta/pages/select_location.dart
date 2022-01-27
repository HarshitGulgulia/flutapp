import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Select a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Select Location Sceen'),
    );
  }
}
