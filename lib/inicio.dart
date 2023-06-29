import 'package:comp/main.dart';
import 'package:flutter/material.dart';
import './main.dart';

class Inicio extends StatefulWidget {
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Tela de inicio"),
          ),
          body: Column(children: [
            Text("Sistema de Perguntas e Respostas."),
            ElevatedButton(
                onPressed: () {
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AulaComponentes()),
            );

                  
                },
                child: Text("Ir para questionário")),
          ])),
    );
  }
}
