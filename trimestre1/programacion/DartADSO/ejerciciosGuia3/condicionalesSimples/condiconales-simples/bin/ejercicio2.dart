import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {
  
  /*La compañía de seguros de vida atlas se va a cambiar de domicilio y por lo tanto pone en venta su terreno pero no tiene una idea del valor del terreno, entonces solicita al departamento de sistemas que le desarrolle un algoritmo con la finalidad de que calcule e imprima el precio del terreno del cual se tiene los siguientes datos: largo, ancho y precio por metro cuadrado, si el terreno tiene más de 400 metros cuadrados se hace un descuento del 10%. */

  //Definicion de variables

  double largo, ancho, precioMetro, descuento, medidaTerreno, pagoTerreno;

  //Entrada de datos

  stdout.writeln("Ingrese la medida del largo de terreno");
  largo = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese la medida del ancho del terreno");
  ancho = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el valor de precio por metro, del terreno");
  precioMetro = double.parse(stdin.readLineSync()!);

  //Proceso
  medidaTerreno = (largo * ancho);

  stdout.writeln(
    "El terreno tiene una medida de $medidaTerreno metros cuadrados",
  );

  pagoTerreno = (medidaTerreno * precioMetro);
  descuento = pagoTerreno * 0.10;

  if (medidaTerreno > 400) {
    pagoTerreno = (pagoTerreno - descuento);
  }
  pagoTerreno;

  // Salida en pantalla

  stdout.writeln("El terreno tiene un valor de $pagoTerreno");
}
