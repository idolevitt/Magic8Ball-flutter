import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[500],
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Text(
              'Ask me a question',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          body: magic8ball(),
        ),
      ),
    );

class magic8ball extends StatefulWidget {
  @override
  _magic8ballState createState() => _magic8ballState();
}

class _magic8ballState extends State<magic8ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      //padding: EdgeInsets.symmetric(vertical: 100),
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset(
          'images/ball$ballNumber.png',
        ),
      ),
    );
  }
}
