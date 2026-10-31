import 'dart:io';

void main(List<String> arguments) {
  /*Se realiza una convocatoria para estudiar el programa de ADSO en el CPIC. Del total de aspirantes se desea saber cuantos son hombres, y cuantas mujeres mayores de edad */

  //Definición de variables

  int hombres = 0;
  int mujeres = 0;
  int genero, edad;

  //Inicio de conteo

  for (var i = 0; i < 4; i++) {
    stdout.writeln("Ingrese su genero: 1 si es hombre y 2 si es mujer");
    genero = int.parse(stdin.readLineSync()!);

    stdout.writeln("Ingrese su edad actual");
    edad = int.parse(stdin.readLineSync()!);

    if (edad >= 18) {
      if (genero == 1) {
        hombres++;
      } else if (genero == 2) {
        mujeres++;
      } else {
        stdout.writeln("Genero no encontrado");
      }
    }
  }
  stdout.writeln("Total de hombres mayores de edad: $hombres");
  stdout.writeln("Total de mujeres mayores de edad: $mujeres");
}
