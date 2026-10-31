//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Multiples (switch - case)

import 'dart:io';

void main(List<String> args) {

/*Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución :

Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea
Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea
Tipo 3 : Fumigación contra gusanos, $80000 por hectárea.
Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea.

•Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
•Además, si la cuenta total sobrepasa $1000000 se hace acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000.
•Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.

Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de hectáreas a fumigar.

Se debe imprimir el nombre del granjero y la cuenta total.*/

  // Definicion de variables

  String? nombreGranjero;
  int tipoFumigacion, hectareas;
  double precioHectarea, subtotal, descuentoSuperficie, descuentoTotal, totalPagar, totalConDescuentoSuperficie;

  //Entrada

  stdout.writeln("Ingrese el nombre del granjero:");
  nombreGranjero = stdin.readLineSync();

  stdout.writeln("Ingrese el tipo de fumigación solicitada (1-4):");
  tipoFumigacion = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el número de hectáreas a fumigar:");
  hectareas = int.parse(stdin.readLineSync()!);

  //Condicionales//
  //   
  switch (tipoFumigacion) {
    case 1:
      precioHectarea = 50000;
      break;
    case 2:
      precioHectarea = 70000;
      break;
    case 3:
      precioHectarea = 80000;
      break;
    case 4:
      precioHectarea = 190000;
      break;
    default:
      precioHectarea = 0; // Valor por defecto en caso de entrada inválida
      break;
  }   
  subtotal = precioHectarea * hectareas;
  if (hectareas > 100) {
    descuentoSuperficie = subtotal * 0.05;
  } else {
    descuentoSuperficie = 0;
  }
    totalConDescuentoSuperficie = subtotal - descuentoSuperficie;
  if (totalConDescuentoSuperficie > 1000000) {
    descuentoTotal = (totalConDescuentoSuperficie - 1000000) * 0.10;
  } else {
    descuentoTotal = 0;
  }
  totalPagar = totalConDescuentoSuperficie - descuentoTotal;
  stdout.writeln("Nombre del granjero: $nombreGranjero");
  stdout.writeln("Total a pagar: $totalPagar");



}