import 'dart:io';

void main(List<String> arguments) {
  /*Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos
 Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.*/

  // Definicion de variables
  int numNotas = 5;
  double caliBaja = 0, calificaciones, sumaNotas = 0;
  double promedio;

  for (var i = 1; i <= numNotas; i++) {
    stdout.writeln("Ingrese la calificacion del alumno $i");
    calificaciones = double.parse(stdin.readLineSync()!);

    if (calificaciones < 0) {
      stdout.writeln("Ingrese una nota valida");
      i--;
      continue;
    }
    sumaNotas += calificaciones;

    if ( calificaciones < caliBaja ) {
      caliBaja = calificaciones;
    } 
  }
  promedio = sumaNotas / numNotas;

  stdout.writeln("El promedio del grupo es: $promedio");
  stdout.writeln("La calificación más baja es: $caliBaja");
}
