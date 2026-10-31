//Juan Diego Rios
//ADSO 3410390

//Un trabajador cobra $20.000 por hora.
// Si trabaja más de 48 horas,
//las horas adicionales se pagan como "Horas Extra"
//con un recargo de $5.000 sobre el valor normal.
// Calcular su salario total.

import 'dart:io';

void main() {
  // Definición de variables
  double horasTrabajadas;
  double salarioTotal;
  double pagoNormal;
  double pagoExtra;
  
  const double valorHoraNormal = 20000;
  const double recargoExtra = 5000; // recargo adicional por hora extra
  const int limiteHoras = 48;
  
  // Entrada
  stdout.write('Ingrese la cantidad de horas trabajadas: ');
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  
  // Proceso
  if (horasTrabajadas <= limiteHoras) {
    salarioTotal = horasTrabajadas * valorHoraNormal;
  } else {
    pagoNormal = limiteHoras * valorHoraNormal;
    pagoExtra = (horasTrabajadas - limiteHoras) * (valorHoraNormal + recargoExtra);
    salarioTotal = pagoNormal + pagoExtra;
  }
  
  // Salida
  print('El empleado laboro un total de $horasTrabajadas horas a la semana, salario total es: \$${salarioTotal.toStringAsFixed(0)}');
}

