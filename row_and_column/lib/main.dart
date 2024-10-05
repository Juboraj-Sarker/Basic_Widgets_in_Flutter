import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("My App"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.camera_alt, size: 40.0,),
              Icon(Icons.call, size: 40.0,),
            ],
          ),
          RichText(
            text: TextSpan(
              text: "Hello",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              children: [
                TextSpan(
                  text: "World",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  )
                )
              ]
            ),
          ),
          Text(
            "Hello Flutter",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),),
          Text(
            "Hello Dart",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),),
          Text(
            "Hello Android",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),),
        ],
      ),
    ),
  ));
}
