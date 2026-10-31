import 'dart:io';

void main() {

  /*Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje tiene estudios de primaria, secundaria, carrera técnica, estudios profesionales y estudios de posgrado.
El programa debe preguntar si se desea continuar ingresando datos. */

  // Defincion de variables
  
  int opcion;
  String respuesta;
  int total = 0;
  int primaria = 0, secundaria = 0, tecnica = 0, profesional = 0, posgrado = 0;

  //Seleccion de la opcion en encuesta

  stdout.writeln("Niveles de estudio:");
  stdout.writeln("1. Primaria");
  stdout.writeln("2. Secundaria");
  stdout.writeln("3. Carrera técnica");
  stdout.writeln("4. Estudios profesionales");
  stdout.writeln("5. Posgrado\n");

  do {
    do {
      stdout.write("Ingrese el nivel de estudio (1-5): ");
      opcion = int.parse(stdin.readLineSync()!);
      if (opcion < 1 || opcion > 5) {
        stdout.writeln("Opción inválida. Intente de nuevo.");
      }
    } while (opcion < 1 || opcion > 5);

    switch (opcion) {
      case 1:
        primaria++;
        break;
      case 2:
        secundaria++;
        break;
      case 3:
        tecnica++;
        break;
      case 4:
        profesional++;
        break;
      case 5:
        posgrado++;
        break;
    }
    total++;

    stdout.write("¿Desea ingresar otra persona? (s/n): ");
    respuesta = stdin.readLineSync()!.toLowerCase();
  } while (respuesta == 's');

  // Impresion en pantalla

  stdout.writeln("\n===== RESULTADOS DE LA ENCUESTA =====");
  if (total > 0) {
    stdout.writeln("Total encuestados: $total");
    stdout.writeln(
      "Primaria: $primaria (${(primaria / total * 100).toStringAsFixed(2)}%)",
    );
    stdout.writeln(
      "Secundaria: $secundaria (${(secundaria / total * 100).toStringAsFixed(2)}%)",
    );
    stdout.writeln(
      "Técnica: $tecnica (${(tecnica / total * 100).toStringAsFixed(2)}%)",
    );
    stdout.writeln(
      "Profesional: $profesional (${(profesional / total * 100).toStringAsFixed(2)}%)",
    );
    stdout.writeln(
      "Posgrado: $posgrado (${(posgrado / total * 100).toStringAsFixed(2)}%)",
    );
  } else {
    stdout.writeln("No se ingresaron datos.");
  }
}
