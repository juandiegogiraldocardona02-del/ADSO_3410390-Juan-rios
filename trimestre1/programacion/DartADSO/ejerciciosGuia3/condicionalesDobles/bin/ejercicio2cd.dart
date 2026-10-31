import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Dobles

void main(List<String> args) {
  
  /*Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
•Si trabaja 40 horas o menos se le paga $16 por hora
•Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra.*/

  //Definicion de variables

  double horasLaboradas, horasSemana, horasExtra, valorHora, valorHe, totalPago;

  //Entrada

  stdout.writeln("Ingrese las horas laboradas en la semana por el colaborador");
  horasLaboradas = double.parse(stdin.readLineSync()!);

  valorHora = 16;
  valorHe = 20;

  horasSemana = 40;
  horasExtra = (horasLaboradas - horasSemana);

  totalPago = ((horasSemana * valorHora) + (horasExtra * valorHe));

  // Condicionales

  if (horasLaboradas > horasSemana) {
    stdout.writeln(
      "El empleado laboró $horasLaboradas horas a la semana, se debe de pagar la suma de \$ $totalPago COP. ",
    );
  } else {
  (horasLaboradas <= horasSemana);
    totalPago = (horasLaboradas * valorHora);
    stdout.writeln(
      "El empleado laboró $horasLaboradas horas a la semana, se debe de pagar la suma de \$ $totalPago COP. ",
    );
  }
}
