import 'dart:io';

void main(List<String> arguments) {
/*Una empresa de logística internacional requiere automatizar sus cotizaciones. 

Solicite el peso del paquete en kilogramos y el continente de destino (1: América del Norte, 2: Europa, 3: Asia). 

Cada destino tiene una tarifa diferente por kilogramo y, adicionalmente, un impuesto aduanero fijo.

a. América del Norte: $15.000 / kg + $25.000 impuesto aduanero.
b. Europa: $25.000 / kg + $40.000 impuesto aduanero.
c. Asia: $35.000 / kg + $60.000 impuesto aduanero. 

Utilice un switch para asignar estos dos valores (tarifa por kilo e impuesto) en variables. 

Al final del programa, calcule el total a pagar y muéstrelo desglosado. */

  //Definicion de variables

  double pesoPaquete, destino, tarifa, impuestoAduanero, totalPago;

  stdout.writeln("Ingrese el peso del paquete en kilogramos");
  pesoPaquete = double.parse(stdin.readLineSync()!);

  stdout.writeln(
    "Indique el destino del paquete (1 América del Norte, 2 Europa, 3 Asia)",
  );
  destino = double.parse(stdin.readLineSync()!);
  tarifa = 0;
  impuestoAduanero = 0;
  switch (destino) {
    case 1:
      tarifa = 15000;
      impuestoAduanero = 25000;
      break;
    case 2:
      tarifa = 25000;
      impuestoAduanero = 40000;
      break;
    case 3:
      tarifa = 35000;
      impuestoAduanero = 60000;
      break;
    default:
      0;
       stdout.writeln("Introduzca un destino valido");
      break;
     
  }
  if (destino >= 1 && destino <= 3) {
    totalPago = tarifa + impuestoAduanero * pesoPaquete;
    stdout.writeln("La carga tiene un peso de \$ $pesoPaquete kilogramos. ");
    stdout.writeln("El impuesto aduanero es de $impuestoAduanero. ");
    stdout.writeln("El total a pagar es de \$ $totalPago COP. ");
  }
}