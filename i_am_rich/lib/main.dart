import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey, 
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title: const Text("I Am Rich"),
        ),
        body: const Center(
          child: Image(
            image: NetworkImage('https://i.pinimg.com/736x/31/38/11/313811274a28746379ebf4d4fcf7842b.jpg'),
          ),
        ),
      ),
    ),
  ); 
}