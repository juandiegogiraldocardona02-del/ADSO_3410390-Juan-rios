import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {
  
  /* Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
es 2 el descuento en del 20% (solo existen dos claves).*/

  //Definicion de variables

  String? nombre;
  int clave;
  double preciOriginal, precioFinal, descuento1, descuento2;

  //Entrada

  stdout.writeln("Ingrese el nombre del producto");
  nombre = (stdin.readLineSync()!);
  stdout.writeln("Ingrese la clave del producto");
  clave = int.parse(stdin.readLineSync()!);

  preciOriginal = 10000;
  descuento1 =  0.10;
  descuento2 = 0.20;
  precioFinal = preciOriginal - descuento2;

  //Proceso y salida en pantalla

  clave == 1;
    precioFinal = (preciOriginal - (preciOriginal*descuento1));
     
  if (clave == 2) {
    precioFinal = (preciOriginal - (preciOriginal*descuento2));
  }
      print("El total a pagar por $nombre de $precioFinal");
  } 

