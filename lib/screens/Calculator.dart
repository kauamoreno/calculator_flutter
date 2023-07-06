import 'package:calculadora_flutter/models/Memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/Display.dart';
import '../components/Keyboard.dart';

class Calculator extends StatefulWidget {

  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final Memory memory = Memory();

  _onPressed(String comando){
    setState(() {
      memory.aplicarComando(comando);
    });
  }

  @override
  Widget build(BuildContext context) {

    //Para sempre ficar em vertical o app, nao permitir rolagem
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Display(texto: memory.value),
          Keyboard(cb: _onPressed )
        ],
      ),
    );
  }
}