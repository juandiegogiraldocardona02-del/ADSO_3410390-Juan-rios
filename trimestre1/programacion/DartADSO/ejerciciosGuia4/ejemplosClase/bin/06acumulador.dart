import 'dart:io';

void main(List<String> arguments) {
  /* Se desea registrar los puntos que se ganan en cada partido, teniendo en cuenta que el maximo puntaje es de 10 por partido. Mostrar al final el total de puntos acumulados y el promedio de puntos */

  //Definición de variables
  int puntos, puntosAcum = 0, totalPartidos = 15;
  double promedio;

  for (var i = 1; i <= totalPartidos; i++) {
    stdout.writeln("Ingrese el puntaje del partido $i");
    puntos = int.parse(stdin.readLineSync()!);
    puntosAcum = (puntosAcum + puntos); //Tambien se puede "puntosAcum +=;"
  }
  promedio = (puntosAcum / totalPartidos);
  stdout.writeln("En total se jugaron $totalPartidos partidos, se hicieron en total $puntosAcum puntos y se obtuvo un promedio de $promedio puntos");
}
