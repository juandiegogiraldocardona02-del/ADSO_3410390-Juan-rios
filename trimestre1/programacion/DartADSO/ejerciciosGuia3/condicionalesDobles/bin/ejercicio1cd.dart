import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Dobles

void main(List<String> args) {

  //Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente

  //Definicion de variables

  double num1, num2;

  //Entrada
  
  stdout.writeln("Ingresa el primer número");
  num1 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingresa el segundo número");
  num2 = double.parse(stdin.readLineSync()!);

  //Evaluar los numeros mayores, menores o iguales

  if (num1 <= num2) {
    stdout.writeln("$num1 , $num2 ");
  }else{
  (num1 > num2);
    stdout.writeln("$num2 , $num1");
  }
}
