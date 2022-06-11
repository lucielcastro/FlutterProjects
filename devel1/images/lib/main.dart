import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text('Imagens'),
          ),
        ),
        //body: Image.asset(
          //'images/cat2.png',
          /*tamanho */ // width: 200,
          //height: 200,//altura
          //fit: BoxFit.cover, //expande
          //width: double.infinity, //ajustar
          //height: double.infinity,
        ),
      //),
    );
  }
}
