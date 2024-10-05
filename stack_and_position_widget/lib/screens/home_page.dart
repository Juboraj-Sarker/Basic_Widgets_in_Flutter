import 'package:flutter/material.dart';

const url =
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/bd/d1/fc/sajek.jpg?w=1200&h=-1&s=1";
const description =
    'Sajek Valley is known for its natural environment and is surrounded by green mountains, dense forests, and hilly terrain. Many small rivers flow through the mountains, among which the Sajek (also Kasalong) and the Masalong are notable. On the way to Sajek Valley, one has to cross the Mayni Range and the Mayni River.';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Text("Design Practice"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageSection(),
            titleSectionNew(),
            navSection(context),
            bodySection(),
          ],
        ),
      ),
    );
  }

  Padding bodySection() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          description,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.justify,
        ));
  }

  Widget navSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue, // If we use BoxDecoration then we must use color inside BoxDecoration
        //borderRadius: BorderRadius.circular(16.0), // This is for all side
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 7),
            blurRadius: 10,
            spreadRadius: 2,
          )
        ],
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.blue.shade300],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.8, 0.2]
        ),
        border: Border.all(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 5.0
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.call,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "CALL",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.near_me,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "ROUTE",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "SHARE",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget titleSectionNew(){
    return ListTile(
      title: Text("Oeschinen Lake Campground", style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),),
      subtitle: Text("Kandersteg, Switzerland"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.deepOrangeAccent),
          Text("41", style: TextStyle(fontSize: 18.0),),
        ],
      ),
    );
  }

  Padding titleSection() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 18.0),
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    "41",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Image imageSection() {
    return Image.network(
      url,
      height: 250.0,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
