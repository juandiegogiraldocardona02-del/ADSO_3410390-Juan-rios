import 'dart:io';

void main(List<String> arguments) {
  int cantPartidos = 14, contAcertados = 0, acertado;

  for (var i = 0; i < cantPartidos; i++) {
    print("Ingrese el resultado del partido ${i + 1}, 1 es acertado, 2 es No acertado");
    acertado = int.parse(stdin.readLineSync()!);
    if (acertado == 1) {
      cantPartidos++;
    }
    print(
      "La cantidad de partidos acertados del participante es $contAcertados",
    );
  }
}
