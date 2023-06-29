import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaAtual;
  final void Function() acao;

  Questionario({
    required this.perguntas,
    required this.perguntaAtual,
    required this.acao,
  });

  bool get terPergunta {
    return perguntaAtual < perguntas.length;
  }

  Widget build(BuildContext context) {
    List<Widget> respostas = [];

    if (terPergunta) {
      for (var resposta in perguntas[perguntaAtual].cast()["respostas"]) {
        print(resposta);
        respostas.add(Resposta(resposta, acao));
      }
    }

    return Column(
      children: <Widget>[
        terPergunta
            ? Questao(perguntas[perguntaAtual]["text"].toString())
            : Questao("Terminou"),
            
        terPergunta
            ? Column(
                children: [
                  ...respostas,
                ],
              )
            : Text("Resultado")
      ],
    );
  }
}
