//Juan Diego Rios
//ADSO 3410390

//Pedir tres números al usuario y mostrar cuál es el menor de los tres.

import 'dart:io';

void main(List<String> args) {
  //Definicion de variables

  double num1;
  double num2;
  double num3;
  double menor;

  //Entrada

  //pedir el valor del primer numero
  stdout.writeln("Ingrese el primer numero");
  // lee el numero ingresado
  num1 = double.parse(stdin.readLineSync()!);

  //pedir el valor del segundo numero
  stdout.writeln("Ingrese el segundo numero");
  // lee el numero ingresado
  num2 = double.parse(stdin.readLineSync()!);

  //pedir el valor del tercer numero
  stdout.writeln("Ingrese el tercer numero");
  // lee el numero ingresado
  num3 = double.parse(stdin.readLineSync()!);

  //Proceso y Condicional

  if (num1 < num2 && num1 < num3) {
    menor = num1;
  } else if (num2 < num1 && num2 < num3) {
    menor = num2;
  } else {
    menor = num3;
  }
  print("El menor de los tres numeros es $menor");
}
