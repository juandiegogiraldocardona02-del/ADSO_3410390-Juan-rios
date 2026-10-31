import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {
  
  /* Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000
si se compran menos de 5 llantas y de $70000 si se compran 5 o más.*/

  //Definicion de variables

  double totalPago;
  double cantidadLlantas;

  //Entrada

  stdout.writeln("Ingrese la cantidad de llantas compradas por el cliente");
  cantidadLlantas = double.parse(stdin.readLineSync()!);

  totalPago = (cantidadLlantas * 70000);

  if (cantidadLlantas <= 5) {
    totalPago = (cantidadLlantas * 80000);
  }
  stdout.writeln(
    "El total a pagar por $cantidadLlantas llantas es de \$ $totalPago",
  );
}
