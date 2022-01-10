import 'package:flutter/material.dart';
import 'name.dart';

class NameCard extends StatelessWidget {

  final Name name;
  final VoidCallback delete;
  NameCard({ required this.name, required this.delete });

  @override
  Widget build(BuildContext context) {
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
                  color: Colors.green[800],
                ),
              ),
              SizedBox(height: 6),
              Text(
                name.author,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.values[7],
                  color: Colors.green[400],
                ),
              ),
              SizedBox(height: 8),
              TextButton.icon(
                onPressed: delete,
                label: Text('Delete Name'),
                icon: Icon(Icons.delete),
              )
            ],
          ),
        )
    );
  }
}