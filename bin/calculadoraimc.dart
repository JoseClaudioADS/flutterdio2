import 'dart:convert';
import 'dart:io';
import 'package:calculadoraimc/calculadoraimc.dart';
import 'package:calculadoraimc/pessoa.dart';

void main(List<String> arguments) {
  print('Caluladora de IMC');

  print("Informe seu nome:");
  var line = stdin.readLineSync(encoding: utf8);
  var nome = line;

  print("Informe seu peso em Kg:");
  line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  print("Informe sua altura em metros (ex: 1.72):");
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ?? "0");

  final pessoa = Pessoa(nome!, peso, altura);

  print("${pessoa.nome}, seu IMC é: ${obterClassificacaoImc(pessoa)}");

}
