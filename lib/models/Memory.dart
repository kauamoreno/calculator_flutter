class Memory {
  String operacao = '';
  String _value = '0';
  static const _operacoes = ['/', '%', 'X', '+', '-'];

  //VALORES DE CALCULO
  double valor1 = 0;
  double valor2 = 0;

  //QUANDO CLICADO 'AC'
  _limpar() {
    _value = '0';
  }

  //PARA ADICIONAR OS DIGITOS
  _addDig(comando) {
    if(_value.contains('.') && comando.contains('.')){
      _value += '';
    } else{
      if(comando.contains('.')){
        _value += comando;
        return;
      }
      _value == '0' ? _value = comando : _value += comando;
    }
  }

  //ATRIBUI O v1 E operacao
  _operacao(comando) {
    valor1 = double.parse(_value);
    operacao = comando;
    _value = '';
  }

  //ATRIBUI O v2 E CHAMA O RESULTADO  
  _igual(comando){
    valor2 = double.parse(_value);
    print("VALOR 1: $valor1");
    print("VALOR 2: $valor2");
    print("OPERAÇÃO: $operacao");
    _value = _resultado(operacao).toString();
  }

  //RETORNA O RESULTADO PARA OPERACAO
  _resultado(operacao) {
    switch (operacao) {
      case '/':
        return valor1 / valor2;
      case '%':
        return valor1 % valor2;
      case 'X':
        return valor1 * valor2;
      case '+':
        return valor1 + valor2;
      case '-':
        return valor1 - valor2;
    }
  }

  //METODO IMPLEMENTADO NA SCREEN Calculator
  void aplicarComando(String comando) {
    if (comando == 'AC') {
      _limpar();
    } else if (_operacoes.contains(comando)) {
      _operacao(comando);
    } else if(comando == '='){
      _igual(comando);
    } else {
      _addDig(comando);
    }
  }

  String get value {
    return _value;
  }

}
