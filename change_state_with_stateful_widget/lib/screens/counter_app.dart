import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
   const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
   int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Counter App", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("You have pushed the button this many times"),
            Text("$_counter", style: const TextStyle(fontSize: 35.0, color: Colors.black, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }

  _increment(){
    setState(() {
      _counter++;
      print("Counter value is $_counter");
    });
  }
}
