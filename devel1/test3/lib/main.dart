import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(nome: 'Pedro'));
}

class MyApp extends StatefulWidget {
  final String nome; //não altera estado

  const MyApp({Key? key, this.nome = ''}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double salario = 7000.0; //altera estado

  void aumenta_sal(double val) {
    setState(() {
      salario = salario + val;
    });
  }

  void diminui_sal(double val) {
    //this.salario
    setState(() {
      salario = salario - val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('clicou');
          //aumenta_sal(100);
          diminui_sal(100);

          /*setState(() {
            salario += 100;
          });*/
          print('Novo salario $salario');
        },
        child: Text('O salario  de ${widget.nome} é $salario',
            textDirection: TextDirection.ltr),
      ),
    );
  }
}
