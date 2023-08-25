import 'package:calculadoraimc/altura_invalida_exception.dart';
import 'package:calculadoraimc/calculadoraimc.dart';
import 'package:calculadoraimc/peso_invalido_exception.dart';
import 'package:calculadoraimc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Calculadora de IMC - @obterClassificacaoIMC', (() {
      Map<Pessoa, String> valuesToTest = {
        Pessoa("Jose", 70, 3.63): "Magreza grave",
        Pessoa("Maria", 50, 1.75): "Magreza moderada",
        Pessoa("Joao", 55, 1.73): "Magreza leve",
        Pessoa("Severino", 60, 1.75): "Saudável",
        Pessoa("Ana", 74, 1.63): "Sobrepeso",
        Pessoa("Clara", 85, 1.63): "Obesidade grau 1",
        Pessoa("Matheus", 95, 1.63): "Obesidade grau 2",
        Pessoa("Lucas", 95, 1.53): "Obesidade grau 3"
      };

      valuesToTest.forEach((values, expected) {
        test('Entrada: $values Esperado: $expected', () {
          expect(
            obterClassificacaoImc(Pessoa(values.nome, values.peso, values.altura)),
            equals(expected)
          );
        });
      });
    }
  ));

  group('Calculadora de IMC - @obterClassificacaoIMC - deve gerar erros', (() {

      test('Deve lançar erro sobre o peso = 0', () {
        expect(
          () => {
            Pessoa("Jose", 0, 3.63)
          },
          throwsA(TypeMatcher<PesoInvalidoException>())
        );
      });

      test('Deve lançar erro sobre a altura = 0', () {
        expect(
          () => {
            Pessoa("Maria", 50, 0)
          },
          throwsA(TypeMatcher<AlturaInvalidaException>())
        );
      });
    }
  ));
}
