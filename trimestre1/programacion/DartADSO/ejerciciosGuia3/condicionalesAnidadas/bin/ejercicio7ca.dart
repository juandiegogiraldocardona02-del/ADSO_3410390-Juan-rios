import 'dart:io';
//Juan Diego Rios
//Analisis y Desarrollo de Software
//3410390
//Condicionales anidados

void main(List<String> args) {

  //Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los reste y si no que los sume.

  //Definicion de variables

  double num1, num2, multiplicacion, suma, resta;

  //Entrada
  
  stdout.writeln("Ingrese el valor del primer numero de su preferencia");
  num1 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Ingrese el valor del segundo numero de su preferencia");
  num2 = double.parse(stdin.readLineSync()!);

  //Condicionales

  if (num1 == num2) {
    multiplicacion = num1 * num2;
    stdout.writeln(
      "Los numeros son iguales, su multiplicacion da como resultado $multiplicacion",
    );
  }
  if (num1 > num2) {
    resta = num1 - num2;
    stdout.writeln(
      "El primer numero es el mayor de los dos; su resta da como resultado $resta",
    );
  } else {
    if (num2 > num1) {
      suma = num2 - num1;
      stdout.writeln(
        "El segundo numero es el mayor de los dos; su resta da como resultado $suma",
      );
    }
  }
}
