import 'dart:io';

void main(List<String> arguments) {
  /*Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los Niñoss, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base en la sig, tabla
____________________________________
|    CATEGORIA    |      EDAD      |
|      Niñoss      |      0 – 12   |
|     Jóvenes     |     13 - 29    |
|     Adultos     |     30 - 59    |
| Adultos Mayores | 60 en adelante |
¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨
. Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoría. */

  //Definicion de variables
  int totalPersonas = 8;
int edad;
double peso;
String categoria;

// Acumuladores de peso por categoría
double sumaPesoNinos = 0;
double sumaPesoJovenes = 0;
double sumaPesoAdultos = 0;
double sumaPesoMayores = 0;

//Acumuladores de edad por categoría
int sumaEdadNinos = 0;
int sumaEdadJovenes = 0;
int sumaEdadAdultos = 0;
int sumaEdadMayores = 0;

// Contadores de personas por categoría
int contadorNinos = 0;
int contadorJovenes = 0;
int contadorAdultos = 0;
int contadorMayores = 0;

String clasificarEdad(int edad) {
  if (edad <= 12) return "Niños";
  if (edad <= 29) return "Joven";
  if (edad <= 59) return "Adulto";
  return "Mayor";
}

List<String> categorias = ["Niños", "Joven", "Adulto", "Mayor"];
Map<String, String> etiquetas = {
  "Niños": "Niños (0-12)",
  "Joven": "Jóvenes (13-29)",
  "Adulto": "Adultos (30-59)",
  "Mayor": "Adultos Mayores (60+)",
};

// for y switch contenedores en edad y peso
for (var i = 1; i <= totalPersonas; i++) {
  stdout.writeln("Persona $i - Ingrese la edad: ");
  edad = int.parse(stdin.readLineSync()!);

  stdout.writeln("Persona $i - Ingrese el peso (kg): ");
  peso = double.parse(stdin.readLineSync()!);

  categoria = clasificarEdad(edad);

  switch (categoria) {
    case "Niños":
      sumaPesoNinos += peso;
      sumaEdadNinos += edad;   // acumular edad
      contadorNinos++;
      break;
    case "Joven":
      sumaPesoJovenes += peso;
      sumaEdadJovenes += edad;
      contadorJovenes++;
      break;
    case "Adulto":
      sumaPesoAdultos += peso;
      sumaEdadAdultos += edad;
      contadorAdultos++;
      break;
    case "Mayor":
      sumaPesoMayores += peso;
      sumaEdadMayores += edad;
      contadorMayores++;
      break;
    default:
      stdout.writeln("Edad $edad inválida. Se omite esta persona.");
      i--;
      break;
  }
}

// for y switch para promedio por categoria de edad
stdout.writeln("Promedio de peso y edad por categoría:");
//
for (String cat in categorias) {
  double sumaPeso;
  int sumaEdad;   // nueva variable para edad acumulada
  int contCategoria;

  switch (cat) {
    case "Niños":
      sumaPeso = sumaPesoNinos;
      sumaEdad = sumaEdadNinos;
      contCategoria = contadorNinos;
      break;
    case "Joven":
      sumaPeso = sumaPesoJovenes;
      sumaEdad = sumaEdadJovenes;
      contCategoria = contadorJovenes;
      break;
    case "Adulto":
      sumaPeso = sumaPesoAdultos;
      sumaEdad = sumaEdadAdultos;
      contCategoria = contadorAdultos;
      break;
    case "Mayor":
      sumaPeso = sumaPesoMayores;
      sumaEdad = sumaEdadMayores;
      contCategoria = contadorMayores;
      break;
    default:
      sumaPeso = 0;
      sumaEdad = 0;
      contCategoria = 0;
  }

  if (contCategoria > 0) {
    double promPeso = sumaPeso / contCategoria;
    double promEdad = sumaEdad / contCategoria;   // cálculo de edad promedio
    stdout.writeln(
      "  + ${etiquetas[cat]}: Peso promedio: ${promPeso.toStringAsFixed(2)} kg, "
      "Edad promedio: ${promEdad.toStringAsFixed(1)} años ($contCategoria personas)",
    );
  } else {
    stdout.writeln("  + ${etiquetas[cat]}: 0 personas");
  }
}
}