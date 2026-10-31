import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Multiples (switch - case)

void main(List<String> args) {
  
  /*La empresa comercializadora Solva vende escobas, recogedores y aromatizantes, clasifica a sus clientes de acuerdo a la frecuencia de compras con las condiciones siguientes:

Si el cliente es de la categoría 1 se le descuenta el 5%
Si el cliente es de la categoría 2 se le descuenta el 8%
Si el cliente de de la categoría 3 se le descuenta el 12%
Si el cliente es de la categoría 4 se le descuenta el 15%

Cuando el cliente realiza una compra se generan los siguientes datos:

Nombre del cliente
Tipo de cliente
Cantidad comprada de escobas, recogedores y aromatizantes.

Los precios de estos elementos son.
•Escobas. 3000.
•Recogedores. 2000
•Aromatizantes. 1000

Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla:

Nombre del cliente, Subtotal a pagar, Descuento y Total a pagar.*/

  // Definicion de variables

  String? nombreCliente;
  int tipoCliente, cantidadEscobas, cantidadRecogedores, cantidadAromatizantes;
  double precioEscoba = 3000;
  double precioRecogedor = 2000;
  double precioAromatizante = 1000;
  double subtotal, descuento, totalPagar;

  //Entrada

  stdout.writeln("Ingrese el nombre del cliente:");
  nombreCliente = stdin.readLineSync();

  stdout.writeln("Ingrese el tipo de cliente (1, 2, 3 o 4):");
  tipoCliente = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la cantidad de escobas compradas:");
  cantidadEscobas = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la cantidad de recogedores comprados:");
  cantidadRecogedores = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la cantidad de aromatizantes comprados:");
  cantidadAromatizantes = int.parse(stdin.readLineSync()!);

  //Procesos

  subtotal =
      (cantidadEscobas * precioEscoba) +
      (cantidadRecogedores * precioRecogedor) +
      (cantidadAromatizantes * precioAromatizante);

  descuento = 0;

  // Condicional Multiple

  switch (tipoCliente) {
    case 1:
      descuento = subtotal * 0.05;
      break;
    case 2:
      descuento = subtotal * 0.08;
      break;
    case 3:
      descuento = subtotal * 0.12;
      break;
    case 4:
      descuento = subtotal * 0.15;
      break;
    default:
      descuento = 0;
      stdout.writeln(
        "Tipo de cliente no válido. No se aplicará ningún descuento.",
      );
      break;
  }
  totalPagar = subtotal - descuento;

  stdout.writeln(
    "Hola $nombreCliente, tus productos tienen un valor de \$ $subtotal por ser un cliente $tipoCliente recibes un descuento de \$ $descuento y el total a pagar es de \$ $totalPagar",
  );
}
