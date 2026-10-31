import 'dart:io';

void main(List<String> arguments) {
/* El sistema de seguridad Industri-ID realiza una validación exhaustiva para el ingreso al complejo del SENA.

a. Primer nivel: 

  Solicita el estado de la tarjeta RFID (1 para Activa, 0 para Inactiva). 
    Si está inactiva, bloquea el acceso inmediatamente sin preguntar más datos.

b. Segundo nivel: 

  Si la tarjeta está activa, solicita el rol del usuario ("instructor","administrativo" o "aprendiz").

i. Si es "instructor" o "administrativo", se le concede acceso total de 
forma inmediata (acceso 24/7).

ii. Si es "aprendiz", el sistema debe hacer una validación adicional.

c. Tercer nivel (Anidado dentro de aprendiz): 

El sistema solicita ingresar la hora actual en formato militar (0 a 23). 
Si la hora está entre las 6 y las 18 (6:00 AM a 6:00 PM), se le permite el ingreso a los ambientes de formación.
Si está fuera de ese rango, se le deniega el acceso por horario no autorizado.

Desarrolle el algoritmo utilizando condicionales anidados para resolver esta lógica de seguridad.*/

  // Definicion de variables

  int estadoTarjeta, rolUsuario, horaActual;

  stdout.writeln("Ingrese el estado de la tarjeta (1 Activa , 0 Inactiva )");
  estadoTarjeta = int.parse(stdin.readLineSync()!);

  stdout.writeln(
    "Indique su rol (1 Instructor, 2 Administrativo, 3 Aprendiz))",
  );
  rolUsuario = int.parse(stdin.readLineSync()!);

  if (estadoTarjeta == 1) {
    if (rolUsuario == 1 || rolUsuario == 2) {
      stdout.writeln("Acceso Total, Bienvenido");
    } else if (rolUsuario == 3) {
      stdout.writeln("Ingrese la hora actual en formato militar (0 a 23)");
      horaActual = int.parse(stdin.readLineSync()!);
      if (horaActual >= 6 && horaActual <= 18) {
        stdout.writeln("Acceso Permitido, Bienvenido");
      } else {
        stdout.writeln("Acceso Denegado por horario no autorizado");
      }
    } else {
      stdout.writeln("Rol no reconocido, acceso denegado");
    }
  } else if (estadoTarjeta == 0) {
    stdout.writeln("Acceso Denegado, tarjeta inactiva");
  } else {
    stdout.writeln("Estado de tarjeta no reconocido, acceso denegado");
  }
}
