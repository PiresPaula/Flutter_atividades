import "package:flutter/material.dart";

class Ficha extends StatelessWidget {
  final String camImg;
  final String nome;
  final String matricula;
  final String escola;
  final String anoPeriodo;
  final Function() quandoPressionar;

  Ficha(this.camImg, this.nome, this.matricula,this.escola,this.anoPeriodo,
      this.quandoPressionar);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(camImg),
          Text(
            "Nome: " + nome,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          Text(
            "Matricula: " + matricula,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          Text(
            "Escola: " + escola,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          Text(
            "Ano/Periodo: " + anoPeriodo,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: quandoPressionar, child: Text("Próxima ficha"))
        ],
      ),
    );
  }
}
