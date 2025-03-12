void main() {
  Fibonacci fibo = Fibonacci(quantityTerms: 15);

  print("A sequencia Fibonacci para ${fibo.quantityTerms} termos é ${fibo.fiboCalc()}");
}

class Fibonacci {
  int firstTerm;
  int secondTerm;
  int quantityTerms;

  Fibonacci({this.firstTerm = 0, this.secondTerm = 1, required this.quantityTerms});

   fiboCalc() {
    List<int> sequence = [firstTerm, secondTerm];
    for (int i = 2; i < quantityTerms; i++) {
      int nextTerm = sequence[i - 1] + sequence[i - 2];
      sequence.add(nextTerm);
    }
    return sequence;
  }
}
