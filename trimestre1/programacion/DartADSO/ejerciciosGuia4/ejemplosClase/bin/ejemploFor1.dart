import 'dart:io';

void main(List<String> arguments) {
  //mostrar los numeros del -20 hasta el 20

  /*for (var i = -20; i <= 20; i++) {
    print("$i");*/

  /*Codificar el siguiente ejercicio en Dart por medio de una aplicación de consola:

Desarrollar un algoritmo tal que, dado como datos 10 números enteros, obtenga la suma de los 
10 números enteros. Se mostrará la suma de dichos números */

//Definicion de variables

double numero;
int valorFinal = 10;
String entradaDatos;
double suma = 0;

for (int i = 0; i < valorFinal; i++) {
  stdout.writeln("Ingrese el valor de $i");
  entradaDatos = stdin.readLineSync()!;
  numero =double.tryParse (entradaDatos)?? 0;
  suma = suma +numero;
}
print("La suma de los numeros es $suma");
}

