import 'dart:io';

void main(List<String> arguments) {
  /*Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero. */

  // Definicion de variables
  int totalNumeros = 5;
  int positivos = 0;
  int negativos = 0;
  int ceros = 0;

  for (var i = 1; i <= totalNumeros; i++) {
    stdout.writeln("Ingrese el valor del numero $i");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero > 0) {
      positivos++;
    } else if (numero < 0) {
      negativos++;
    } else {
      ceros++;
    }
  }
  stdout.writeln("Los cantidad de numeros positivos son: $positivos");
  stdout.writeln("Los cantidad de numeros negativos son: $negativos");
  stdout.writeln("Los cantidad de numeros iguales a cero son: $ceros");
}
