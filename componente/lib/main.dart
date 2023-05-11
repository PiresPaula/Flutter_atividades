import 'package:flutter/material.dart';
import './perguntas.dart';
import './botao.dart';

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
    "Qual sua comida favorita?",
    "Qual seu filme favorito?",
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Jogo das perguntas"),
        backgroundColor: Colors.purple,
      ),
      body: Column(children: [
        Perguntas(perguntas[contador]),
        Botao("Clique aqui"),
      ]),
    ));
  }
}
