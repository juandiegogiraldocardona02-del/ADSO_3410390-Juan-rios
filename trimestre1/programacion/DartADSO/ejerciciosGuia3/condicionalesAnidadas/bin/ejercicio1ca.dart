import 'dart:io';
//Juan Diego Rios 
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {
  
  //Dado tres números calcular el mayor

  //Definicion de variables

  double num1, num2, num3;

  //Entrada

  stdout.writeln("Ingrese un numero de su preferencia");
  num1 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese otro numero de su preferencia");
  num2 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese otro numero de su preferencia");
  num3 = double.parse(stdin.readLineSync()!);

  //Condicionales

  if (num1 > num2 && num1 > num3) {
    stdout.writeln("El numero mayor es $num1");
  } else if (num2 > num1 && num2 > num3) {
    stdout.writeln("El numero mayor es $num2");
  } else if (num3 > num1 && num3 > num2) {
    stdout.writeln("El numero mayor es $num3");
  }
}
