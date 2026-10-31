//Juan Diego Rios
//ADSO 3410390

//Hacer un algoritmo que lea un número de metros 
//y lo convierta a centímetros 
//y milímetros. 

//Definicion de variables

import 'dart:io';
void main(List<String> args) {
  double metros;
  double centimetros;
  double milimetros;
  //Entrada
    stdout.writeln("Ingrese la medida para hacer la conversión.");
    //leer la medida ingresada por el usuario
    metros = double.parse(stdin.readLineSync()!);

//Procesos para el calculo
centimetros = metros*100;
milimetros = metros*1000;

//Salida
print("El valor ingresado es de $metros metros y corresponde a $centimetros centimetros y a $milimetros milimetros");
}