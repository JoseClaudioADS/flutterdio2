import 'package:calculadoraimc/altura_invalida_exception.dart';
import 'package:calculadoraimc/peso_invalido_exception.dart';

class Pessoa {
  final String nome;
  final double peso;
  final double altura;

  Pessoa(this.nome, this.peso, this.altura) {

    if (peso == 0) {
      throw PesoInvalidoException();
    }

    if (altura == 0) {
      throw AlturaInvalidaException();
    }
  }
  
  double calcularImc() {
    return peso / (altura * altura);
  }
}