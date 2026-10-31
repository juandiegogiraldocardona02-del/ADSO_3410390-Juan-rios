import 'dart:math';

void main(List<String> args) {
  /*Se requiere simular la descarga de un archivo por internet hasta que llegue al 100%.Con un numero aleatorio entre 1 y 20 debe de simularl ese porcentaje de descarga. */

  Random();
  double porcentajeDescarga = 0; //Variable de tipo acumulador
  double descarga;

  do {
    descarga = Random().nextDouble() * 20;
    //print("Porcentaje descarga ${descarga.round()}");
    porcentajeDescarga += descarga;

    if (porcentajeDescarga > 100) {
      porcentajeDescarga = 100;
    }
    print("Descargar total = ${porcentajeDescarga.toStringAsFixed(2)} ");
  } while (porcentajeDescarga < 100);
  print("El archivo se descargo exitosamente");
}
