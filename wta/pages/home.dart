import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    // print(data);

    //Set Background
    String bgImage = data['isDaytime'] ? 'Day.jpg' : 'Night.jpg';
    Color bgColor = data['isDaytime'] ? Colors.blueGrey : Colors.indigoAccent;
    Color lcColor = data['isDaytime'] ? Colors.black87 : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 135, 0, 0),
            child: Column(
              children: [
                TextButton.icon(onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      'location': result['location'],
                      'flag': result['flag'],
                      'time': result['time'],
                      'isDaytime': result['isDaytime'],
                    };
                  });
                },
                  icon: Icon(
                      Icons.edit_location,
                      color: lcColor,
                  ),
                  label: Text(
                      'Edit Location',
                      style: TextStyle(
                        color: lcColor,
                      ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 36,
                          letterSpacing: 2,
                          color: lcColor,
                        ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66,
                    color: lcColor,
                  ),
                )
              ],
            ),
          ),
        ),),
    );
  }
}
