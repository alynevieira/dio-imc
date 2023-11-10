class Calculadora {
  static double calculatarIMC(double peso, double altura) {
    return peso / (altura * 2);
  }

  static String classificacao(double value) {
    if (value < 16.0) {
      return "Magreza grave";
    } else if (value >= 16.0 && value < 17.0) {
      return "Magreza moderada";
    } else if (value >= 17.0 && value < 18.5) {
      return "Magreza leve";
    } else if (value >= 18.5 && value < 25.0) {
      return "Saudável";
    } else if (value >= 25.0 && value < 30.0) {
      return "Sobrepeso";
    } else if (value >= 30.0 && value < 35.0) {
      return "Obesidade Grau I";
    } else if (value >= 35.0 && value < 40.0) {
      return "Obesidade Grau II (Severa)";
    } else {
      return "Obesidade Grau III (Mórbida)";
    }
  }
}
