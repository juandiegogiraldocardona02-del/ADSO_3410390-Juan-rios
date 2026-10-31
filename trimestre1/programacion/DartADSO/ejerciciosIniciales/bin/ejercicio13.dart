//Juan Diego Rios
//ADSO 3410390

//Leer la edad de una persona 
//y mostrar un mensaje indicando 
//si es mayor de edad 
//o menor de edad.

//Definicion de variables
import 'dart:io';

void main(List<String> args) {

//Definicion de variables
  String? edad;

//Entrada
  stdout.write("Ingrese su edad ");
  edad = stdin.readLineSync()!;

  //Proceso de validacion
  int edadNumero = int.parse(edad);

//Condicional y Salida
  if(edadNumero >= 18){
    print("Eres mayor de edad puedes ingresar");
  }else{
    print("Vuelve cuando seas mayor de edad");
  }
}