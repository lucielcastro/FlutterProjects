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
          title: const Center(
            child: Text('App Scaffold'),
          ),
        ),
        body: Column(
          //padrao à esquerda// MainAxisAlignment.center//end-direita//spaceAround - space equi
          //linha, sempre na mesma linha||                spaceBetween-extremos//star-esquerda// spaceEvenly- space home and end
          mainAxisAlignment: MainAxisAlignment
              .spaceAround, //linha principal//esquerda-center-direita
          children: const [
            //clossAxis\\maiaxis
            Center(
              child: Text(
                'Coluna 1 ',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Coluna 2',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Coluna 3',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*Row(
          //padrao à esquerda// MainAxisAlignment.center//end-direita//spaceAround - space equi
          //linha, sempre na mesma linha||                       star-esquerda// spaceEvenly- space home and end
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //linha principal//esquerda-center-direita
          children: const [
            Center(
              child: Text(
                'Meu App ',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Meu App',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'Meu App',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ), */
