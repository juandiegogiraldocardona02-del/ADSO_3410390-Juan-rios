import "dart:io";

void main(List<String> arguments) {
  /* El CPIC desea registrar la información de N aprendices. Para cada aprendiz se debe almacenar su código de matrícula, su nota final y su porcentaje de asistencia utilizando arreglos independientes (paralelos). Desarrollar una aplicación que determine e imprima:La lista de aprendices que aprobaron (nota mayor o igual a 3.0 y asistencia mayor o igual al 80%).El código y la nota del aprendiz con el promedio más alto del grupo.
  Nota: se debe declarar un arreglo de cadenas para el código, un arreglo de reales para la nota final y un arreglo de enteros/reales para el porcentaje de asistencia. */

  int numAprendices;
  String codigoMatricula;
  double nota;
  double porcentajeAsistencia;
  String nombreAprendiz;
  int aprobados = 0;
  int desaprobados = 0;
  double notaMax = 0;

  List<String> codigos = [];
  List<double> notas = [];
  List<double> porcentajeAsistencias = [];
  List<String> nombres = [];

  stdout.write("Ingrese el número de aprendices: ");
  numAprendices = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < numAprendices; i++) {
    stdout.write("Ingrese el código de matrícula del aprendiz ${i + 1}: ");
    codigoMatricula = stdin.readLineSync()!;
    codigos.add(codigoMatricula);

    stdout.write("Ingrese el nombre del aprendiz ${i + 1}: ");
    nombreAprendiz = stdin.readLineSync()!;
    nombres.add(nombreAprendiz);

    stdout.write("Ingrese la nota final del aprendiz ${nombres[i]}: ");
    nota = double.parse(stdin.readLineSync()!);

    if (nota >= 3.0 && nota <= 5.0) {
      notas.add(nota);
      aprobados++;
    } else {
      desaprobados++;
    }

    stdout.write(
      "Ingrese el porcentaje de asistencia del aprendiz ${nombres[i]}: ",
    );
    porcentajeAsistencia = double.parse(stdin.readLineSync()!);

    print(
      "Aprediz ${nombres[i]} ha asistido un total de $porcentajeAsistencia% de todo el curso.",
    );

    if (porcentajeAsistencia >= 80 && porcentajeAsistencia <= 100) {
      porcentajeAsistencias.add(porcentajeAsistencia);
      print("Requisito de asistencia: Aprobado");
    } else {
      print("Requisito de asistencia: No Aprobado");
    }

    for (var i = 0; i < numAprendices; i++) {
      if (notas[i] > notaMax) {
        notaMax = notas[i];
      }
    }
  }
  print("===Resultados===");
  print("Aprobados: $aprobados");
  print("No Aprobados: $desaprobados");
  print("El promedio más alto del grupo es: $notaMax");
  print(" ");

  for (var i = 0; i < nombres.length; i++) {
    if (notas[i] >= 3.0 && notas[i] <= 5.0 && porcentajeAsistencias[i] >= 80) {
      print("Aprendiz ${nombres[i]} ha aprobado.");
      print("Código: ${codigos[i]}");
      print("Nota: ${notas[i]}");
      print("Porcentaje de asistencia: ${porcentajeAsistencias[i]}");
    } else if (notas[i] < 3.0 || porcentajeAsistencias[i] < 80) {
      print("Aprediz ${nombres[i]} NO ha aprobado.");
      print("Código: ${codigos[i]}");
      print("Nota: ${notas[i]}");
      print("Porcentaje de asistencia: ${porcentajeAsistencias[i]}");
    }
  }
}