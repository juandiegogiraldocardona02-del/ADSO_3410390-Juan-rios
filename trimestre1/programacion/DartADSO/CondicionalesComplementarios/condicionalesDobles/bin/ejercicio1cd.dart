import 'dart:io';

void main(List<String> arguments) {
/*En una finca de café orgánico se está planificando la fertilización de los cafetos 
utilizando Silicorrector. La dosis depende directamente del nivel de acidez del suelo 
(pH). Solicite al usuario la cantidad de árboles a fertilizar y el nivel de pH del suelo. Si 
el pH es menor a 5.5 (suelo ácido), se requiere una "Dosis de choque" de 200 gramos 
por árbol. Si el pH es 5.5 o mayor, el suelo está balanceado y solo requiere una "Dosis 
de mantenimiento" de 50 gramos por árbol. Calcule y muestre la cantidad total de 
abono (en gramos y kilogramos) que se debe preparar para el lote */

  //Definicion de variables

  double phSuelo, dosisTotalGramos, dosisTotalKilos,numArboles, dosisChoque, dosisMantenimiento;

  stdout.writeln("Ingrese el numero de arboles a fertilizar");
  numArboles = double.parse(stdin.readLineSync()!);
  stdout.writeln("Ingrese el nivel de pH del suelo");
  phSuelo = double.parse(stdin.readLineSync()!);

  dosisChoque = 200;
  dosisMantenimiento = 50;

  if (phSuelo < 5.5) {
    dosisTotalGramos = numArboles * dosisChoque;
    dosisTotalKilos = dosisTotalGramos / 1000;
    stdout.writeln(
      "El nivel de pH del suelo es $phSuelo, por lo tanto se requiere una dosis de choque de $dosisChoque gramos por árbol. La cantidad total de abono a preparar es de $dosisTotalGramos gramos o $dosisTotalKilos kilogramos.",
    );
  } else {
    dosisTotalGramos = numArboles * dosisMantenimiento;
    dosisTotalKilos = dosisTotalGramos / 1000;
    stdout.writeln(
      "El nivel de pH del suelo es $phSuelo, por lo tanto se requiere una dosis de mantenimiento de $dosisMantenimiento gramos por árbol. La cantidad total de abono a preparar es de $dosisTotalGramos gramos o $dosisTotalKilos kilogramos.",
    );
  }
}
