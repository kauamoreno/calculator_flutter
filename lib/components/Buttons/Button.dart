import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String texto;
  final bool big;
  final Color cor;
  final void Function(String) cb;

  const Button(
      {super.key,
      required this.texto,
      this.big = false,
      this.cor = DEFAULT,
      required this.cb});
  const Button.big(
      {super.key,
      required this.texto,
      this.big = true,
      this.cor = DEFAULT,
      required this.cb});
  const Button.operation(
      {super.key,
      required this.texto,
      this.big = false,
      this.cor = OPERATION,
      required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(cor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Define um raio de borda zero para tornar o botão quadrado
              side: BorderSide(width: 0.5, color: Colors.black), // Define a largura e a cor da borda
            ),
          ),
        ),
        child: Text(
          texto,
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
        onPressed: () => cb(texto),
      ),
    );
  }
}
