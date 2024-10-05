import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
   ListviewPage({super.key});

  final List<String> items = List.generate(100, (index) {
    return "Item no: ${index+1}";
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Listview Example", style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: items.length,
        itemBuilder: (context, index)=>ListTile(
          title: Text(items[index]),
        ),
      )
    );
  }


}
