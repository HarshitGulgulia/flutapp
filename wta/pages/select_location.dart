import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {

  int counter = 0;

  void getData() async {

    // simulate network request for a username
    String username=await Future.delayed(Duration(seconds: 3), () {
      return 'HG';
    });

    //simulate network request to get ingo of user
    String info=await Future.delayed(Duration(seconds: 2), () {
      return 'Male and Age 20';
    });

    print('$username - $info');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Hello');
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
