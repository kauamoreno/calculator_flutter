import 'package:flutter/material.dart';
import 'Buttons/Button.dart';
import 'Buttons/ButtonRow.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button.big(texto: 'AC'),
            Button(texto: '%'),
            Button.operation(texto: '/'),
          ]),
          ButtonRow(buttons: [
            Button(texto: '7'),
            Button(texto: '8'),
            Button(texto: '9'),
            Button.operation(texto: 'X'),
          ]),
          ButtonRow(buttons: [
            Button(texto: '4'),
            Button(texto: '5'),
            Button(texto: '6'),
            Button.operation(texto: '-'),
          ]),
          ButtonRow(buttons: [
            Button(texto: '1'),
            Button(texto: '2'),
            Button(texto: '3'),
            Button.operation(texto: '+'),
          ]),
          ButtonRow(buttons: [
            Button.big(texto: '0'),
            Button(texto: '.'),
            Button.operation(texto: '='),
          ]),
        ]
      ),
    );
  }
}