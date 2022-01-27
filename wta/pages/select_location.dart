import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Select a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
          onPressed: (){
            setState(() {
              counter += 1;
            });
      },
      child: Text('Counter is $counter'),
      )
    );
  }
}
