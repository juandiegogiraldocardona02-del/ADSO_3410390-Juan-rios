import 'dart:io';

void main(List<String> arguments) {
/*Un propietario necesita calcular el impuesto anual de su vehículo. Las normativas 
fiscales establecen que los vehículos cuyo avalúo comercial supere los 
$150.000.000 (considerados de gama alta o lujo) deben pagar una tarifa del 2.5% 
sobre dicho valor. Por el contrario, los vehículos con un avalúo igual o menor a este 
límite pagan una tarifa del 1.5%. Solicite la marca/modelo del vehículo y su avalúo 
comercial actual. Determine cuál es el porcentaje aplicado y calcule el valor total del 
impuesto a pagar este año. */

  //Definicion de variables

  double valorVehiculo, impuestoAnual, porcentajeImpuesto, tarifa;
  String? marca;
  int modelo;

  //Entrada

  stdout.writeln("Ingrese la marca del vehiculo");
  marca = stdin.readLineSync();

  stdout.writeln("Ingrese el modelo del vehiculo");
  modelo = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el valor del vehiculo");
  valorVehiculo = double.parse(stdin.readLineSync()!);

  if (valorVehiculo > 150000000) {
    tarifa = 0.025;
    porcentajeImpuesto = valorVehiculo * tarifa;
  } else {
    tarifa = 0.015;
    porcentajeImpuesto = valorVehiculo * tarifa;
  }
  impuestoAnual = valorVehiculo + porcentajeImpuesto;

  stdout.writeln("La marca del marca del vehiculo es $marca, el modelo es del año $modelo; la tafifa aplicada es de $tarifa");
  stdout.writeln("El impuesto es de $porcentajeImpuesto");
  stdout.writeln("el total a pagar del impuesto anual es de $impuestoAnual");
}
