import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Dobles

void main(List<String> args) {

  /*Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000 la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.
La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada pago mensual ingresando el valor de la casa.*/

  //Definicion de variables

  double ingresosCliente, cuotaInicial, valorCasa, pagoMensual;

  //Entrada
  
  stdout.writeln("Especifique el valor de sus ingresos mensuales");
  ingresosCliente = double.parse(stdin.readLineSync()!);

  valorCasa = 120000000;

  // Condicionales

  if (ingresosCliente >= 800000) {
    cuotaInicial = (valorCasa * 0.15);
    pagoMensual = (((valorCasa - cuotaInicial) / 10) / 12);
    stdout.writeln(
      "La cuota inicial de su casa es de \$ $cuotaInicial, los pagos mensuales son de \$ $pagoMensual",
    );
  } else {
    (ingresosCliente < 800000);
    cuotaInicial = (valorCasa * 0.30);
    pagoMensual = (((valorCasa - cuotaInicial) / 7) / 12);
    stdout.writeln(
      "La cuota inicial de su casa es de \$ $cuotaInicial, los pagos mensuales son de \$ $pagoMensual",
    );
  }
}
