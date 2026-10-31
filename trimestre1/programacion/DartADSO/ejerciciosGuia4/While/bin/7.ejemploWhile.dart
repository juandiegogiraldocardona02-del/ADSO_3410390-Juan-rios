import 'dart:io';

void main() {
  /*Encontrar el menor valor de un conjunto de n números dados. */

  // Definición de variables

  int cantidadNumeros;
  int contador;
  double numero;
  double menor = double.infinity;

  // Entrada de datos

  stdout.write("Ingrese la cantidad de números: ");
  cantidadNumeros = int.parse(stdin.readLineSync()!);

  contador = 1;
  while (contador <= cantidadNumeros) {
    stdout.write("Ingrese el número $contador: ");
    numero = double.parse(stdin.readLineSync()!);

    // Actualizar el menor si corresponde
    if (numero < menor) {
      menor = numero;
    }

    contador++;
  }

  // Impresion en pantalla
  stdout.writeln("El menor valor del conjunto es: $menor");
}
