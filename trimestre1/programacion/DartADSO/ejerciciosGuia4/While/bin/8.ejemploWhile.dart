import 'dart:io';

void main() {
  /*Encontrar el mayor valor de un conjunto de n números dados. */

  // Definición de variables

  int cantidadNumeros;
  int contador;
  double numero;
  double mayor = double.negativeInfinity; //

  // Entrada de datos
  stdout.write("Ingrese la cantidad de números: ");
  cantidadNumeros = int.parse(stdin.readLineSync()!);

  contador = 1;
  while (contador <= cantidadNumeros) {
    stdout.write("Ingrese el número $contador: ");
    numero = double.parse(stdin.readLineSync()!);

    // Actualizar el mayor si corresponde
    if (numero > mayor) {
      mayor = numero;
    }

    contador++;
  }

  // Impresión en pantalla
  stdout.writeln("El mayor valor del conjunto es: $mayor");
}
