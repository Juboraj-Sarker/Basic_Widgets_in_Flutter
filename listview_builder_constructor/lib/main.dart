import 'package:flutter/material.dart';
import 'package:listview_builder_constructor/screens/listview_page.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListviewPage(),
    );
  }
}

