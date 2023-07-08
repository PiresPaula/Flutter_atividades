import 'package:comp/ficha.dart';
import 'package:flutter/material.dart';


import 'ficha.dart';

main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var fichaAtual = 0;

  var fotos = ["lib/img/prof1.jpg", "lib/img/prof2.jpg", "lib/img/prof3.jpg"];
  var nomes = ["stella", "flavia", "Ana"];
  var matriculas = ["345879039", "46485950", "4848475648"];
  var escolas = ["E.E. Emilia Ribeiro", "UFNZ", "E.M. Libero Andrade"];
  var anoPeriodos = ["3 ano", "5 periodo", "9 ano"];

  void acao() {
    setState(() {
      fichaAtual: 
      if(fichaAtual<3){
        fichaAtual++;
      }
   
      
    });
    print(fichaAtual);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Ficha das alunas"),
      ),
      body: Ficha(fotos[fichaAtual], nomes[fichaAtual], matriculas[fichaAtual],
          escolas[fichaAtual], anoPeriodos[fichaAtual], acao),
    ));
  }
}
