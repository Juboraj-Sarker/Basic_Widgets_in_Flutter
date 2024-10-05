import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {
  GridviewPage({super.key});

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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:  2,
          childAspectRatio: 1/1
        ),
        padding: const EdgeInsets.all(16.0),
        itemCount: items.length,
        itemBuilder: (context, index)=>Card(
          child: Center(
            child: Text(items[index]),
          ),
        ),
      )
    );
  }


}
