import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const url = "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/bd/d1/fc/sajek.jpg?w=1200&h=-1&s=1";

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("My App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(url, width: double.infinity, height: 250, fit: BoxFit.cover,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.camera_alt, size: 50.0,),
              Icon(Icons.share, size: 50.0,),
            ],
          ),
          RichText(
            text: TextSpan(
            text: "Hello",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colors.blue
            ),
            children: [
              TextSpan(
                text: "World",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25.0,
                  color: Colors.red
                )
              )
            ]
          ),),
          Text("Hello Flutter", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
          Text("Hello Dart", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
          Text("Hello Android", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
        ],
      ),
    ),
  ));
}