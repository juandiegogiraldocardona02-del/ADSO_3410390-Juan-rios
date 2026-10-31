import 'dart:io';

void main(List<String> args) {
  //Diseñar un algoritmo que almacene 10 números enteros en un vector.
  //Luego, solicitar al usuario un número X a buscar. El programa debe
  //contar cuántas veces aparece X dentro del vector y reemplazar cada una
  //de sus apariciones por el valor 0. Finalmente, imprimir el número total
  // de reemplazos realizados y el vector modificado.

  List<int> numeros = [];
  int contadorRemplazos = 0;

  for (var i = 0; i < 10; i++) {
    print("Ingrese el número ${i + 1}");
    int numVector = int.parse(stdin.readLineSync()!);
    numeros.add(numVector);
  }

  print("Ingrese el número X que desea buscar y remplazar por cero");
  int numeroX = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] == numeroX) {
      numeros[i] = 0;
      contadorRemplazos++;
    }
  }

  print("*" * 40);
  print("El número $numeroX se remplazó $contadorRemplazos veces");
  print("El Vector quedó así $numeros");
}
