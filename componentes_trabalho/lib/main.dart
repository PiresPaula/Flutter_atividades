import 'package:flutter/material.dart';
import './buttons.dart';

void main() {
  runApp(MudarBar());
}

class MudarBar extends StatefulWidget {
  @override
  State<MudarBar> createState() => _MudarBarState();
}

class _MudarBarState extends State<MudarBar> {
  String color = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mudar cor do background"),
          backgroundColor: Colors.black,
        ),
        backgroundColor: color == '1'
            ? Colors.red
            : color == '2'
                ? Colors.purple
                : Colors.blue,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonBlue(color),
              ButtonPurple(color),
              ButtonRed(color),
            ],
          ),
        ),
      ),
    );
  }
}
