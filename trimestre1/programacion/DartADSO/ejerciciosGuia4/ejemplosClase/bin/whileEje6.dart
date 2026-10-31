import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*En el procesamiento del café, el control térmico es vital. Escribe un programa que simule el monitoreo de temperatura de una máquina durante el proceso de tostión. La temperatura inicial es de 180°C y debe aumentar progresivamente una cantidad de grados específica y que será aleatoria hasta alcanzar el punto ideal de tostión a 200°C.

Se debe consultar la manera de generar un número aleatorio en Dart */

  //Definicion de variables

  //Definicion de variables
  double  temperaturaActual;
  final double temperaturaIdeal = 200.0;
  double incremento;
  int paso = 0;
  Random rng = Random();

  print("Ingrese la temperatura actual de la maquina de tostión");
  temperaturaActual= double.parse(stdin.readLineSync()!);

  while (temperaturaActual < temperaturaIdeal) {
    paso++; // Incrementar el contador de pasos

    // Generar incremento aleatorio
    incremento = 2.0 + rng.nextDouble() * 10.0;

    // Verificar que no se sobrepase el límite máximo de 200°C
    if (temperaturaActual + incremento > temperaturaIdeal) {
      incremento = temperaturaIdeal - temperaturaActual;
    }
    temperaturaActual += incremento;
    stdout.writeln(
      'Paso $paso: +${incremento.toStringAsFixed(1)}°C -> Temperatura: ${temperaturaActual.toStringAsFixed(1)}°C',
    );
  }

  // Salida en pantalla
  stdout.writeln('\n========== PROCESO COMPLETADO ==========');
  stdout.writeln(
    'Temperatura final: ${temperaturaActual.toStringAsFixed(1)}°C',
  );
  stdout.writeln('Total de pasos: $paso');
  stdout.writeln('==========================================');
}
