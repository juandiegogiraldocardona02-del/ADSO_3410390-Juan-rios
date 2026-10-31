import 'dart:io';

void main(List<String> arguments) {
  /* Calcular el promedio de un alumno que tiene 7 calificaciones en la materia de Diseño Estructurado de Algoritmos.*/

  // Definicion de variables

  int numNotas = 7;
  double sumaNotas = 0, calificaciones, promedio;

  // Inicion de conteo

  for (var i = 1; i <= numNotas; i++) {
    stdout.writeln("Ingrese la calificacion $i del alumno");
    calificaciones = double.parse(stdin.readLineSync()!);
    sumaNotas = (sumaNotas + calificaciones);
  }
  promedio = (sumaNotas / numNotas);

  // Salida en pantalla
  stdout.writeln("El promedio de las calificaciones del alumno es $promedio");
}
