void main() {
  var validador = ValidadorCPF('12345678900');
  print(validador.validar()); // Deve imprimir true ou false
}

class ValidadorCPF {
  String cpf;

  ValidadorCPF(this.cpf);

  bool validar() {
    if (cpf.length != 11) return false;

    int primeiroDigito = _calcularDigito(cpf.substring(0, 9));
    int segundoDigito = _calcularDigito(cpf.substring(0, 9) + primeiroDigito.toString());

    return cpf == cpf.substring(0, 9) + primeiroDigito.toString() + segundoDigito.toString();
  }

  int _calcularDigito(String cpfParcial) {
    int soma = 0;
    for (int index = 0; index < cpfParcial.length; index++) {
      soma += int.parse(cpfParcial[index]) * (cpfParcial.length + 1 - index);
    }
    int resto = soma % 11;
    return (resto < 2) ? 0 : 11 - resto;
  }
}
