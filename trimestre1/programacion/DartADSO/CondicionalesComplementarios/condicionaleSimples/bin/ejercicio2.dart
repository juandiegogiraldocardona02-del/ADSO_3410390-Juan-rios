import 'dart:io';
void main(List<String> arguments) {
/* Una finca de café orgánico en Supía liquida el pago diario a sus recolectores 
multiplicando los kilos recolectados por el precio del kilo. Si el recolector logra 
entregar más de 50 kg en el día y el nivel de impurezas es menor al 5%, se le otorga 
un bono adicional del 10% sobre su pago total. Construir un algoritmo que solicite 
los kilos, el porcentaje de impurezas y el precio por kilo, calculando el pago final.*/

  // Definicion de variables

  double kilosRecolectados,
      precioKilo,
      nivelImpureza,
      pagoBase,
      pagoFinal,
      bono;

  stdout.writeln("Ingrese el total de kilos recolectados");
  kilosRecolectados = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el precio del kilo");
  precioKilo = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el nivel de impreza");
  nivelImpureza = double.parse(stdin.readLineSync()!);

  //Procesos

  pagoBase = (kilosRecolectados * precioKilo);
  pagoFinal = pagoBase;

  if (kilosRecolectados > 50 && nivelImpureza < 5) {
    bono = (pagoBase * 0.10);
    pagoFinal = (pagoBase * bono);

    stdout.writeln(
      "El empleado recolecto un total de $kilosRecolectados kilos, el pago es de \$ $pagoFinal COP",
    );
  }
}
