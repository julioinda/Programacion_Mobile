// Problema 1: Cajero Automático
void main() {
  int cantidad = 880; // Cambia este valor para probar

  // Validar si es múltiplo de 10
  if (cantidad % 10 != 0) {
    print("Error: La cantidad debe ser múltiplo de 10.");
    return;
  }

  print("Desglose para \$ $cantidad:");

  int restante = cantidad;

  // Revisar billetes de 500
  int b500 = restante ~/ 500;
  restante = restante % 500;
  if (b500 > 0) {
    print("$b500 billete(s) de \$500");
  }

  // Revisar billetes de 200
  int b200 = restante ~/ 200;
  restante = restante % 200;
  if (b200 > 0) {
    print("$b200 billete(s) de \$200");
  }

  // Revisar billetes de 100
  int b100 = restante ~/ 100;
  restante = restante % 100;
  if (b100 > 0) {
    print("$b100 billete(s) de \$100");
  }

  // Revisar billetes de 50
  int b50 = restante ~/ 50;
  restante = restante % 50;
  if (b50 > 0) {
    print("$b50 billete(s) de \$50");
  }

  // Revisar billetes de 20
  int b20 = restante ~/ 20;
  restante = restante % 20;
  if (b20 > 0) {
    print("$b20 billete(s) de \$20");
  }

  // Revisar billetes de 10
  int b10 = restante ~/ 10;
  restante = restante % 10;
  if (b10 > 0) {
    print("$b10 billete(s) de \$10");
  }
}