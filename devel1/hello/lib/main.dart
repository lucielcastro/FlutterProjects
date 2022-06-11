import 'package:flutter/material.dart';

void main() {
  //parte do Dart
  //runApp(const MyApp());//roda o App|| se comentar o run fica tela branca
  runApp(
      const MyApp()); //runApp roda o App e sempre espera uma ferramenta(Widget) o Widget esperado é App
  /*MaterialApp( 
    home: Scaffold(
      appBar: AppBar(  
        title: const  Text(
          'Office',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text(
          'OFFICE',
          style:
             TextStyle(fontSize: 100, color: Colors.yellow)),
        ),),
      ), //construtor
    );*/ //vamos criar o widget mais basico do flutter usando a Material
} //no flutter todos os elementos é widget inclusive o flutter

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //construtor

  @override
  Widget build(BuildContext context) {
    //metodo
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Aplicativo hello word',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Text('Hello Word',
              style: TextStyle(fontSize: 50, color: Colors.yellow)),
        ),
      ),
    ); //construtor
  }
}
