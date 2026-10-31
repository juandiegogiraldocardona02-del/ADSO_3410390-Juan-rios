import 'dart:io';

void main(List<String> arguments) {
/* Un concesionario está cotizando el nuevo Volkswagen Nivus 2026. Primero, el 
sistema pregunta el método de pago del cliente (ingrese "contado" o "credito").

a. Si el cliente paga de contado, el sistema anida una nueva condición: si el 
valor del vehículo supera los $110.000.000, se otorga un descuento del 5%. Si 
es menor o igual, se otorga un 2%.

b. Si el cliente paga a crédito, el sistema anida una validación diferente: 

pregunta a cuántos meses es el plazo:

  Si el plazo es mayor a 60 meses, la tasa de interés mensual es del 1.5%. 

  Si es de 60 meses o menos, la tasa es del 1.2%. 

Desarrolle el algoritmo que capture el precio base del vehículo y ejecute 
la lógica correspondiente para informar al cliente las condiciones finales. */

  //Definicion de variables
  int tipoPago;
  double valorVehiculo, descuento, totalVehiculo, cuotaInteres;

  //Entrada de informacion

  stdout.writeln("Ingrese el tipo de pago (1.Contado , 2. Credito )");
  tipoPago = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el valor del vehiculo");
  valorVehiculo = double.parse(stdin.readLineSync()!);

  //Condicionales y salida en pantalla

  if (tipoPago == 1) {

    //Contado

    if (valorVehiculo > 110000000) {
      descuento = valorVehiculo * 0.05;
    } else {
      descuento = valorVehiculo * 0.02;
    }
    totalVehiculo = valorVehiculo - descuento;
    stdout.writeln(
      "El vehiculo se compra de contado y su valor es de \$ $totalVehiculo COP",
    );
  } else {
    
    // Credito

    stdout.writeln("Indicque el plazo al que desea su credito");
    double plazo = double.parse(stdin.readLineSync()!);
    double valorMensual;
    if (plazo > 60) {
      cuotaInteres = (valorVehiculo * 0.015);
      valorMensual = (valorVehiculo / plazo) + cuotaInteres;
    } else {
      cuotaInteres = (valorVehiculo * 0.012);
      valorMensual = (valorVehiculo / plazo) + cuotaInteres;
    }
    stdout.writeln(
      "El vehiculo se compra a credito a un plazo de $plazo cuotas, el valor mensual a pagar es de \$ $valorMensual COP",
    );
  }
}
