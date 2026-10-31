import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Dobles

void main(List<String> args) {

  //Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%

  //Definicion de variables

  double subTotal,
      totalPago,
      valorCamisa,
      descuento1,
      descuento2,
      cantidadCompra;

  //Entrada
  
  stdout.writeln("Ingrese el valor de la camisa");
  valorCamisa = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la cantidad de camisas compradas");
  cantidadCompra = double.parse(stdin.readLineSync()!);

  subTotal = (cantidadCompra * valorCamisa);

  descuento1 = (subTotal * .20);
  descuento2 = (subTotal * .10);

  totalPago = (subTotal - descuento1);

  // Condicionales

  if (cantidadCompra >= 3) {
    stdout.writeln(
      "Llevaste $cantidadCompra camisas, el valor a pagar es de \$ $totalPago COP",
    );
  } else {
    (cantidadCompra < 3);
    totalPago = (subTotal - descuento2);
    stdout.writeln(
      "Llevaste $cantidadCompra camisas, el valor a pagar es de \$ $totalPago COP",
    );
  }
}
