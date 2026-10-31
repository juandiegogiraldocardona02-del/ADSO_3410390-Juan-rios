import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {
  
  /* En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10% de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de descuento. El precio de cada computadora es de $1100000 */

  //Definicion de variables

  
  double descuento1, descuento2, descuento3, precioComputadora, totalCompra, numeroComputadoras;

  //Entrada

  stdout.writeln(
    "Ingrese el numero de computadoras que desea comprar el cliente",
  );
  numeroComputadoras = double.parse(stdin.readLineSync()!);

  precioComputadora = (1100000*numeroComputadoras);

  descuento1 = precioComputadora * 0.10;
  descuento2 = precioComputadora * 0.20;
  descuento3 = precioComputadora * 0.40;

  //Condicionales

  if (numeroComputadoras < 5) {
    totalCompra = (precioComputadora - descuento1);
    stdout.writeln(
      "El valor de la computadora es de \$ $precioComputadora COP, recibes un descuento de \$ $descuento1. El total a pagar es de \$ $totalCompra",
    );
  } else if (numeroComputadoras >= 5 && numeroComputadoras < 10) {
    totalCompra = (precioComputadora - descuento2);
    stdout.writeln(
      "El valor de la computadora es de \$ $precioComputadora COP, recibes un descuento de \$ $descuento2. El total a pagar es de \$ $totalCompra",
    );
  } else if (numeroComputadoras >= 10) {
      totalCompra = (precioComputadora - descuento3);
      stdout.writeln(
        "El valor de la computadora es de \$ $precioComputadora COP, recibes un descuento de \$ $descuento3. El total a pagar es de \$ $totalCompra",
      );
    }
  }

