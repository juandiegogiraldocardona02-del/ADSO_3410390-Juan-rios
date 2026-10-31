import 'dart:math';
import 'dart:io';

// Juan Diego Rios
// Análisis y Desarrollo de Software
// 3410390
// Condicionales Múltiples (switch - case)

void main(List<String> args) {

  //Declaración de variables al inicio
  int x;
  double resultado = 0;
  String operacion = '';

  //Entrada de datos con validación básica

  try {
    stdout.write("Ingrese el valor entero de x: ");
    x = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Error: Debe ingresar un número entero válido.");
    return;
  }

  //Cálculo mediante switch según el residuo de x/4

  switch (x % 4) {
    case 0:
      resultado = pow(x, 2).toDouble();
      operacion = 'x^2';
      break;
    case 1:
      resultado = x / 6;// División produce double
      operacion = 'x / 6';
      break;
    case 2:
      resultado = sqrt(x).toDouble();
      operacion = '√x';
      break;
    case 3:
      resultado = pow(x, 3).toDouble() + 5;
      operacion = 'x^3 + 5';
      break;
    default:
      resultado = 0;
      operacion = 'indefinida';
      print('Caso no esperado, se asigna 0');
  }

  //Salida formateada 
  
  print("El resultado de la operación $operacion con x = $x es: $resultado");
}