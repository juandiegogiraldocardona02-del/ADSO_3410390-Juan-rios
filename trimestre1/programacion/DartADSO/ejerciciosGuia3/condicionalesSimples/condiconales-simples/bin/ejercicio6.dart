import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Simples

void main(List<String> args) {

  /* En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento
      dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el
      descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%.
      Obtener cuánto dinero se le descuenta.*/

  // Definición de variables

  double valorCompra, descuento;
  int numeroCliente;

  // Entrada

  stdout.writeln("Ingrese un número entre 1 y 99");
  numeroCliente = int.parse(stdin.readLineSync()!);

  //proceso y asignacion

  valorCompra = 500000;
  descuento = valorCompra * 0.20;

  if (numeroCliente < 74) {
    descuento = valorCompra * 0.15;
  }
  
  // Salida ( muestra en pantalla el dinero que se descuenta)

  stdout.writeln(
    "El número que asignaste es $numeroCliente, el descuento aplicado es de \$$descuento",
  );
}
