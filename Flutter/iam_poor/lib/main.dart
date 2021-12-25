import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.deepOrange,
      title: Text('I am Poor '),
    ),
    backgroundColor: Colors.deepPurple,
    body: Center(
      child: Image(
        image: AssetImage('images/iam_poor.jpg'),
      ),
    ),
  )));
}
