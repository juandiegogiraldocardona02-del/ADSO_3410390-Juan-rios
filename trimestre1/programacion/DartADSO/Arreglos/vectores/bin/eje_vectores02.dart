import 'dart:io';

void main(List<String> args) {
  // Solicitar al usuario para llenar el vector
  // -> Ingresar 10 números a un vector de enteros

  List<int> numeros = []; // Declaración vector enteros
  int num;

  // Llenar todos los elementos del Vector con datos del usuario

  for (var i = 0; i < 10; i++) {
    print("Ingrese el elemento #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    // Agregar el número al Vector
    numeros.add(num);
    
  }

  // Vector de multiples tipos de datos
  
  List<dynamic> listaDinamica = [];
  listaDinamica.add (30);
  listaDinamica.add (4.5);
  listaDinamica.add ("ADSO");
  listaDinamica.add (true);
  int edad = 22;
  listaDinamica.add (edad);
  List<bool> estados = [true, false, true, true, false];
  listaDinamica.add(estados);
  print(listaDinamica); // [30, 4.5, "ADSO", true, 22, []]
  if (listaDinamica[2] == "ADSO") {
    listaDinamica[3] = false;
  }
  print(listaDinamica); // [30, 4.5, "ADSO", false, 22, []]
  

}