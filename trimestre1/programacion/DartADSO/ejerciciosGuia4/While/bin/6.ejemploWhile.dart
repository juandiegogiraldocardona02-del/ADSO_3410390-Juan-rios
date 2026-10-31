import 'dart:io';

void main() {

  /*Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos */
  //Definición de variables y constantes

  const int anchoGrupo = 10;
  const int anchoCantidad = 10;
  const int anchoPromedio = 12;

  int totalAlumnos;
  int alumnoActual;
  int edad;
  String genero;

  // Acumuladores de edades
  int sumaEdadHombres = 0;
  int sumaEdadMujeres = 0;
  int sumaEdadTotal = 0;

  // Contadores de personas
  int contHombres = 0;
  int contMujeres = 0;

  // Promedios
  double promedioHombres = 0;
  double promedioMujeres = 0;
  double promedioGeneral = 0;

  // Entrada de datos

  stdout.write("Ingrese el número total de alumnos: ");
  totalAlumnos = int.parse(stdin.readLineSync()!);

  alumnoActual = 1;
  while (alumnoActual <= totalAlumnos) {
    stdout.write("\nAlumno $alumnoActual - Ingrese el género (H/M): ");
    genero = stdin.readLineSync()!.toLowerCase();

    // Validar género
    while (genero != 'h' && genero != 'm') {
      stdout.write("Género no válido. Ingrese H para hombre o M para mujer: ");
      genero = stdin.readLineSync()!.toLowerCase();
    }

    stdout.write("Ingrese la edad: ");
    edad = int.parse(stdin.readLineSync()!);

    // Acumular según género
    if (genero == 'h') {
      sumaEdadHombres += edad;
      contHombres++;
    } else {
      sumaEdadMujeres += edad;
      contMujeres++;
    }

    sumaEdadTotal += edad;
    alumnoActual++;
  }

  // Calculo de promedios
  if (contHombres > 0) {
    promedioHombres = sumaEdadHombres / contHombres;
  }
  if (contMujeres > 0) {
    promedioMujeres = sumaEdadMujeres / contMujeres;
  }
  if (totalAlumnos > 0) {
    promedioGeneral = sumaEdadTotal / totalAlumnos;
  }

  String centrar(String texto, int ancho) {
    if (texto.length >= ancho) return texto;
    int espacios = ancho - texto.length;
    int izquierda = espacios ~/ 2;
    int derecha = espacios - izquierda;
    return ' ' * izquierda + texto + ' ' * derecha;
  }

  void imprimirLinea() {
    stdout.writeln(
      "+${'-' * anchoGrupo}+${'-' * anchoCantidad}+${'-' * anchoPromedio}+",
    );
  }

  // Tabla de resultados
  stdout.writeln("\nPROMEDIO DE EDADES POR GÉNERO");
  imprimirLinea();
  stdout.writeln(
    "|${centrar("Género", anchoGrupo)}|${centrar("Cantidad", anchoCantidad)}|${centrar("Promedio", anchoPromedio)}|",
  );
  imprimirLinea();

  stdout.writeln(
    "|${centrar("Hombres", anchoGrupo)}|${centrar(contHombres.toString(), anchoCantidad)}|${centrar(promedioHombres.toStringAsFixed(2), anchoPromedio)}|",
  );
  stdout.writeln(
    "|${centrar("Mujeres", anchoGrupo)}|${centrar(contMujeres.toString(), anchoCantidad)}|${centrar(promedioMujeres.toStringAsFixed(2), anchoPromedio)}|",
  );
  stdout.writeln(
    "|${centrar("General", anchoGrupo)}|${centrar(totalAlumnos.toString(), anchoCantidad)}|${centrar(promedioGeneral.toStringAsFixed(2), anchoPromedio)}|",
  );
  imprimirLinea();
}
