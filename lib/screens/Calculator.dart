import 'package:flutter/material.dart';
import '../components/Display.dart';
import '../components/Keyboard.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display(texto: '123.3'),
          Keyboard()
        ],
      ),
    );
  }
}