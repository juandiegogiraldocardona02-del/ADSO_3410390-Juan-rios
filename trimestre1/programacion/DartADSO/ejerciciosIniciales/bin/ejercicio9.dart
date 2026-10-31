//Juan Camilo Gil Perez
//ADSO 3410390
// Pedir el lado de un cubo y calcular su volumen V = lado^3. 

import 'dart:io';

void main(List<String> args) {

  //Definicion de variables
  double lado;
  double volumen;
  
  //Entrada
  stdout.writeln("Ingrese la medida del lado del cubo:"); 

  // lee el valor del lado del cubo y lo asigna a la variable
  lado = double.parse(stdin.readLineSync()!);

  //Procesos de cálculo
  volumen = lado * lado * lado;

  //Salida
  print("El volumen del cubo es $volumen cm3");
}