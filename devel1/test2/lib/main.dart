import 'package:flutter/material.dart';

void main() {
  int v = 10;
  runApp(MyApp(v, title: 'App Hello, world'));
}

class MyApp extends StatelessWidget {
  //class
  final String title;
  final int v;
  const MyApp(this.v, {Key? key, this.title = ' '})
      : super(key: key); //construtor

  @override
  Widget build(BuildContext context) {
    //metodp
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text(title),
          ),
        ),
        body: Center(
          child: Text(
            'Hello world! o valor é $v',
            style: const TextStyle(
                fontSize: 38,
                color: Colors.white,
                backgroundColor: Colors.lightBlueAccent),
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
