/* El CPIC desea registrar la información de N aprendices. Para cada aprendiz se debe almacenar su código de matrícula, su nota final y su porcentaje de asistencia utilizando arreglos independientes (paralelos). Desarrollar una aplicación que determine e imprima:La lista de aprendices que aprobaron (nota mayor o igual a 3.0 y asistencia mayor o igual al 80%).El código y la nota del aprendiz con el promedio más alto del grupo.
  Nota: se debe declarar un arreglo de cadenas para el código, un arreglo de reales para la nota final y un arreglo de enteros/reales para el porcentaje de asistencia. */
import 'dart:io';

void main(List<String> args) {
  List<String> nombreAprendices = [];
  List<int> codigoAprendices = [];
  List<double> notasFinales = [];
  List<double> porcentajeAsistencias = [];

  print("Ingrese la cantidad de aprendices");
  int cantAprendices = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < cantAprendices; i++) {
    print("Ingrese el nombre del aprendiz #${i + 1}");
    String nombre = stdin.readLineSync()!;
    nombreAprendices.add(nombre);
    print("Ingrese el codigo del aprendiz #${i + 1}");
    int codigo = int.parse(stdin.readLineSync()!);
    codigoAprendices.add(codigo);
    print("Ingrese la nota final del aprendiz #${i + 1}");
    double notaF = double.parse(stdin.readLineSync()!);
    notasFinales.add(notaF);
    print("Ingrese el porcentaje de asistencias del aprendiz #${i + 1}");
    double porcentaje = double.parse(stdin.readLineSync()!);
    porcentajeAsistencias.add(porcentaje);
  }

  for (var i = 0; i < cantAprendices; i++) {
    if (notasFinales[i] >= 3.0 && porcentajeAsistencias[i] >= 80) {
      print(
        "---¡El aprendiz ${nombreAprendices[i]} ha aprobado la competencia!--- ✔️",
      );
    } else {
      print(
        "---El aprendiz ${nombreAprendices[i]} ha desaprobado la competencia--- ✖️",
      );
    }
  }
  double notaMaxima = notasFinales[0];
  int codigoMayorNota = 0;

  for (int i = 0; i < cantAprendices; i++) {
    if (notasFinales[i] > notaMaxima) {
      notaMaxima = notasFinales[i];
      codigoMayorNota = i;
    }
  }
  print("*" * 48);
  print("---Aprendiz con el promedio más alto---");
  print("Código: ${codigoAprendices[codigoMayorNota]}");
  print("Nota Final: $notaMaxima");
}
