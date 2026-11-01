//Juan Diego Rios
//ADSO 3410390

import 'dart:io';

void main(List<String> args) {

  //Crear un algoritmo que 
  //pida al usuario el nombre de una 
  //ciudad y su 
  //temperatura actual en grados Celsius, 
  //y luego los muestre. 
  
  //Definicion de variables

  String?  ciudad;
  int? temperatura;

  //Entrada

  //pedir ciudad
   stdout.writeln("Ingrese nombre de la ciudad"); 

    // lee la ciudad
     ciudad= stdin.readLineSync()!;

  //pedir temperatura
   stdout.writeln("Ingrese la temperatura actual de la ciudad"); 

    // lee la temperatura
    temperatura = int.parse(stdin.readLineSync()!);

  //Salida
  
  //Imprimir los datos ingresados por el usuario

  print("La temperatura actual en $ciudad es de $temperatura C°");

}
