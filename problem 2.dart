// Problema 2: Analizador de Calificaciones
void analizarCalificaciones(List<int> lista) {
  if (lista.isEmpty) {
    print("La lista está vacía.");
    return;
  }

  int suma = 0;
  int mayor = lista[0];
  int menor = lista[0];
  int aprobados = 0;
  int reprobados = 0;

  // Un solo ciclo for tradicional
  for (int i = 0; i < lista.length; i++) {
    int nota = lista[i];

    suma = suma + nota;

    if (nota > mayor) {
      mayor = nota;
    }

    if (nota < menor) {
      menor = nota;
    }

    if (nota >= 60) {
      aprobados++;
    } else {
      reprobados++;
    }
  }

  double promedio = suma / lista.length;

  print("Promedio del grupo: $promedio");
  print("Calificación más alta: $mayor");
  print("Calificación más baja: $menor");
  print("Aprobados: $aprobados");
  print("Reprobados: $reprobados");
}

void main() {
  List<int> misCalificaciones = [45, 80, 95, 60, 55, 100, 72];
  analizarCalificaciones(misCalificaciones);
}