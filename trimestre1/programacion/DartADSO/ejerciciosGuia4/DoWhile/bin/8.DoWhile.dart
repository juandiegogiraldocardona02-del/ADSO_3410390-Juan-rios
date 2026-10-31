import 'dart:io';

void main() {
  
  //Definicion de variables

  String entrada;
  String caracter;
  int contA = 0, contE = 0, contI = 0, contO = 0, contU = 0;

  //  Entrada de datos

  stdout.writeln("Ingrese caracteres (el programa termina al leer '#'):");
  do {
    entrada = stdin.readLineSync()!;
    if (entrada.isNotEmpty) {
      caracter = entrada[0].toLowerCase();
      if (caracter == '#') {
        break;  // Salir del bucle si es '#'
      }
      switch (caracter) {
        case 'a': contA++; break;
        case 'e': contE++; break;
        case 'i': contI++; break;
        case 'o': contO++; break;
        case 'u': contU++; break;
      }
    }
  } while (true);

  //Impresion en pantalla
  
  stdout.writeln("\nConteo de vocales leídas:");
  stdout.writeln("A: $contA");
  stdout.writeln("E: $contE");
  stdout.writeln("I: $contI");
  stdout.writeln("O: $contO");
  stdout.writeln("U: $contU");
}