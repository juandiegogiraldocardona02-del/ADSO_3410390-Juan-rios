import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {
  
  /* Dada la duración en minutos de una llamada calcular el costo, considerando:
  • Hasta tres minutos el costo es 600
  • Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.*/

//Definicion de variables

double minutos, costo,costoAdicional, totalLlamada;

stdout.writeln("Ingrese la duracion de la llamada en minutos");
minutos = double.parse(stdin.readLineSync()!);

costo = 600;
costoAdicional = 150;
totalLlamada = (minutos-3);

if(minutos > 3) {
  costo = (costo +( costoAdicional*totalLlamada));
}
stdout.writeln(
    "El cliente hablo $minutos minutos, el valor a pagar es de  \$$costo");
 }