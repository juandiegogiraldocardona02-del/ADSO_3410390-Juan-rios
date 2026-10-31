import 'dart:io';

void main(List<String> arguments) {
  /*Se desea conocer la cantidad dea aprendices de los programas ADO, Mecanizado y Automotriz que asistieron a un evento */

  //Definicion de variables

  int contADSO, contMecanizado, contAutomotriz, programa;

  //Contadores

  contADSO = 0;
  contMecanizado = 0;
  contAutomotriz = 0;

  // Inicio del conteo

  for (var i = 0; i < 4; i++) {
    stdout.writeln(
      "Ingrese el programa al que pertenece el aprendiz ${i + 1}, 1 para ADSO, 2 para Mecanizado, 3 para Automotriz",
    );
    programa = int.parse(stdin.readLineSync()!);

    switch (programa) {
      case 1:
        contADSO++;
        break;
      case 2:
        contMecanizado++;
        break;
      case 3:
        contAutomotriz++;
        break;
      default:
        stdout.writeln("Programa no encontrado");
        break;
    }
  }

  // Mensaje en pantalla
  stdout.writeln(
    "La cantidad de aprendices de ADSO son $contADSO, de Mecanizado son $contMecanizado y de Automotriz son $contAutomotriz ",
  );
}
