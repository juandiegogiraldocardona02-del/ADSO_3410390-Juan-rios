import 'dart:io';

/*El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad de México, cuantos entran con calcomanía de cada color. Conociendo el último dígito de la placa de cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:

DÍGITO | COLOR
       | 
1 o 2  | amarilla
3 o 4  | rosada
5 o 6  | roja
7 o 8  | verde
9 o 0  | azul 
*/
void main() {
  // ==================== DECLARACIÓN DE CONSTANTES ====================
  const int digitoAmarilla1 = 1;
  const int digitoAmarilla2 = 2;
  const int digitoRosada1 = 3;
  const int digitoRosada2 = 4;
  const int digitoRoja1 = 5;
  const int digitoRoja2 = 6;
  const int digitoVerde1 = 7;
  const int digitoVerde2 = 8;
  const int digitoAzul1 = 9;
  const int digitoAzul2 = 0;

  const int anchoColor = 12; // Ancho de columna para la tabla final
  const int anchoCantidad = 10;

  // Definición de variables

  int totalAutos; // Número de autos a procesar
  int autoActual; // Contador de autos (while)
  int ultimoDigito; // Último dígito de la placa ingresada

  //Contadores por color

  int contAmarilla = 0;
  int contRosada = 0;
  int contRoja = 0;
  int contVerde = 0;
  int contAzul = 0;

  // Entrada de datos
  stdout.write("Ingrese el número total de autos: ");
  totalAutos = int.parse(stdin.readLineSync()!);

  // Inicio While
  autoActual = 1;
  while (autoActual <= totalAutos) {
    stdout.write(
      "Auto $autoActual - Ingrese el último dígito de la placa (0-9): ",
    );
    ultimoDigito = int.parse(stdin.readLineSync()!);

    switch (ultimoDigito) {
      case digitoAmarilla1:
      case digitoAmarilla2:
        contAmarilla++;
        break;
      case digitoRosada1:
      case digitoRosada2:
        contRosada++;
        break;
      case digitoRoja1:
      case digitoRoja2:
        contRoja++;
        break;
      case digitoVerde1:
      case digitoVerde2:
        contVerde++;
        break;
      case digitoAzul1:
      case digitoAzul2:
        contAzul++;
        break;
      default:
        stdout.writeln("Dígito no válido. Se omite este auto.");
        autoActual--; // Repetir la entrada para este auto
    }
    autoActual++;
  }

  String centrar(String texto, int ancho) {
    if (texto.length >= ancho) return texto;
    int espacios = ancho - texto.length;
    int izquierda = espacios ~/ 2;
    int derecha = espacios - izquierda;
    return ' ' * izquierda + texto + ' ' * derecha;
  }

  void imprimirLinea() {
    stdout.writeln("+${'-' * anchoColor}+${'-' * anchoCantidad}+");
  }

  //Tabla de resultados

  stdout.writeln("\nCANTIDAD DE AUTOS POR COLOR DE CALCOMANÍA");
  imprimirLinea();
  stdout.writeln(
    "|${centrar("Color", anchoColor)}|${centrar("Cantidad", anchoCantidad)}|",
  );
  imprimirLinea();

  stdout.writeln(
    "|${centrar("Amarilla", anchoColor)}|${centrar(contAmarilla.toString(), anchoCantidad)}|",
  );
  stdout.writeln(
    "|${centrar("Rosada", anchoColor)}|${centrar(contRosada.toString(), anchoCantidad)}|",
  );
  stdout.writeln(
    "|${centrar("Roja", anchoColor)}|${centrar(contRoja.toString(), anchoCantidad)}|",
  );
  stdout.writeln(
    "|${centrar("Verde", anchoColor)}|${centrar(contVerde.toString(), anchoCantidad)}|",
  );
  stdout.writeln(
    "|${centrar("Azul", anchoColor)}|${centrar(contAzul.toString(), anchoCantidad)}|",
  );
  imprimirLinea();
}
