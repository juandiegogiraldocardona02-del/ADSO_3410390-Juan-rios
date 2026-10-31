//Juan Diego Rios
//ADSO 3410390

//Leer el número de un mes (1 a 4) y mostrar la estación del año correspondiente

import 'dart:io';

void main() {
  int numeroMes;
  String estacion;

  stdout.write('Ingrese un número de mes (1 a 4): ');
  numeroMes = int.parse(stdin.readLineSync()!);

  if (numeroMes == 1) {
    estacion = 'Verano';
  } else if (numeroMes == 2) {
    estacion = 'Otoño';
  } else if (numeroMes == 3) {
    estacion = 'Invierno';
  } else {
    estacion = 'Primavera';
  }

  print('La estación del año es: $estacion');
}