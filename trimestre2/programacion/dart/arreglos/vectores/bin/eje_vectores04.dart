import 'dart:io';

void main(List<String> args) {
  /*
  Llenar dos vectores A y B de 8 elementos cada uno. Crear un tercer vector C de 16 elementos que intercale los 
  valores de A y B (es decir: el primer elemento de $A$, luego el primero de B, el segundo de A, el segundo de B, 
  y así sucesivamente). 
  Imprimir el vector C resultante.
  */
  List<int> vector1 = [];
  List<int> vector2 = [];
  List<int> vector3 = [];

  for (var i = 0; i < 8; i++) {
    print("Ingrese el valor #${i + 1} del vector/lista 1");
    int numVector1 = int.parse(stdin.readLineSync()!);
    vector1.add(numVector1);
  }
  for (var i = 0; i < 8; i++) {
    print("Ingrese el valor #${i + 1} del vector/lista 2");
    int numVector2 = int.parse(stdin.readLineSync()!);
    vector2.add(numVector2);
  }

  for (var i = 0; i < 8; i++) {
    vector3.add(vector1[i]);
    vector3.add(vector2[i]);
  }
  print("El vector 3 es: $vector3");
}
