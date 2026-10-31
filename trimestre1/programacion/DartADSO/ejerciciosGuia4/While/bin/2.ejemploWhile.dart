/*En una empresa se requiere calcular el salario semanal de cada uno de los n obreros que laboran en ella. El salario se obtiene de la sig. forma:
Si el obrero trabaja 40 horas o menos se le paga $20 por hora
Si trabaja más de 40 horas se le paga $20 por cada una de las primeras 40 horas y $25 por cada hora extra. */

import 'dart:io';

void main() {
  // Definicion de variables y constantes
  const int jornadaLaboralMinima = 40;
  const double valorHoraJornadaLaboralMinima = 20.0;
  const double valorHoraExtra = 25.0;

  int numObreros;
  int obreroActual;

  double horasTrabajadas;
  double horasOrdinarias;
  double horasExtras;
  double valorOrdinario;
  double valorExtra;
  double totalPago;

  // Listas para almacenar los resultados de cada obrero
  List<double> horasTrabajadasList = [];
  List<double> horasOrdinariasList = [];
  List<double> valorOrdinarioList = [];
  List<double> horasExtrasList = [];
  List<double> valorExtraList = [];
  List<double> totalPagoList = [];

  // Numero total de obreros
  stdout.write("Escriba el número total de obreros: ");
  numObreros = int.parse(stdin.readLineSync()!);

  // Entrada de datos para cada obrero

  obreroActual = 1;

  while (obreroActual <= numObreros) {
    stdout.write("Obrero $obreroActual - Ingrese las horas trabajadas: ");
    horasTrabajadas = double.parse(stdin.readLineSync()!);

    if (horasTrabajadas <= jornadaLaboralMinima) {
      horasOrdinarias = horasTrabajadas;
      horasExtras = 0;
      valorOrdinario = horasOrdinarias * valorHoraJornadaLaboralMinima;
      valorExtra = 0;
    } else {
      horasOrdinarias = jornadaLaboralMinima.toDouble();
      horasExtras = horasTrabajadas - jornadaLaboralMinima;
      valorOrdinario = horasOrdinarias * valorHoraJornadaLaboralMinima;
      valorExtra = horasExtras * valorHoraExtra;
    }
    totalPago = valorOrdinario + valorExtra;

    horasTrabajadasList.add(horasTrabajadas);
    horasOrdinariasList.add(horasOrdinarias);
    valorOrdinarioList.add(valorOrdinario);
    horasExtrasList.add(horasExtras);
    valorExtraList.add(valorExtra);
    totalPagoList.add(totalPago);

    obreroActual++; //Se pasa al siguiente obrero

  }

  // Anchos de columna en tabla
  const int anchoObrero = 8;
  const int anchoHorasTot = 16;
  const int anchoHorasOrd = 17;
  const int anchoValorOrd = 16;
  const int anchoHorasExt = 14;
  const int anchoValorExt = 16;
  const int anchoTotal = 14;

  // Función para centrar texto en un ancho dado

  String centrar(String texto, int ancho) {
    if (texto.length >= ancho) return texto;
    int espacios = ancho - texto.length;
    int izquierda = espacios ~/ 2;
    int derecha = espacios - izquierda;
    return ' ' * izquierda + texto + ' ' * derecha;
  }

  // Función para línea separadora
  imprimirLinea() {
    stdout.writeln(
      "+${'-' * anchoObrero}+${'-' * anchoHorasTot}+${'-' * anchoHorasOrd}+" "${'-' * anchoValorOrd}+${'-' * anchoHorasExt}+${'-' * anchoValorExt}+" "${'-' * anchoTotal}+",
    );
  }

  stdout.writeln("\nTABLA DE SALARIOS");
  imprimirLinea();

  // Encabezados centrados

  String encObrero = centrar("Obrero", anchoObrero);
  String encHorasTot = centrar("Horas laboradas", anchoHorasTot);
  String encHorasOrd = centrar("Horas Ordinarias", anchoHorasOrd);
  String encValorOrd = centrar("Valor Ordinario", anchoValorOrd);
  String encHorasExt = centrar("Horas Extras", anchoHorasExt);
  String encValorExt = centrar("Valor H. Extras", anchoValorExt);
  String encTotal = centrar("Total a Pagar", anchoTotal);

  stdout.writeln(
    "|$encObrero|$encHorasTot|$encHorasOrd|$encValorOrd|$encHorasExt|$encValorExt|$encTotal|",
  );
  imprimirLinea();

  // Datos centrados

  int indice = 0;
  while (indice < numObreros) {
    String num = centrar((indice + 1).toString(), anchoObrero);
    String hTot = centrar(
      horasTrabajadasList[indice].toStringAsFixed(1),
      anchoHorasTot,
    );
    String hOrd = centrar(
      horasOrdinariasList[indice].toStringAsFixed(1),
      anchoHorasOrd,
    );
    String vOrd = centrar(
      "\$${valorOrdinarioList[indice].toStringAsFixed(2)}",
      anchoValorOrd,
    );
    String hExt = centrar(
      horasExtrasList[indice].toStringAsFixed(1),
      anchoHorasExt,
    );
    String vExt = centrar(
      "\$${valorExtraList[indice].toStringAsFixed(2)}",
      anchoValorExt,
    );
    String total = centrar(
      "\$${totalPagoList[indice].toStringAsFixed(2)}",
      anchoTotal,
    );

    stdout.writeln("|$num|$hTot|$hOrd|$vOrd|$hExt|$vExt|$total|");
    indice++;
  }
  imprimirLinea();
}
