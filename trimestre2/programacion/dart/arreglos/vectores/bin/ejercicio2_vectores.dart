import 'dart:io';

void main() {
  /*Diseñar un algoritmo que almacene 10 números enteros en un vector. Luego, solicitar al usuario un número X a buscar. El programa debe contar cuántas veces aparece X dentro del vector y reemplazar cada una de sus apariciones por el valor 0. Finalmente, imprimir el número total de reemplazos realizados y el vector modificado. */

  List<int> vector = [];
  int num; // Número ingresado por el usuario
  int x; // Número a buscar
  int reemplazos = 0; // Número de veces que X se repite en el vector

  print("Ingrese 10 números enteros:");
  for (var i = 0; i < 10; i++) {
    stdout.write("introduce el número que ocupara la casilla $i: ");
    num = int.parse(stdin.readLineSync()!);
    vector.add(num); // Agregar el número a la posición i
  }
  print("Su lista actual es: ");
  print(vector);
  print(" ");

  //Buscar el número X
  stdout.write("Ingrese el número a buscar: ");
  x = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < vector.length; i++) {
    // Recorrer el vector para buscar X y reemplazarlo por 0
    if (vector[i] == x) {
      // Si X se repite en el vector
      vector[i] = 0; // Reemplazarlo por 0
      reemplazos++; // Incrementar el contador de reemplazos
    }
  }

  //Imprimir el número total de reemplazos realizados y el vector modificado
  print("El número total de reemplazos realizados es: $reemplazos");
  print("Vector modificado: $vector");
}
