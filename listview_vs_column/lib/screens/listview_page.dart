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
      body: ListView(
        children: items.map((item) => ListTile(title: Text(item),)).toList(),
      ),
    );
  }

  // This is same implementation with column widget. But column by default will load all widget at a time. On the other hand listview will load only those items which will only visible at screen
   // @override
   // Widget build(BuildContext context) {
   //   return  Scaffold(
   //     appBar: AppBar(
   //       backgroundColor: Colors.blue,
   //       title: const Text("Listview Example", style: TextStyle(color: Colors.white),),
   //     ),
   //     body: SingleChildScrollView(
   //       child: Column(
   //         children: items.map((item) => ListTile(title: Text(item),)).toList(),
   //       ),
   //     ),
   //   );
   // }
}
