import 'package:flutter/material.dart';
import 'Buttons/Button.dart';
import 'Buttons/ButtonRow.dart';

class Keyboard extends StatelessWidget {

  final void Function(String) cb;

  const Keyboard({super.key, required this.cb});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button.big(texto: 'AC', cor: Button.DARK, cb: cb),
            Button(texto: '%', cor: Button.DARK, cb: cb),
            Button.operation(texto: '/', cb: cb),
          ]),
          ButtonRow(buttons: [
            Button(texto: '7', cb: cb),
            Button(texto: '8', cb: cb),
            Button(texto: '9', cb: cb),
            Button.operation(texto: 'X', cb: cb),
          ]),
          ButtonRow(buttons: [
            Button(texto: '4', cb: cb),
            Button(texto: '5', cb: cb),
            Button(texto: '6', cb: cb),
            Button.operation(texto: '-', cb: cb),
          ]),
          ButtonRow(buttons: [
            Button(texto: '1', cb: cb),
            Button(texto: '2', cb: cb),
            Button(texto: '3', cb: cb),
            Button.operation(texto: '+', cb: cb),
          ]),
          ButtonRow(buttons: [
            Button.big(texto: '0', cb: cb),
            Button(texto: '.', cb: cb),
            Button.operation(texto: '=', cb: cb),
          ]),
        ]
      ),
    );
  }
}