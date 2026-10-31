import 'dart:io';

void main(List<String> arguments) {
  /*Leer 10 números e imprimir solamente los números positivos */

  // Definicion de variables
  int totalNumeros = 10;
  List<int> positivos = [];

  for (var i = 1; i <= totalNumeros; i++) {
    stdout.writeln("Ingrese el valor del numero $i");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero > 0) {
      positivos.add(numero);
    }
  }
  stdout.writeln("Los numero positivos son: $positivos");
}
