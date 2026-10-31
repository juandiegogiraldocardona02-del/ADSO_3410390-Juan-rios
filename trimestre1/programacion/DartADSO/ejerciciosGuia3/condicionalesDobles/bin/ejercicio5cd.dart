import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Dobles

void main(List<String> args) {

  //Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2.

  //Definicion de variables

  double descuentoRodillos,
      descuentoBrochas,
      precioBrocha,
      precioRodillo,
      descuentoContado,
      subTotal;
  int cantidadBrochas, cantidadRodillos, idContado, idcredito, metodoPago;

  idContado = 1;
  idcredito = 2;

  cantidadBrochas = 10;
  cantidadRodillos = 8;

  precioBrocha = 700;
  precioRodillo = 1200;

  descuentoRodillos = ((cantidadRodillos * precioRodillo) * 0.15);
  descuentoBrochas = ((cantidadBrochas * precioBrocha) * 0.20);

  descuentoContado = 0.07;

  subTotal =
      (((cantidadBrochas * precioBrocha) - descuentoBrochas) +
      ((cantidadRodillos * precioRodillo) - descuentoRodillos));

  //Entrada
  
  stdout.writeln(
    "Seleccione el metodo de pago 1 para pago de contado, 2 para pago a credito",
  );
  metodoPago = int.parse(stdin.readLineSync()!);

  // Condicionales

  if (metodoPago == idContado) {
    subTotal = (subTotal - (subTotal * descuentoContado));

    stdout.writeln("El total a pagar es de \$$subTotal COP");
  } else {
    (metodoPago == idcredito);
    subTotal =
        (((cantidadBrochas * precioBrocha) - descuentoBrochas) +
        ((cantidadRodillos * precioRodillo) - descuentoRodillos));
    stdout.writeln("El total a pagar es de \$$subTotal COP");
  }
}