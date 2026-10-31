import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {
  
  /*Dado el monto de una compra calcular el descuento considerado:
•Descuento es 20% si el monto es mayor a 20000 pesos.
•Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
•no hay descuento si el monto es menor o igual a 10000 pesos.*/

  //Definicion de variables

  double valorCompra, valorDescuento1, valorDescuento2, totalCompra;

  //Entrada

  stdout.writeln("Ingrese el valor de la compra");
  valorCompra = double.parse(stdin.readLineSync()!);

  valorDescuento1 = valorCompra * 0.20;
  valorDescuento2 = valorCompra * 0.10;

  //Condicionales

  if (valorCompra > 20000) {
    totalCompra = (valorCompra - valorDescuento1);
    stdout.writeln(
      "El valor de compra es de \$ $valorCompra COP, recibes un descuento de \$ $valorDescuento1. El total a pagar es de \$ $totalCompra",
    );
  } else if (valorCompra > 10000 && valorCompra <= 20000) {
    totalCompra = (valorCompra - valorDescuento2);
    stdout.writeln(
      "El valor de compra es de \$ $valorCompra COP, recibes un descuento de \$ $valorDescuento2. El total a pagar es de \$ $totalCompra",
    );
  } else if (valorCompra <= 10000) {
    stdout.writeln("El total a pagar es de \$ $valorCompra");
  }
}
