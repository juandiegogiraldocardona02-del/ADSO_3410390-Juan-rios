/*El CPIC desea registrar la información de N aprendices. Para cada aprendiz se debe almacenar su código de matrícula,
 su nota final y su porcentaje de asistencia utilizando arreglos independientes (paralelos). Desarrollar una aplicación que determine e imprima:
 La lista de aprendices que aprobaron (nota mayor o igual a 3.0 y asistencia mayor o igual al 80%).
 El código y la nota del aprendiz con el promedio más alto del grupo.
  Nota: se debe declarar un arreglo de cadenas para el código, 
  un arreglo de reales para la nota final y un arreglo de enteros/reales para el porcentaje de asistencia.*/

import 'dart:io';

void main(List<String> args) {

  // Declarar arreglos paralelos

  List<String> codigos = [];
  List<double> notas = [];
  List<double> asistencias = [];
  
  // Solicitar cantidad de aprendices

  print("=== SISTEMA DE REGISTRO CPIC ===");
  print("Ingrese el número de aprendices (N):");
  int n = int.parse(stdin.readLineSync()!);
  
  // Llenar los arreglos con datos de los aprendices

  print("\n=== INGRESO DE DATOS ===");
  for (var i = 0; i < n; i++) {
    print("\n--- Aprendiz #${i + 1} ---");
    
    print("Código de matrícula:");
    String codigo = stdin.readLineSync()!;
    codigos.add(codigo);
    
    print("Nota final (0.0 - 5.0):");
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
    
    print("Porcentaje de asistencia (0 - 100):");
    double asistencia = double.parse(stdin.readLineSync()!);
    asistencias.add(asistencia);
  }
  
  // Procesar y mostrar resultados

  print("\n=== RESULTADOS ===");
  
  // 1. Lista de aprendices que aprobaron

  print("\n--- APRENDICES QUE APROBARON ---");
  print("(Nota >= 3.0 y Asistencia >= 80%)");
  bool hayAprobados = false;
  
  for (var i = 0; i < n; i++) {
    if (notas[i] >= 3.0 && asistencias[i] >= 80.0) {
      print("Código: ${codigos[i]} | Nota: ${notas[i]} | Asistencia: ${asistencias[i]}%");
      hayAprobados = true;
    }
  }
  
  if (!hayAprobados) {
    print("No hay aprendices que cumplan con los requisitos de aprobación.");
  }
  
  // 2. Aprendiz con el promedio más alto

  print("\n--- APRENDIZ CON MEJOR NOTA ---");
  double mejorNota = -1.0;
  int indiceMejor = -1;
  
  for (var i = 0; i < n; i++) {
    if (notas[i] > mejorNota) {
      mejorNota = notas[i];
      indiceMejor = i;
    }
  }
  
  if (indiceMejor != -1) {
    print("Código: ${codigos[indiceMejor]}");
    print("Nota: ${notas[indiceMejor]}");
    print("Asistencia: ${asistencias[indiceMejor]}%");
  }
  
  // Mostrar resumen completo
  
  print("\n=== RESUMEN COMPLETO ===");
  print("Total de aprendices registrados: $n");
  print("\nLista completa de aprendices:");
  print("Código\t\tNota\tAsistencia");
  print("----------------------------------------");
  for (var i = 0; i < n; i++) {
    print("${codigos[i]}\t\t${notas[i]}\t${asistencias[i]}%");
  }
}