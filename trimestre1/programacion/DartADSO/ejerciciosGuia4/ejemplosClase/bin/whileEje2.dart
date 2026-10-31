void main(List<String> arguments) {
  /*Aprendices del programa ADSO que ingresan al laboratorio. Escribe un programa en Dart que asigne e imprima los numeros de turno del 1 al 5 utilizando un bucle WHILE */

  // Definicion de variables

  int turno = 1;
  int limiteTurnos = 5;

  //Salida en pantalla ára el usuario

  print("Sistema de registro CPIC");

  //Codicion para el ciclo

  while (turno <= limiteTurnos) {
    //Se le indica al usuario el numero de turno que se le asigno

    print("Se ha asignado el turno # $turno");

    //El contador incrementa cada vez que se toma un turno

    turno++;
  }
  print("Se han asignado todos los turnos disponibles");
}
