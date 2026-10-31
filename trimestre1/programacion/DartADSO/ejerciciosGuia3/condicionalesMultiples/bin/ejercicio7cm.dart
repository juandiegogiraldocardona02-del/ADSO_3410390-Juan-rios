import 'dart:io';

// Juan Diego Rios
// Análisis y Desarrollo de Software
// 3410390
// Condicionales Múltiples (switch - case) con tarifa escalonada

void main(List<String> args) {

  /* El costo de las llamadas internacionales depende de la zona geográfica
     y del número de minutos hablados.
     
     Tarifa:
     - Los primeros 3 minutos: precio normal (columna "Precio")
     - A partir del minuto 4 (incluido): precio reducido (columna "Precio/minuto del 4 en adelante")
     
     Tabla:
     Clave | Zona            | Precio (1-3 min) | Precio (≥4 min)
     12    | América del Norte   | 200              | 150
     15    | América Central     | 220              | 180
     18    | América del Sur     | 450              | 350
     19    | Europa              | 350              | 270
     23    | Asia                | 600              | 460
     25    | África              | 600              | 460
     29    | Oceanía             | 500              | 390
  */

  // Definición de variables

  int clave;
  double minutos;
  double costoTotal;
  double precioPrimeros3;
  double precioResto;
  double minutosTramo1;
  double minutosTramo2;

  // Entrada de datos

  stdout.writeln("Ingrese la duración de la llamada en minutos:");
  minutos = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese la clave de la zona (12, 15, 18, 19, 23, 25, 29):");
  clave = int.parse(stdin.readLineSync()!);

  // Asignación de precios según la clave usando switch

  switch (clave) {
    case 12:
      precioPrimeros3 = 200;
      precioResto = 150;
      break;
    case 15:
      precioPrimeros3 = 220;
      precioResto = 180;
      break;
    case 18:
      precioPrimeros3 = 450;
      precioResto = 350;
      break;
    case 19:
      precioPrimeros3 = 350;
      precioResto = 270;
      break;
    case 23:
    case 25:
      precioPrimeros3 = 600;
      precioResto = 460;
      break;
    case 29:
      precioPrimeros3 = 500;
      precioResto = 390;
      break;
    default:

      // Clave no válida

      stdout.writeln(
        "Error: Clave no válida. Intente con 12, 15, 18, 19, 23, 25 o 29.",
      );
      return;
  }

  // Cálculo de minutos por tramo

  if (minutos <= 3) {
    minutosTramo1 = minutos;
    minutosTramo2 = 0;
  } else {
    minutosTramo1 = 3;
    minutosTramo2 = minutos - 3;
  }

  // Cálculo del costo total

  costoTotal =
      (minutosTramo1 * precioPrimeros3) + (minutosTramo2 * precioResto);

  // Mostrar resultado
  
  stdout.writeln("\n--- RESULTADO ---");
  stdout.writeln("Duración: ${minutos.toStringAsFixed(2)} minutos");
  stdout.writeln(
    "Primeros 3 minutos: ${minutosTramo1.toStringAsFixed(2)} min x \$$precioPrimeros3 = \$${(minutosTramo1 * precioPrimeros3).toStringAsFixed(2)}",
  );
  if (minutosTramo2 > 0) {
    stdout.writeln(
      "Minutos restantes: ${minutosTramo2.toStringAsFixed(2)} min x \$$precioResto = \$${(minutosTramo2 * precioResto).toStringAsFixed(2)}",
    );
  }
  stdout.writeln(
    "Costo total de la llamada: \$${costoTotal.toStringAsFixed(2)}",
  );
}
