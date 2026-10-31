import 'dart:io';

void main(List<String> arguments) {
/*El área de Bienestar al Aprendiz del SENA ha actualizado las políticas para el servicio 
de restaurante. Para recibir el almuerzo subsidiado por un valor de $2.000, el 
aprendiz debe cumplir simultáneamente con los siguientes requisitos: pertenecer al 
estrato 1 o al estrato 2, Y tener cero (0) faltas disciplinarias registradas en el sistema. 
Si el aprendiz no cumple con todas estas condiciones, debe cancelar la tarifa regular 
de $6.000. Solicite al usuario su nombre, su estrato y la cantidad de faltas 
disciplinarias. Utilice un condicional doble con operadores lógicos para determinar 
el valor a pagar. */

  //Definicion de variables

  int estratoAprendiz, numFaltas, tarifaRegula, valorAlmuerzo;
  String? nombreAprendiz;

  stdout.writeln("Ingrese el nombre del aprendiz");
  nombreAprendiz = stdin.readLineSync()!;

  stdout.writeln("Ingrese numero de faltas del aprendiz");
  numFaltas = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el estrato de la vivienda del aprendiz");
  estratoAprendiz = int.parse(stdin.readLineSync()!);

  valorAlmuerzo = 2000;
  tarifaRegula = 6000;

  if (estratoAprendiz == 1 && numFaltas == 0 ||
      estratoAprendiz == 2 && numFaltas == 0) {
    stdout.writeln(
      "El aprendiz $nombreAprendiz pertenece al estrato social $estratoAprendiz el valor del almuerzo es de \$ $valorAlmuerzo COP",
    );
  } else {
    stdout.writeln(
      "El aprendiz $nombreAprendiz pertenece al estrato social $estratoAprendiz el valor del almuerzo es de \$ $tarifaRegula COP",
    );
  }
}
