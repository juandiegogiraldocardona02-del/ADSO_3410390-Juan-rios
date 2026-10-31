import 'dart:io';

void main(List<String> args) {
  /*Genere un menu que permita realizar las siguientes operaciones */
  int opcion = 0;
  double num1;
  double num2;
  double division = 0;

  do {
    print("Menu calculadora");
    print("1.Suma");
    print("2.Resta");
    print("3.Multiplicacion");
    print("4.Division");
    print("5.Salir");
    print("-------");
    print("Ingrese la opcion deseada");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Ingrese el valor del numero 1 a sumar");
        num1 = double.parse(stdin.readLineSync()!);

        print("Ingrese el valor del numero 2 a sumar");
        num2 = double.parse(stdin.readLineSync()!);

        double suma = num1 + num2;
        print("El vlaor de la suma es $suma");
        break;
      case 2:
        print("Ingrese el valor del numero 1 a restar");
        num1 = double.parse(stdin.readLineSync()!);

        print("Ingrese el valor del numero 2 a restar");
        num2 = double.parse(stdin.readLineSync()!);

        double resta = num1 - num2;
        print("El valor de la resta es $resta");

        if (num1 >= num2) {
          resta = num1 - num2;
        } else {
          resta = num2 - num1;
        }
        print("El valor de la resta es $resta");

        break;
      case 3:
        print("Ingrese el valor del numero 1 a multiplicar");
        num1 = double.parse(stdin.readLineSync()!);

        print("Ingrese el valor del numero 2 a multiplicar");
        num2 = double.parse(stdin.readLineSync()!);

        double multiplicacion = num1 * num2;
        print("El vlaor de la multiplicar es $multiplicacion");
        break;
      case 4:
        print("Ingrese el valor del numero 1 a dividir");
        num1 = double.parse(stdin.readLineSync()!);

        print("Ingrese el valor del numero 2 a dividir");
        num2 = double.parse(stdin.readLineSync()!);

        if (num2 == 0) {
          print("Error en la operacion, numero indeterminado");
        }
        division = num1 / num2;

        print("La division es $division");
        break;
      case 5:
        print("Haz salido del mennú");
        break;
      default:
        print("Opcion incorrecta");
        break;
    }
  } while (opcion != 5);
}
