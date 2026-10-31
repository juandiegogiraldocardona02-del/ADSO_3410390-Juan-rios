import "dart:math";
void main(List<String> arguments) {
  /*Ejemplo 1: Se requiere simular el lanzamiento de un dado de sies caras. Se dbe lanzar el dado hasta que caiga el numero 6. En ese momento */
  int intentos = 0; //variable de tipo contador
  Random lanzamiento = Random(); //crear objeto de la clase random

  int valorDado;

  do {
    intentos++;
    print("Lanzamiento # $intentos del dado");
    valorDado = lanzamiento.nextInt(6) + 1;
    print("El valor del dado es $valorDado");
  } while (valorDado != 6); //Se lanzan los dados hasta que el valor sea seis
  print("Haz ganado con el #6 con $intentos intentos");
}
