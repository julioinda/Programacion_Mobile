// Problema 4: Matriz Transpuesta
List<List<int>> transponerMatriz(List<List<int>> matriz) {
  int filas = matriz.length;
  int columnas = matriz[0].length;

  // Construir la transpuesta intercambiando filas por columnas
  List<List<int>> transpuesta = [];

  for (int j = 0; j < columnas; j++) {
    List<int> nuevaFila = [];
    for (int i = 0; i < filas; i++) {
      nuevaFila.add(matriz[i][j]);
    }
    transpuesta.add(nuevaFila);
  }

  return transpuesta;
}

void main() {
  List<List<int>> matrizOriginal = [
    [1, 2, 3],
    [4, 5, 6]
  ];

  List<List<int>> resultado = transponerMatriz(matrizOriginal);

  print("Matriz original:");
  print(matrizOriginal);

  print("Matriz transpuesta:");
  print(resultado);
}