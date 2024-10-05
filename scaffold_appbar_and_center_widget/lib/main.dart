import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white
    ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("My First App"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    ),
  ));
}