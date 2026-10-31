import 'dart:io';

void main(List<String> arguments) {
/*El sistema de seguridad Industri-ID realiza una doble validación para permitir el 
ingreso al complejo del SENA. Primero, solicita el estado de la tarjeta RFID del 
usuario (ingrese 1 para Activa, 0 para Inactiva). Si la tarjeta está activa, el sistema 
hace una segunda pregunta internamente para evaluar el rol ("instructor" o 
"aprendiz"). Si es instructor, tiene "Acceso total a todos los bloques". Si es aprendiz, 
tiene "Acceso limitado a los ambientes de formación". Si la tarjeta RFID está inactiva 
desde el principio, el sistema omite el rol y simplemente muestra "Acceso Denegado: 
Tarjeta bloqueada". */

  //Definicion de variables

  int estadoTarjeta;
  String? rol;

  //Entrada de informacion

  stdout.writeln("Ingrese el estado de la tarjeta (1.Activa, 2. Inactiva)");
  estadoTarjeta = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese su rol (aprendiz, instructor, administrativo)");
  rol = (stdin.readLineSync()!.trim().toLowerCase());

  //Condicionales y salida en pantalla

  if (estadoTarjeta == 1) {
    if (rol == "instructor") {
      stdout.writeln("Tienes acceso total a todos los bloques");
    } else if (rol == "aprendiz") {
      stdout.writeln("Tienes acceso limitado a los ambientes de formacion");
    } else if (rol == "administrativo") {
      stdout.writeln("Tienes acceso a los bloques administrativos");
    } else {
      stdout.writeln("Su rol no existe dentro del sistema");
    }
  } else {
    stdout.writeln("Acceso denegado, su tarjeta esta bloquada");
  }
}
