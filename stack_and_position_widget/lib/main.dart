
import 'package:flutter/material.dart';
import 'package:stack_and_position_widget/screens/stack_page.dart';




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
      home: StackPage(),
    );
  }
}

