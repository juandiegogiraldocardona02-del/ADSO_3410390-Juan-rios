import 'dart:io';

void main() {
  // Declaración de todas las variables al inicio
  int cantidadNumeros = 10;   // Cuántos números se van a leer
  int i;                      // Variable contadora del for
  int numUsuario;                 // Cada número ingresado
  int sumaNumeros = 0;               // Acumulador de la suma

  // Ciclo FOR para leer y sumar los 10 números
  for (i = 1; i <= cantidadNumeros; i++) {
    stdout.write("Ingrese el número $i: ");
    numUsuario = int.parse(stdin.readLineSync()!);
    sumaNumeros = (sumaNumeros + numUsuario);           // Acumular
  }

  // Mostrar el resultado final
  stdout.writeln("La suma de los 10 números es: $sumaNumeros");
}