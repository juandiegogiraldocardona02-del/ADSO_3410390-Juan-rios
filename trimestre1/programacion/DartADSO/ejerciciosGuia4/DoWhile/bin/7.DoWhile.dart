import 'dart:io';

void main() {

/*Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. Por cada carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. Cuando lea las 10 letras 'a' el programa terminará. */

  //Definicion de variables

  String? linea;
  String caracter;
  int contadorA = 0;          // Veces que se ha leído 'a' o 'A'
  bool terminado = false;     // Controla la salida del bucle

 //  Entrada de datos
 
  do {
    stdout.write("Ingrese un carácter: ");
    linea = stdin.readLineSync();
    if (linea != null && linea.isNotEmpty) {
      caracter = linea[0].toLowerCase();
      if (caracter == 'a') {
        contadorA++;
        if (contadorA >= 10) {
          terminado = true;
        }
      } else {
        stdout.writeln("El carácter '$caracter' no es 'a'.");
      }
    }
  } while (!terminado);

  stdout.writeln("Se han leído 10 letras 'a'. Programa terminado.");
}