// Problema 3: Validador de Palíndromos
bool esPalindromo(String texto) {
  // Convertir a minúsculas
  String textoMinusculas = texto.toLowerCase();

  // Conservar solo letras ASCII y digitos
  String textoLimpio = "";
  for (int i = 0; i < textoMinusculas.length; i++) {
    String char = textoMinusculas[i];
    // Conservar solo letras ASCII y digitos
    if ((char.codeUnitAt(0) >= 97 && char.codeUnitAt(0) <= 122) ||
        (char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57)) {
      textoLimpio += char;
    }
  }

  // Comparar de afuera hacia adentro usando dos índices
  int inicio = 0;
  int fin = textoLimpio.length - 1;

  while (inicio < fin) {
    if (textoLimpio[inicio] != textoLimpio[fin]) {
      return false;
    }
    inicio++;
    fin--;
  }

  return true;
}

void main() {
  print(esPalindromo("Anita lava la tina.")); // true
  print(esPalindromo("A ti no, bonita."));    // true
  print(esPalindromo("Hola mundo"));          // false
}