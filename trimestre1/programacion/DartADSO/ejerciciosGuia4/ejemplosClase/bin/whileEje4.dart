import 'dart:io';

void main(List<String> arguments) {
/*3. Una persona quiere comprarse una moto que cuesta 2,000,000 pesos. Cada semana logra guardar x cantidad de dinero pesos en su alcancía.
Utiliza un bucle while para calcular y mostrar cuántas semanas necesita ahorrar para alcanzar o superar la meta de su juguete. */
  double valorMoto = 2000000;
  double ahorroSemanal;
  double ahorroTotal = 0;
  int numeroSemanas = 0;

  while (ahorroTotal < valorMoto) {
    print("ingrese el valor ahorrado en la semana #${numeroSemanas + 1}");

    ahorroSemanal = double.parse(stdin.readLineSync() ?? "");
    while (ahorroSemanal < 0) {
      print("el ahorro no puede ser negativo");
      print(
        "ingrese de nuevo el valor ahorado en la semana #${numeroSemanas + 1}",
      );
      ahorroSemanal = double.parse(stdin.readLineSync() ?? "");
    }
    ahorroTotal = ahorroTotal + ahorroSemanal;
    numeroSemanas++;
    if (ahorroTotal >= valorMoto) {
      print("felicidades alcanzo su meta para su moto");
    }
  }
  print(
    "se necesitaron $numeroSemanas semans y se ahorro un total de \$$ahorroTotal",
  );
}
