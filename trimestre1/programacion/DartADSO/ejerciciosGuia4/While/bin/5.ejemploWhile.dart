import 'dart:io';

void main() {

  /*Obtener el promedio de calificaciones de un grupo de n alumnos */
  
  //Definición de variables y constantes

  const int totalNotas = 4; // Notas fijas por alumno
  const double notaMinima = 0.0;
  const double notaMaxima = 5.0;

  const int anchoAlumno = 8;
  const int anchoNotas = 12;
  const int anchoPromedio = 12;

  int totalAlumnos;
  int alumnoActual;
  int notaActual;
  double nota;
  double sumaNotasAlumno;
  double promedioAlumno;

  double sumaTotal = 0; // Suma de todas las notas de todos los alumnos
  int totalNotasGeneral = 0;
  double promedioGeneral;

  // Tabla de notas y promedio por alumno
  List<double> promedios = [];
  List<int> cantidadesNotas = []; // siempre será 4

  // Entrada de datos
  stdout.write("Ingrese el número de alumnos: ");
  totalAlumnos = int.parse(stdin.readLineSync()!);

  alumnoActual = 1;
  while (alumnoActual <= totalAlumnos) {
    stdout.writeln("\nAlumno $alumnoActual");
    sumaNotasAlumno = 0;
    notaActual = 1;

    // Leer las 4 notas
    while (notaActual <= totalNotas) {
      while (true) {
        stdout.write("  Nota $notaActual (0.0 - 5.0): ");
        nota = double.parse(stdin.readLineSync()!);
        if (nota >= notaMinima && nota <= notaMaxima) break;
        stdout.writeln("  Nota inválida. Debe estar entre 0.0 y 5.0.");
      }
      sumaNotasAlumno += nota;
      notaActual++;
    }

    // Calculo promedio del alumno
    promedioAlumno = sumaNotasAlumno / totalNotas;

    // Acumulación en promedio general
    sumaTotal += sumaNotasAlumno;
    totalNotasGeneral += totalNotas;

    // Almacenamiento de información en la tabla
    promedios.add(promedioAlumno);
    cantidadesNotas.add(totalNotas);

    alumnoActual++;
  }

  // Calculo del promedio general
  promedioGeneral = sumaTotal / totalNotasGeneral;

  String centrar(String texto, int ancho) {
    if (texto.length >= ancho) return texto;
    int espacios = ancho - texto.length;
    int izquierda = espacios ~/ 2;
    int derecha = espacios - izquierda;
    return ' ' * izquierda + texto + ' ' * derecha;
  }

  void imprimirLinea() {
    stdout.writeln(
      "+${'-' * anchoAlumno}+${'-' * anchoNotas}+${'-' * anchoPromedio}+",
    );
  }

  // Tabla de resultados
  stdout.writeln("\nPROMEDIO DE CALIFICACIONES POR ALUMNO");
  imprimirLinea();
  stdout.writeln(
    "|${centrar("Alumno", anchoAlumno)}|${centrar("N° Notas", anchoNotas)}|${centrar("Promedio", anchoPromedio)}|",
  );
  imprimirLinea();

  int indice = 0;
  while (indice < totalAlumnos) {
    String alumno = centrar((indice + 1).toString(), anchoAlumno);
    String cant = centrar(cantidadesNotas[indice].toString(), anchoNotas);
    String prom = centrar(promedios[indice].toStringAsFixed(2), anchoPromedio);
    stdout.writeln("|$alumno|$cant|$prom|");
    indice++;
  }

  imprimirLinea();
  stdout.writeln(
    "Promedio general del grupo: ${promedioGeneral.toStringAsFixed(2)}",
  );
}
