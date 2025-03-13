void main() {
  Fibonacci seqFibo = Fibonacci(quantTermos: 15);

  print("A sequencia Fibonacci para ${seqFibo.quantTermos} termos é ${seqFibo.fiboCalc()}");
}

class Fibonacci {
  int termoUm;
  int termoDois;
  int quantTermos;

  Fibonacci({this.termoUm = 0, this.termoDois = 1, required this.quantTermos});

   fiboCalc() {
    List<int> sequencia = [termoUm, termoDois];
    for (int index = 2; index < quantTermos; index++) {
      int proximoTermo = sequencia[index - 1] + sequencia[index - 2];
      sequencia.add(proximoTermo);
    }
    return sequencia;
  }
}
