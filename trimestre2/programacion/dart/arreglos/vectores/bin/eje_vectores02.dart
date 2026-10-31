import 'dart:io';

void main(List<String> args) {
  // Solicitar datos al usuario para llenar el vector
  // Ingresar 10 números a un vector de enteros

  List<int> numeros = []; // Declaración vector enteros
  int num;
  // Llenar todos los elementos del vector con datos del usuario
  for (var i = 0; i < 10; i++) {
    print("Ingrese el elemento #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    // Agregar el número al vector
    numeros.add(num);
  }
  print("*" * 40); // Imprimir 40 asteriscos
  // Mostrar todos los elementos de una lista
  for (var i = 0; i < numeros.length; i++) {
    print("Elemento #${i + 1}: ${numeros[i]}");
  }
  print("*" * 40); // Imprimir 40 asteriscos
  for (var item in numeros) { // (var = variable y puede ser entero real booleano caracter o cadena) (numeros = en este caso de la posicion 0)
    print("Elemento: $item");
  }

  // vector de multples tipos de datos
  List<dynamic> listaDinamica = [];
  listaDinamica.add(30);
  listaDinamica.add(4.5);
  listaDinamica.add("ADSO");
  listaDinamica.add(true);
  int edad = 22;
  listaDinamica.add(edad);
  List<bool> estados = [true, false, true, true, false];
  listaDinamica.add(estados);
  print(listaDinamica); // [30, 4.5, "ADSO", true, 22, []]
  if (listaDinamica[2] == "ADSO") {
    listaDinamica[3] = false;
  }
  print(listaDinamica); // [30, 4.5,"ADSO", false, 22,[]]
}
