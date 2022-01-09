import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GNCCard(),
  ));
}
class GNCCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[700],
      appBar: AppBar(
        title: Text('Gulgulia n Co.'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[500],
        elevation:  0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/h.jpg'),
                radius: 80,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.lightBlue[500],
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'HG',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'DOB',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '26-05-2001',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  'harshitgulgulia@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18,
                    letterSpacing: 1,
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
