import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Dobles

void main(List<String> args) {
  
  /* El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:

Porcentaje de la superficie del bosque        Tipo de árbol
                70%                                 Pino
                20%                                 Roble
                10%                                 Cedro

Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:

Porcentaje de la superficie del bosque         Tipo de árbol
                50%                                  Pino
                30%                                  Roble
                20%                                  Cedro

El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados. */

  //Definicion de variables

  double pinos1,
      roble1,
      cedro1,
      pinos2,
      cedro2,
      roble2,
      numeroPinos,
      numeroRobles,
      numeroCedros,
      hectareas,
      conversionMt2;

  //Entrada

  stdout.writeln("Ingrese el numero de hectareas de la superficie");
  hectareas = double.parse(stdin.readLineSync()!);

  hectareas > 0;
  conversionMt2 = hectareas * 10000;

  pinos1 = 0.70;
  roble1 = 0.20;
  cedro1 = 0.10;

  pinos2 = 0.50;
  roble2 = 0.30;
  cedro2 = 0.20;

  if (hectareas > 100) {
    numeroPinos = (((conversionMt2 * pinos1) / 10) * 8);
    numeroRobles = (((conversionMt2 * roble1) / 15) * 15);
    numeroCedros = (((conversionMt2 * cedro1) / 10) * 18);

    stdout.writeln(
      "En el terreno tiene una medida de $hectareas hectareas ( $conversionMt2 metros cuadrados) . Se puede sembrar $numeroPinos pinos, $numeroRobles robles y $numeroCedros cedros",
    );
  } else {
    (hectareas <= 100);
    numeroPinos = (((conversionMt2 * pinos2) / 10) * 8);
    numeroRobles = (((conversionMt2 * roble2) / 15) * 15);
    numeroCedros = (((conversionMt2 * cedro2) / 10) * 18);

    stdout.writeln(
      "En el terreno tiene una medida de $hectareas hectareas ( $conversionMt2 metros cuadrados) . Se puede sembrar $numeroPinos pinos, $numeroRobles robles y $numeroCedros cedros",
    );
  }
}