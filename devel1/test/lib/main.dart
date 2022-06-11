import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  /* runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: const Center(
            child: Text(
              'App Hello world',
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                backgroundColor: Colors.lightGreen),
          ),
        ),
      ),
    ),
  );*/
}

class MyApp extends StatelessWidget {
  //class

  const MyApp({Key? key}) : super(key: key); //construtor

  @override
  Widget build(BuildContext context) {
    //metodp
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: const Center(
            child: Text(
              'App Hello world',
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                backgroundColor: Colors.lightGreen),
          ),
        ),
      ),
    );
  }
}/* Container(
  const Center(
        child: Text(
          'My App',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 70, color: Colors.lightGreen),
        ),
      ) ,
      );*/
