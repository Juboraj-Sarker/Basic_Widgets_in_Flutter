import 'package:flutter/material.dart';
import 'package:gridview_builder_constructor/screens/gridview_page.dart';



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
      home: GridviewPage(),
    );
  }
}

