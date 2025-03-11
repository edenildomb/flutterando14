void main() {
  Pessoa p = Pessoa(name: "Edenildo Muniz", weight: 73.4, height: 1.67);
        
  print("O IMC de ${p.name} é ${p.calcImc().toString().substring(0,5)}");
   
}

class Pessoa {
  String name;
  double weight;
  double height;

  Pessoa({
    required this.name,
    required this.weight,
    required this.height
  });

  double calcImc() {
    return weight / (height * height);
  }
}