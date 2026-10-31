import 'dart:math';
import 'dart:io';

//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales Multiples (switch - case)

void main(List<String> args) {

  /*. Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:

    val               Num
   100*v               1
   100^v               2
   100/v               3
   0          cualquier otro numero

   */

  // Definicion de variables

  double resultado;
  int valorV, num;
  
  //Entrada de informacion

  stdout.writeln("Ingrese un numero de su eleccion (1,2,3)");
  num = int.parse(stdin.readLineSync()!);

  stdout.writeln("Ingresa el valor de V");
  valorV = int.parse(stdin.readLineSync()!);

  //Condicional Multiple

  switch (num) {
    case 1:
      resultado = (100 * valorV).toDouble();
      break;
    case 2:
      resultado = pow(100, valorV).toDouble();
    case 3:
      resultado = (100 / valorV);
      break;
    default:
      resultado = 0;
      break;
  }
  stdout.writeln("El resultado de la operacion es $resultado ");
}
