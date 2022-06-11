import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Argumentos {
  final int id;
  final String nome;

  Argumentos(this.id, this.nome);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Tela1(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Tela1(),
        '/tela2': (context) => const Tela2(),
        '/tela3': (context) => const Tela3(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Tela1')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Ir tela 2'),
                onPressed: () {
                  //print('Clicou botão tela1');
                  Navigator.pushNamed(context, '/tela2');
                  //Navigator.pushNamed(context, '/tela3');
                },
              ),
              ElevatedButton(
                child: const Text('Ir tela 3'),
                onPressed: () {
                  //print('Clicou botão tela1');
                  //Navigator.pushNamed(context, '/tela2');
                  Navigator.pushNamed(context, '/tela3');
                },
              ),
            ],
          ),
        ),
      ),
      //Image.asset('assets/back.png');
    );
  }
}

class Tela2 extends StatelessWidget {
  static const routeNome = '/tela2';

  const Tela2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final argumentos = ModalRoute.of(context).settings.arguments as Argumentos;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
              //child: Text('Tela 2 ' + argumentos.nome),
              ),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Retornar para a tela1'),
            onPressed: () {
              //print('Clicou botão tela2');
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}

class Tela3 extends StatelessWidget {
  const Tela3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Center(
            child: Text('Tela 3'),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Retornar para a tela1'),
            onPressed: () {
              //print('Clicou botão tela2');
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
