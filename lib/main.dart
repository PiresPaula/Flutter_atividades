import 'package:flutter/material.dart';

import './questionario.dart';
import './inicio.dart';

bool pressionado = true;
main() {
  runApp(Inicio());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var perguntaAtual = 0;

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual a sua cor favorita?",
      "respostas": ["aMARELO", "Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto": "Qual é seu animal favorito?",
      "respostas": ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "texto": "Qual sua linguagem favorita?",
      "respostas": ["Python", "Java", "JavaScript"]
    },
  ];

  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  void responder() {}

  Widget build(BuildContext context) {
    List<Widget> respostas = [];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Jogo de Respostas"),
          ),
          body: Questionario(
              perguntas: perguntas, perguntaAtual: perguntaAtual, acao: acao)),
    );
  }
}
