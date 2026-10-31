//Juan Diego Rios
//ADSO 3410390

//Pedir dos números 
//y mostrar el resultado de restarle 
//el menor al mayor.

//Definicion de variables
import 'dart:io';

void main(List<String> args) {

  //Definicion de variables
  double num1;
  double num2;
  double proceso;

  //Entrada

  //num1
  stdout.write("Ingrese el primer numero ");

  //leer numero 1
    num1 = double.parse(stdin.readLineSync()!);

  //num2
  stdout.write("Ingrese el segundo numero ");

  //leer numero 2
    num2 = double.parse(stdin.readLineSync()!);

  //Proceso y Condicional

  if(num1>=num2){
    proceso = (num1-num2);
  }else{
       proceso = (num2 - num1);       
    } 

  //Salida en pantalla
  
  print("El resultado de restar el numero mayor y el menor es $proceso");
}