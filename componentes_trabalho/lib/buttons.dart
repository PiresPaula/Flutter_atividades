import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonRed extends StatelessWidget {
  static var color = './main.dart';

  @override
  Widget build(BuildContext context) {
    color = '1';
    return ElevatedButton(
        onPressed: () => color, child: Text("Mudar para vermelho"));
  }
}

class ButtonPurple extends StatelessWidget {
  static var color = './main.dart';

  @override
  Widget build(BuildContext context) {
    color = '2';
    return ElevatedButton(
        onPressed: () => color, child: Text("Mudar para roxo"));
  }
}

class ButtonBlue extends StatelessWidget {
  static var color = './main.dart';

  @override
  Widget build(BuildContext context) {
    color = '3';
    return ElevatedButton(
        onPressed: () => color, child: Text("Mudar para azul"));
  }
}
