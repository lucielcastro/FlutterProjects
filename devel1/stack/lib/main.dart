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
          title: const Text(
            'Stack App',
          ),
        ),
        body: Stack(
          //fit: StackFit.expand, //parametro de alinhamento do stack
          //alignment: AlignmentDirectional.bottomCenter,
          //alignment: AlignmentDirectional.bottomEnd,
          //alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 200, //largura
              height: 200, //altura
              color: Colors.orange,
            ),
            Positioned(
              //sempre no menor
              //bottom: 10, //parte de baixo
              //top: 20,//parte de cima ou 50 e mais 50 left p/ alinhar ao centro
              //left: 20,//esquerda ou 50 e mais 50 top p/ alinhar ao centro

              right: -20, //menos 20 do menor

              child: Container(
                  width: 100, //largura
                  height: 100, //altura
                  color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
/*body: Stack(
          //fit: StackFit.expand, //parametro de alinhamento do stack
          //alignment: AlignmentDirectional.bottomCenter,
          //alignment: AlignmentDirectional.bottomEnd,
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 200, //largura
              height: 200, //altura
              color: Colors.orange,
            ),
            Container(
                width: 100, //largura
                height: 100, //altura
                color: Colors.green),
          ],
        ), */