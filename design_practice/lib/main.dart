import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const url = "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/bd/d1/fc/sajek.jpg?w=1200&h=-1&s=1";
const description = 'Sajek Valley is known for its natural environment and is surrounded by green mountains, dense forests, and hilly terrain. Many small rivers flow through the mountains, among which the Sajek (also Kasalong) and the Masalong are notable. On the way to Sajek Valley, one has to cross the Mayni Range and the Mayni River.';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text("Design Practice"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(url, height: 250.0, width: double.infinity, fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Oeschinen Lake Campground", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),),
                      Text("Kandersteg, Switzerland", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 18.0),)
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.deepOrangeAccent,),
                          Text("41", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, size: 30, color: Colors.blue,),
                      SizedBox(height: 10,),
                      Text("CALL", style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.near_me, size: 30, color: Colors.blue,),
                      SizedBox(height: 10,),
                      Text("ROUTE", style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, size: 30, color: Colors.blue,),
                      SizedBox(height: 10,),
                      Text("SHARE", style: TextStyle(fontSize: 20.0, color: Colors.blue),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(description, style: TextStyle(fontSize: 18.0, color: Colors.black,), textAlign: TextAlign.justify,)
            )
          ],
        ),
      ),
    ),
  ));
}