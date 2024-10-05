import 'package:flutter/material.dart';
const url =
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/bd/d1/fc/sajek.jpg?w=1200&h=-1&s=1";

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Stack Example", style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.network(url),
          Positioned(  // Must use direct children of Stack
            right: 0,
            left: 0,
            bottom: -50,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                      offset: Offset(0, 5),
                      blurRadius: 8,
                      spreadRadius: 2
                    )
                  ]
                ),
              ),
            ),
          ),
          Positioned(  // Must use direct children of Stack
            left: 0,
            bottom: 0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
