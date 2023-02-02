import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text("I Am Blessed"),
        ),
        body: const Center(
          child: Image(
            //Image.asset('assets/precious-stones.jpg'),
            image: AssetImage('assets/precious-stones.jpg'),
          ),
        ),
      ),
    ),
  );
}
