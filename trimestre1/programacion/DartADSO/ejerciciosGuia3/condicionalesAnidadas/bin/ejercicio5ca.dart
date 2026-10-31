import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {

  /* Una frutería ofrece las manzanas con descuento según la siguiente tabla:

NUM. DE KILOS COMPRADOS  % DESCUENTO
         x <= 2               0
       2 < x >= 5             10   
      5 < x >= 10             15
        x > 10                20
  
Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo vale $1300.*/

  //Definicion de variables

  double kilosCompra,
      precioKilo,
      descuento1,
      descuento2,
      descuento3,
      descuento4,
      totalPago;

  //Entrada
  
  stdout.writeln("Ingrese la cantidad de kilos que el cliente desea comprar");
  kilosCompra = double.parse(stdin.readLineSync()!);

  precioKilo = 1300;

  descuento1 = (precioKilo * kilosCompra * 0.0);
  descuento2 = (precioKilo * kilosCompra * 0.10);
  descuento3 = (precioKilo * kilosCompra * 0.15);
  descuento4 = (precioKilo * kilosCompra * 0.20);

  //Condicionales

  if (kilosCompra <= 2) {
    totalPago = (kilosCompra * precioKilo) - descuento1;
    stdout.writeln(
      "El total a pagar por $kilosCompra kilos de manzana es de \$ $totalPago.",
    );
  } else if (kilosCompra > 2 && kilosCompra <= 5) {
    totalPago = (kilosCompra * precioKilo) - descuento2;
    stdout.writeln(
      "El total a pagar por $kilosCompra kilos de manzana es de \$ $totalPago.",
    );
  } else if (kilosCompra > 5 && kilosCompra <= 10) {
    totalPago = (kilosCompra * precioKilo) - descuento3;
    stdout.writeln(
      "El total a pagar por $kilosCompra kilos de manzana es de \$ $totalPago.",
    );
  } else if (kilosCompra > 10) {
    totalPago = (kilosCompra * precioKilo) - descuento4;
    stdout.writeln(
      "El total a pagar por $kilosCompra kilos de manzana es de \$ $totalPago.",
    );
  }
}
