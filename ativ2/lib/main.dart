import 'package:flutter/material.dart';

main() {
  runApp(AulaGrupoDois());
}

class AulaGrupoDois extends StatelessWidget {
  void clicou() {
    print('teste');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Meu primeiro APP"),
              backgroundColor: Colors.purple,
            ),
            body: Center(
              child: Column(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Aprendendo Flutter"),
                      Text("Aula CEFET Grupo 2"),
                      SizedBox(height: 35),
                      ElevatedButton(onPressed: clicou, child: Text('Enviar')),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: clicou, child: Text('Cancelar')),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(onPressed: clicou, child: Text('Salvar')),
                      SizedBox(height: 20),
                    ]),
                Text("Aprendendo"),
                Text("Programação"),
                Text("Flutter"),
              ]),
            )));
  }
}
