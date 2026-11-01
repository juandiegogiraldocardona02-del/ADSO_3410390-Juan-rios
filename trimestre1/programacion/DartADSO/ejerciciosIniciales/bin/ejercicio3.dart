//Juan Diego Rios
//ADSO 3410390

//Hacer un algoritmo que lea el nombre de un conductor
// la distancia recorrida (km) 
//y el tiempo empleado (horas) para 
//mostrar la velocidad promedio. 

import 'dart:io';

void main(List<String> args) {

//Definicion de variables

String? nombre;
double distancia, tiempo, velocidad;

//Entrada

//Pedir nombre del usuario 
  stdout.writeln("Ingrese su nombre"); 

   // lee el nonbre del usuario
     nombre= stdin.readLineSync()!;

//Distancia recorrida

    stdout.writeln("Ingrese la distancia recorrida"); 

    // lee la temperatura en grador celcius
      distancia =  double.parse(stdin.readLineSync()!);

//Tiempo usado para el recorrido

   stdout.writeln("Ingrese el tiempo usado para el recorrido"); 

    // lee el tiempo usado para el recorrido
      tiempo =  double.parse(stdin.readLineSync()!);

// Proceso de calculo de velocidad

 velocidad = distancia/tiempo;

 // Salida, para mostrar en pantalla

 print("El atleta $nombre recorrio $distancia kiometros en $tiempo horas. Su velocidad promedio fue de $velocidad Km/hora");
}