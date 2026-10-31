import 'dart:io';

void main() {

/*Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios */

  // //Definicion de variables

  String numControl;
  String respuesta;
  double calificacion, suma, promedio;
  double mayorPromedio = -1;
  String numControlMayor = "";
  int unidad;

  //  Entrada de datos

  do {
    stdout.write("Ingrese el número de control del alumno: ");
    numControl = stdin.readLineSync()!;

    suma = 0;
    unidad = 1;
    do {
      stdout.write("Calificación de la unidad $unidad: ");
      calificacion = double.parse(stdin.readLineSync()!);
      suma += calificacion;
      unidad++;
    } while (unidad <= 5);

    promedio = suma / 5;
    stdout.writeln("Promedio: ${promedio.toStringAsFixed(2)}");

    if (promedio > mayorPromedio) {
      mayorPromedio = promedio;
      numControlMayor = numControl;
    }

    stdout.write("¿Desea ingresar otro alumno? (s/n): ");
    respuesta = stdin.readLineSync()!.toLowerCase();
  } while (respuesta == 's');

  //Impresion en pantalla
  
  if (numControlMayor.isNotEmpty) {
    stdout.writeln("\nEl alumno con mayor promedio es: $numControlMayor");
    stdout.writeln("Promedio: ${mayorPromedio.toStringAsFixed(2)}");
  } else {
    stdout.writeln("No se ingresó ningún alumno.");
  }
}