import 'dart:io';

void main(List<String> arguments) {
/*Un concesionario vial necesita calcular la tarifa de un peaje. El costo base depende 
del tipo de vehículo: 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula). 

Sin embargo, para los buses y camiones, se debe cobrar un valor adicional por cada eje 
que tenga el vehículo. 

Solicite al usuario el tipo de vehículo y el número de ejes. 
Utilice un switch para determinar la tarifa. Las motos pagan tarifa plana de $5.000 y 
los autos $10.000. Los buses pagan $15.000 + $2.000 por cada eje. Los camiones 
pagan $20.000 + $5.000 por cada eje. Muestre el total a pagar. */

  //Definicion de variables

  int totalPago,
      tipoVehiculo,
      numeroEjes;

  //Entrada de informacion

  stdout.writeln(
    "Ingrese el tipo de vehiculo ( 1 (Moto), 2 (Automóvil), 3 (Bus), 4 (Camión/Tractomula))",
  );
  tipoVehiculo = int.parse(stdin.readLineSync()!);

  //Condicionales y salida en pantalla 

  switch (tipoVehiculo) {
    case 1:
      totalPago = 5000;      
      break;
    case 2:
      totalPago = 10000;      
      break;
    case 3:
    stdout.writeln("Cual es el numero de ejes del vehiculo");
    numeroEjes = int.parse(stdin.readLineSync()!);
      totalPago = 15000 + 2000 * numeroEjes;      
      break;
    case 4:
    stdout.writeln("Cual es el numero de ejes del vehiculo");
    numeroEjes = int.parse(stdin.readLineSync()!);
      totalPago = 20000 + 5000 * numeroEjes;      
      break;
    default:
      totalPago = 0;
      stdout.writeln("Indique un tipo de vehiculo valido");
      break;
  }
  if (tipoVehiculo >= 1 && tipoVehiculo <= 4){
    stdout.writeln("El total a pagar por el peaje es de \$ $totalPago COP");
  }
}
