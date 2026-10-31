//Juan Camilo Gil Perez
//ADSO 3410390

// Hacer un algoritmo que lea la base y la altura de un triángulo y
// muestre su perímetro
// y área 

import 'dart:io';

void main(List<String> args) {

  //Definicion de variables

  double base, altura, area, perimetro, lado3;

  //Entrada

//Pedir el valor de la base del triangulo
stdout.writeln("Ingrese el valor de la base del triangulo"); 

   // lee el valor de la base
     base= double.parse(stdin.readLineSync()!);

//Pedir el valor de la altura del triangulo
  stdout.writeln("Ingrese el valor de la altura del triangulo"); 

   //  lee el valor de la altura
     altura= double.parse(stdin.readLineSync()!);
//Pedir el valor del lado 3 del triangulo
  stdout.writeln("Ingrese el valor del lado 3 del triangulo"); 

   //  lee el valor del lado 3
     lado3= double.parse(stdin.readLineSync()!);


//Procesos de calculo perimetro

perimetro = base + altura + lado3;
area = (base * altura)/2;

//Salida
  
  //calcular el perimetro del triangulo

  print("El area del triangulo es de $area cm2 y su perimetro es de $perimetro cm");
}