import 'dart:io';
void main(List<String> args) {
  //Solicitar datos al usuario para llenar el vector
  // -> Ingresar 10 números a un vector de enteros
  
  List<int> numeros = []; //Declaración de un vector de tipo int (Entero)

  //Llenar todos los elementos del vector con valores añadidos por el usuario
  for (var i = 0; i < 10; i++) {
    print("Ingrese un número #${i+1}: ");
    var numero = int.parse(stdin.readLineSync()!); //Leer el número ingresado por el usuario
    
    numeros.add(numero); //Agregar el número al vector
  }
  print ("*" * 40); //Imprimir un asterisco para separar los elementos del vector
  // Mostrar todos los elementos del vector
  for (var i = 0; i < numeros.length; i++) {
    print("Elemento #${i+1}: ${numeros[i]}"); // Imprimir cada elemento del vector se usa ${numeros[i]} para mostrar el valor del elemento en la posición i del vector (Según el for)
  }
  print ("*" * 40); //Imprimir un asterisco para separar los elementos del vector
  // Mostrar todos los elementos del vector
  for (var item in numeros) {
    print("Elemento: $item"); // Imprimir cada elemento del vector se usa ${item} para mostrar el valor del elemento en la posición i del vector (Según el for)
  }

  // Vector de multiples tipos de datos
  List<dynamic> listaDinamica = [];
  listaDinamica.add(30);
  listaDinamica.add(4.5);
  listaDinamica.add("ADSO");
  listaDinamica.add(true);
  int edad = 22;
  listaDinamica.add(edad);

  List<bool> estados = [true, false, true, true, false];
  listaDinamica.addAll(estados);
  print(listaDinamica); // [30, 4.5, ADSO, true, 22, true, false, true, true, false]
  if (listaDinamica[2] == "ADSO"){
    listaDinamica[3] = false;
  }
  print(listaDinamica); // [30, 4.5, ADSO, false, 22, true, false, true, true, false]
}