//Juan Diego Rios
//ADSO 3410390

import 'dart:io';

void main(List<String> arguments) {
   //Hacer un algoritmo que declare una variable para el
   // nombre de un videojuego, 
   //otra para su género 
   //y otra para su precio en dólares. 

   // Declaracion de variables
  String nombreJuego, genero;
  double precio, dolares;

  //Entrada

  //Pedir nombre del juego
   stdout.writeln("Ingrese el nombre del video juego"); 

    // lee nombre del video juego
     nombreJuego= stdin.readLineSync()!;

  //Pedir genero
   stdout.writeln("Ingrese su genero"); 

    // lee genero
     genero= stdin.readLineSync()!;
  
  //Pedir valor en dolares
   stdout.writeln("Ingrese la cantidad de dinero actual"); 

    // lee valor ingresado 
     precio= double.parse(stdin.readLineSync()!);

     //Proceso
     dolares = precio*3729.27; 

   //Salida (Imprimir los datos ingresados por el usuario)

  print("El valor del juego $nombreJuego con genero $genero es de \$ $dolares dolares");
}
