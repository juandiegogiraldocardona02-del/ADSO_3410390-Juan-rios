import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {
  
  /* En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha promoción consiste en lo siguiente:
Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la compra.*/

  //Definicion de variables

  double cantidadCompra, totalCompra, promo1, promo2, promo3;

  // Entrada

  stdout.writeln("Ingrese el total de llantas a comprar");
  cantidadCompra = double.parse(stdin.readLineSync()!);

  promo1 = 90000;
  promo2 = 80000;
  promo3 = 70000;

  //Condicionales

  if (cantidadCompra < 5) {
    totalCompra = (cantidadCompra * promo1);
    stdout.writeln(
      "El total a pagar por $cantidadCompra llantas es de \$ $totalCompra. el precio unitario es de \$ $promo1",
    );
  } else if (cantidadCompra >= 5 && cantidadCompra <= 10) {
    totalCompra = (cantidadCompra * promo2);
    stdout.writeln(
      "El total a pagar por $cantidadCompra llantas es de \$ $totalCompra. el precio unitario es de \$ $promo2",
    );
  } else if (cantidadCompra > 10) {
      totalCompra = (cantidadCompra * promo3);
      stdout.writeln(
        "El total a pagar por $cantidadCompra llantas es de \$ $totalCompra. el precio unitario es de \$ $promo3",
      );
    }
  }

