import 'package:flutter/material.dart';

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
        title: const Text("Basic Setup"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }


}
