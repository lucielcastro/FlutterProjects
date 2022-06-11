import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tela1(),
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
          title: const Center(child: Text('Quiz')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Jogar'),
                onPressed: () {
                  //print('Clicou botão tela1');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Tela2();
                      },
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Ranking'),
                onPressed: () {
                  //print('Clicou botão tela1');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Tela3();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        //Image.asset('assets/back.png');
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
            child: Text('Quiz Português'),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Home Page'),
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
          backgroundColor: Colors.amber,
          title: const Center(
            child: Text('Ranking'),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Home Page'),
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
