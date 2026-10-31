//Juan Diego Rios
//ADSO 3410390

//Pedir una calificación alfabética (A, B, C, D) 
//y mostrar su equivalente numérico o descripción:
// A (Excelente), B (Bueno), C (Regular), D (Deficiente).

import 'dart:io';

void main() {
  String calificacion;
  String descripcion;

  stdout.write('Ingrese la calificación (A, B, C, D): ');
  calificacion = stdin.readLineSync()!;

  if (calificacion == 'A' || calificacion == 'a') {
    descripcion = 'Excelente';
  } else if (calificacion == 'B' || calificacion == 'b') {
    descripcion = 'Bueno';
  } else if (calificacion == 'C' || calificacion == 'c') {
    descripcion = 'Regular';
  } else {
    descripcion = 'Deficiente'; // para D o d
  }

  print('La calificación $calificacion equivale a: $descripcion');
}