import 'dart:io';

void main(List<String> arguments) {
/*Una academia de música cobra $35.000 por clase individual. Si un estudiante 
inscribe entre 4 y 7 clases para el mes, recibe un 10% de descuento sobre el subtotal. 
Si inscribe 8 o más clases, se le mostrará un mensaje que tiene derecho a 2 boletas 
para un concierto. Solicite la cantidad de clases, calcule el subtotal y utilice 
condicionales para aplicar el descuento si corresponde. Muestre el total a pagar. */

  //Definicion de variables y asignciones

  double descuento, subTotal, totalPago, numClases, valorClase;
  
  //Entrada, asignaciones y procesos

  stdout.writeln("Indique el total de clases que desea tomar");
  numClases = double.parse(stdin.readLineSync()!);

  valorClase = 35000;
  subTotal = numClases * valorClase;
  descuento = ((subTotal) * 0.10);
  totalPago = (subTotal - descuento);

  if (numClases >= 4 && numClases <= 7) {
    stdout.writeln(
      "Compraste $numClases clases, recibes en descuento de \$ $descuento COP. El total a pagar es de \$ $totalPago COP",
    );
  }
  if (numClases >= 8) {
    stdout.writeln(
      "Compraste $numClases clases, recibes dos boletas para el concierto de Martin Garrix",
    );
  }
}
