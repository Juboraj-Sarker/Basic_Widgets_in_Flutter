import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("My First App"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Hello ",
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: "World",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                  fontSize: 40.0
                )
              )
            ]
          ),
        ),
      ),
    ),
  ));
}

// For refactoring code Ctrl+Alt+L