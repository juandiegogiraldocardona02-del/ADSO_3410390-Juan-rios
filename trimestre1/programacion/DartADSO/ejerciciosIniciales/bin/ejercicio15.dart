//Juan Diego Rios
//ADSO 3410390

// Hacer un algoritmo que lea la temperatura de un paciente; 
// si es mayor a 38 grados, 
// mostrar "Tiene fiebre", 
// de lo contrario 
// mostrar "Temperatura normal".


import 'dart:io';
void main(List<String> args) {

//Definicion de variables
double temperaturaPaciente;

//Entrada

//pedir temperatura
   stdout.writeln("Ingrese la temperatura actual del paciente");
   // lee la temperatura
    temperaturaPaciente = double.parse(stdin.readLineSync()!);

//Proceso y Condicional

if(temperaturaPaciente>=38){
  print("Tiene Fiebre");
}else

//Salida  
  print("Temperatura Normal");
}