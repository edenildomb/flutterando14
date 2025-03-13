void main() {
  var regra = RegraDeTres(valor1_1: 1, valor1_2: 1000, valor2_1: 2.39, valor2_2: 0);
  print(regra.calcular()); // Deve imprimir 2000
}

class RegraDeTres {
  num valor1_1;
  num valor1_2;
  num valor2_1;
  num valor2_2;

  RegraDeTres({required this.valor1_1, required this.valor1_2, required this.valor2_1, required this.valor2_2});

  num calcular() {
    return (valor1_2 * valor2_1) / valor1_1;
  }
}