import 'dart:io';

void main(List<String> args) {
  /*Un inquilino ha llegado a un acuerdo para no incurrir en mora, realizando abonos parciales mensuales a una deuda 
pendiente de arrendamiento. Escribe un programa que simule el registro de abonos que se preguntarán al usuario para saldar
una deuda inicial de 500,000 pesos usando un bucle while, hasta que el saldo quede exactamente en cero.*/

  // Definicion de varibles
  double arrendamiento = 500000;
  double abonoMensual;
  double abonoTotal = 0;
  int contadorMensual = 0;
  double saldoFavor;
  double deuda;

  while (abonoTotal < arrendamiento) {
    print("Ingrese el valor del abono del mes # ${contadorMensual + 1}");
    abonoMensual = double.parse(stdin.readLineSync()!);
    while (abonoMensual < 0) {
      print("Los abonos no pueden ser negativos");
      print("Ingrese el valor del abono del mes # ${contadorMensual + 1} ");
      abonoMensual = double.parse(stdin.readLineSync()!);
    }
    abonoTotal = (abonoTotal + abonoMensual);
    contadorMensual++;
    if (abonoTotal == arrendamiento) {
      print("Haz saldado tu deuda");
    }

    if (abonoTotal > arrendamiento) {
      saldoFavor = (abonoTotal - arrendamiento);
      print("Tienes un saldoa favor de \$ $saldoFavor");
    }
    if (abonoTotal < arrendamiento) {
      deuda = ((abonoTotal - arrendamiento) * -1);
      print("Te falta \$ $deuda COP para completar tu arrendamiento");
    }
  }
}
