import 'dart:io';

void main() {

  /*Calcular la suma siguiente: 100 + 98 + 96 + 94 + . . . + 0 en este orden */
  
  //Definicion de variables

  int termino = 100;
  int suma = 0;

  // Calculo
  
  do {
    suma += termino;
    termino -= 2;
  } while (termino >= 0);

  // Impresion en pantalla

  stdout.writeln("La suma de los numeros pares desde el 100 al 0 en forma descendente es: $suma");
}