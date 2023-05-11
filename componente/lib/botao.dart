import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  String text;

  Botao(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
          ),
          child: Text(text)),
    );
  }
}
