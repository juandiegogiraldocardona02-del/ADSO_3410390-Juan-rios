import 'dart:io';

void main() {
  /* En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar que porcentaje de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en contra y que porcentaje se abstiene de opinar. El programa debe preguntar si se desea continuar ingresando datos.*/

  //Definicion de variables

  int total = 0; // Total de diputados encuestados
  int favor = 0; // Contador a favor
  int contra = 0; // Contador en contra
  int abstencion = 0; // Contador abstenciones
  int opinion;
  String respuesta;

  // Entrada de datos por encuesta

  stdout.writeln("Encuesta sobre el Tratado de Libre Comercio");
  stdout.writeln("1 = A favor");
  stdout.writeln("2 = En contra");
  stdout.writeln("3 = Se abstiene de opinar\n");

  do {

    // Validar la opinión

    do {
      stdout.write("Ingrese la opinión del diputado (1, 2 o 3): ");
      opinion = int.parse(stdin.readLineSync()!);
      if (opinion < 1 || opinion > 3) {
        stdout.writeln("Opinión inválida. Debe ser 1, 2 o 3.");
      }
    } while (opinion < 1 || opinion > 3);

    // Registrar el voto

    switch (opinion) {
      case 1:
        favor++;
        break;
      case 2:
        contra++;
        break;
      case 3:
        abstencion++;
        break;
    }
    total++;

    // Preguntar si se continúa

    stdout.write("¿Desea ingresar otro diputado? (s/n): ");
    respuesta = stdin.readLineSync()!.toLowerCase();
  } while (respuesta == 's');

  // Calculo e impresion en pantalla
  
  if (total > 0) {
    double puntosFavor = (favor / total) * 100;
    double puntosContra = (contra / total) * 100;
    double puntosAbstencion = (abstencion / total) * 100;

    stdout.writeln("\n===== RESULTADOS DE LA ENCUESTA =====");
    stdout.writeln("Total de diputados encuestados: $total");
    stdout.writeln("A favor: $favor (${puntosFavor.toStringAsFixed(2)}%)");
    stdout.writeln("En contra: $contra (${puntosContra.toStringAsFixed(2)}%)");
    stdout.writeln(
      "Se abstienen: $abstencion (${puntosAbstencion.toStringAsFixed(2)}%)",
    );
  } else {
    stdout.writeln("No se ingresó ningún diputado.");
  }
}
