import 'dart:io';

void main(List<String> arguments) {
  /*Un alumno de la clase de lógica matemática desea desarrollar un programa que calcule el factorial de un número N, el cual le dará al usuario, el factorial de un número N, definido matemáticamente como N! se obtiene como la multiplicación de todos los números que están desde el 1 hasta el N = 1 * 2 * 3 * ..... (N-2) * (N-1) * N, como se muestra en la figura, por definición el factorial de 0 es 1. */

  //Definicion de variables
  int numUsuario;
  BigInt factorial = BigInt.one;

  // Entrada de datos
  stdout.write("Ingrese un número entero para calcular su factorial: ");
  numUsuario = int.parse(stdin.readLineSync()!);

  // Calculo del factorial

  for (var i = 1; i <= numUsuario; i++) {
    factorial = factorial * BigInt.from(i);
  }

  // Salida en Pantalla
  stdout.writeln("El factorial de $numUsuario es: $factorial");
}
