import 'dart:io';

void main(List<String> arguments) {
  /*Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras. */

  // Definicion de variables

  int clientes = 2, precioKilo = 5000;
  double descuento = 0.15, pesoCompra, valorDescuento, totalPago;

  //Contador de compras en pesos
  double acumuladoCompras = 0;

  // Entrada de datos

  for (var i = 1; i <= clientes; i++) {
    stdout.writeln("Ingrese el peso de la compra $i");
    pesoCompra = double.parse(stdin.readLineSync()!);

    valorDescuento = ((descuento * precioKilo) * pesoCompra);

    //Condicional para descuento

    if (pesoCompra > 10) {
      totalPago = ((pesoCompra * precioKilo) - valorDescuento);
    } else {
      totalPago = (pesoCompra * precioKilo);
    }
    stdout.writeln("El total a pagar por su compra es de $totalPago");
    acumuladoCompras += totalPago;
  }
  stdout.writeln("La tienda percibira un total de \$ $acumuladoCompras COP");
}
