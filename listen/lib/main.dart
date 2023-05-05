import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  runApp(AulaGrupoDois());
}

class AulaGrupoDois extends StatefulWidget {
  @override
  State<AulaGrupoDois> createState() => _AulaGrupoDoisState();
}

class _AulaGrupoDoisState extends State<AulaGrupoDois> {
  var contador = 0;

  final perguntas = [
    "Qual sua cor favorita?",
    "Qual seu animal favorito?",
    "Qual a sua série favorita?",
    "Qual seu filme favorito?",
  ];

  void clicou() {
    setState(() {
      contador:
      if (contador < 3) {
        contador++;
      }
    });

    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro APP"),
        backgroundColor: Colors.purple,
      ),
      body: Column(children: [
        Text(perguntas[contador]),
        ElevatedButton(onPressed: clicou, child: Text("Perguntas")),
      ]),
    ));
  }
}
