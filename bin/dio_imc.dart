import 'package:dio_imc/models/calculadora.dart';
import 'package:dio_imc/models/pessoa.dart';
import 'package:dio_imc/utils/console.dart';

void main(List<String> arguments) {
  print('Calculadora de IMC.');

  double? peso, altura;
  var nome = Console.lerStringComTexto("Digite o seu nome: ");

  try {
    peso = Console.lerDoubleComTexto("Digite o seu peso: ");

    while (peso == 0 || peso == null) {
      peso = Console.lerDoubleComTexto(
          "Valor incorreto. Digite novamente o seu peso: ");
    }
  } catch (e) {
    print(e);
  }

  try {
    altura = Console.lerDoubleComTexto("Digite a sua altura: ");

    while (altura == 0 || altura == null) {
      altura = Console.lerDoubleComTexto(
          "Valor incorreto. Digite novamente a sua altura: ");
    }
  } catch (e) {
    print(e);
  }

  Pessoa pessoa = Pessoa(nome, peso!, altura!);
  double calculo =
      Calculadora.calculatarIMC(pessoa.getPeso(), pessoa.getAltura());
  String imc = Calculadora.classificacao(calculo);

  print(pessoa.toString());
  print("Sua classificação é: $imc");
}
