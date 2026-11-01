//Juan Diego Rios
//ADSO 3410390

//Pedir al usuario su edad actual y mostrar cuántos años tendrá en el año 2050
import 'dart:io';

void main(List<String> args) {

//Definicion de variables

int edad, anoActual, anoCalculo;

//Entrada

//Pedir la edad actual de la persona
stdout.writeln("Ingrese su edad actual"); 

   // lee la edad actual del usuario
     edad= int.parse(stdin.readLineSync()!);

// Pedir año actual 

  stdout.writeln("Ingrese el año actual"); 

   // lee año actual 
     anoActual= int.parse(stdin.readLineSync()!);

//Proceso de calculo edad
    
anoCalculo = (2050-anoActual)+edad; 

//Salida|impresion en pantalla
print("La edad del cliente en el año 2050 sera de $anoCalculo años");

}