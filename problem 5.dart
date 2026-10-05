// Problema 5: Imprimir Patrón Recursivo
String crearLinea(int n) {
  if (n <= 0) {
    return "";
  }
  return "*${crearLinea(n - 1)}";
}

void imprimirPatron(int n) {
  // Caso base para detener la recursión
  if (n <= 0) {
    return;
  }

  String linea = crearLinea(n);

  // 1. Imprimir antes de bajar
  print(linea);

  // 2. Llamada recursiva
  imprimirPatron(n - 1);

  // 3. Imprimir al regresar
  print(linea);
}

void main() {
  imprimirPatron(3);
}