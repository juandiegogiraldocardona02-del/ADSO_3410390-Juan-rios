import 'dart:io';

//Juan  Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Multiples (switch - case)

void main(List<String> args) {
/*El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el 
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una 
clave.
Construya la solución para calcular e imprimir el costo de una llamada dada la clave.
 */

  //Definicion de variables

  int clave;
  double numMinutos, totalPago;

  //Entrada

  stdout.writeln("Ingrese el total de minutos hablados por el cliente");
  numMinutos = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la clave de la zona");
  clave = int.parse(stdin.readLineSync()!);

  //Precio de minutos segun la clave

  switch (clave) {
    case 12:
      totalPago = (numMinutos * 200);
      stdout.writeln(
        "El costo de la llamada a America del Norte es de $totalPago",
      );
      break;
    case 15:
      totalPago = (numMinutos * 220);
      stdout.writeln(
        "El costo de la llamada a America del Central es de $totalPago",
      );
      break;
    case 18:
      totalPago = (numMinutos * 450);
      stdout.writeln(
        "El costo de la llamada a America del Sur es de $totalPago",
      );
      break;
    case 19:
      totalPago = (numMinutos * 350);
      stdout.writeln("El costo de la llamada a Europa es de $totalPago");
      break;
    case 23:
      totalPago = (numMinutos * 600);
      stdout.writeln("El costo de la llamada a Asia es de $totalPago");
      break;
    case 25:
      totalPago = (numMinutos * 600);
      stdout.writeln("El costo de la llamada a Africa es de $totalPago");
      break;
    case 29:
      totalPago = (numMinutos * 500);
      stdout.writeln("El costo de la llamada a Oceania es de $totalPago");
      break;
    default:
      totalPago = 0;
      break;
  }
  stdout.writeln(
    "Ingrese una clave valida para calcular el costo de la llamada",
  );
}
