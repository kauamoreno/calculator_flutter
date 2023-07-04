import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String texto;
  final bool big;
  final Color cor;

  const Button({
    super.key, 
    required this.texto, 
    this.big = false, 
    this.cor = DEFAULT
  });
  const Button.big({
    super.key, 
    required this.texto, 
    this.big = true, 
    this.cor = DEFAULT
  });
  const Button.operation({
    super.key, 
    required this.texto, 
    this.big = false, 
    this.cor = OPERATION
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(cor)
        ),
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200
          ),
        ),
        onPressed: () {  },
      ),
    );
  }
}