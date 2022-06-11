import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Text('Texto\nTexto2',
                style: TextStyle(
                    fontSize: 50,
                    height: 1.15,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.green[900],
                    backgroundColor: Colors.blue,
                    decoration: TextDecoration.lineThrough),
                textDirection: TextDirection.ltr)));
  }
}
