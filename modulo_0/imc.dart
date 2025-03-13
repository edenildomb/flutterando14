void main() {
  Pessoa p = Pessoa(nome: "Edenildo Muniz", peso: 73.4, altura: 1.67);
        
  print("O IMC de ${p.nome} é ${p.calcImc().toString().substring(0, 5)}");
   
}

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({
    required this.nome, required this.peso, required this.altura
  });

  calcImc() {
    return peso / (altura * altura);
  }
}