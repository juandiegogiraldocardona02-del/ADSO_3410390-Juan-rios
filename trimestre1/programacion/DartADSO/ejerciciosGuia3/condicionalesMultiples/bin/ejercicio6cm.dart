import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Multiples (switch - case)

void main(List<String> args) {

  /*Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene. 
  Es necesario tener en cuenta si es año bisiesto o no. */

  // Definicion de variables
  
  String? nombreMes, mes, inputAnio, mensajeBisiesto;
  int anio, dias, resto400, resto100, resto4;
  bool esBisiesto;

  // Entrada de informacion

  stdout.writeln("Ingrese el nombre del mes");
  nombreMes = stdin.readLineSync();
  mes = (nombreMes ?? '').toLowerCase();

  stdout.writeln("Ingrese el año");
  inputAnio = stdin.readLineSync();
  anio = int.tryParse(inputAnio ?? '') ?? 0;

  //Procesos

  resto4 = anio % 4;
  resto100 = anio % 100;
  resto400 = anio % 400;

  // Condicionales

  switch (resto4) {
    case 0:
      switch (resto100) {
        case 0:
          switch (resto400) {
            case 0:
              esBisiesto = true;
              break;
            default:
              esBisiesto = false;
              break;
          }
          break;
        default:
          esBisiesto = true;
          break;
      }
      break;
    default:
      esBisiesto = false;
      break;
  }

  switch (esBisiesto) {
    case true:
      mensajeBisiesto = "es bisiesto";
      break;
    case false:
      mensajeBisiesto = "NO es bisiesto";
      break;
  }

  switch (mes) {
    case 'enero':
    case 'marzo':
    case 'mayo':
    case 'julio':
    case 'agosto':
    case 'octubre':
    case 'diciembre':
      dias = 31;
      break;
    case 'abril':
    case 'junio':
    case 'septiembre':
    case 'noviembre':
      dias = 30;
      break;
    case 'febrero':

      // Switch sobre el booleano

      switch (esBisiesto) {
        case true:
          dias = 29;
          break;
        case false:
          dias = 28;
          break;
      }
      break;
    default:
      dias = -1; // Mes no válido
      break;
  }

  // Salida en pantalla

  switch (dias) {
    case -1:
      stdout.writeln(
        "Mes no válido. Por favor ingrese un nombre de mes correcto.",
      );
      break;
    default:
      stdout.writeln(
        "El mes de $mes del año $anio tiene $dias días. El año $anio $mensajeBisiesto.",
      );
  }
}
