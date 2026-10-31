import 'dart:io';

void main(List<String> arguments) {
  /*Para un módulo del proyecto de identificación física y digital (IndustID), necesitas validar un PIN de seguridad de 4 dígitos.
 Escribe un programa que simule el ingreso de contraseñas de un usuario. Mientras el PIN ingresado sea incorrecto, 
 el sistema debe denegar el acceso */

  //Definicion de variables

  String pinCorrecto = "9220";
  String pinIngresado;
  bool accesoConcedido = false;
  int intentos = 0;

  while (accesoConcedido == false && intentos < 3) {
    print("Ingrese la contraseña de acceso");
    pinIngresado = stdin.readLineSync()!;
    intentos++;
    if (pinIngresado == pinCorrecto) {
      print("Acceso concedido, puede ingresar");
      accesoConcedido == true;
    } else {
      print("El pin ingresado es incorrecto");
    }

    if (intentos > 2) {
      print("Haz excedido el numero de intentos");
    }
  }
}
