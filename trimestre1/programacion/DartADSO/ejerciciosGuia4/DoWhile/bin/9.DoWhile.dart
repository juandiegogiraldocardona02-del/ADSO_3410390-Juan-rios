import 'dart:io';

void main() {
  /*Escribir un programa que muestre el siguiente menú y que permita pasar magnitudes de grados a radianes y de radianes a grados.
1.
Pasar de grados a radianes
2.
Pasar de radianes a grados
3.
Salir del programa */

  // //Definicion de variables

  const double pi = 3.1416;
  int opcion;
  double grados;
  double radianes;
  double resultado;

  // Seleccion de operacion
  
  do {
    // Mostrar menú
    stdout.writeln("___CONVERSOR DE ÁNGULOS___");
    stdout.writeln("1. Pasar de grados a radianes");
    stdout.writeln("2. Pasar de radianes a grados");
    stdout.writeln("3. Salir del programa");
    stdout.write("Seleccione una opción: ");
    opcion = int.parse(stdin.readLineSync()!);

    // Procesar la opción

    switch (opcion) {
      case 1:
        stdout.write("Ingrese el valor en grados: ");
        grados = double.parse(stdin.readLineSync()!);
        resultado = grados * (pi / 180.0);
        stdout.writeln(
          "${grados.toStringAsFixed(3)} grados = ${resultado.toStringAsFixed(3)} radianes",
        );
        break;

      case 2:
        stdout.write("Ingrese el valor en radianes: ");
        radianes = double.parse(stdin.readLineSync()!);
        resultado = radianes * (180.0 / pi);
        stdout.writeln(
          "${radianes.toStringAsFixed(3)} radianes = ${resultado.toStringAsFixed(3)} grados",
        );
        break;

      case 3:
        stdout.writeln("Saliendo del programa...");
        break;

      default:
        stdout.writeln("Opción no válida. Intente de nuevo.");
    }
  } while (opcion != 3); // El ciclo termina cuando se elige la opción 3
}
