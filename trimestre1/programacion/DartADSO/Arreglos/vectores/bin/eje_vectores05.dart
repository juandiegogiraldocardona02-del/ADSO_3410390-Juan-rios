import 'dart:io';

void main(List<String> args) {

  // Declarar el vector de 10 elementos

  List<int> numeros = [];
  int num;
  
  // Llenar el vector con 10 números ingresados por el usuario

  print("LLENANDO VECTOR");
  for (var i = 0; i < 10; i++) {
    print("Ingrese el elemento #${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    numeros.add(num);
  }
  
  // Mostrar el vector original

  print("Vector original: $numeros");
  
  // Solicitar el número X a buscar

  print("Ingrese el número X a buscar:");
  int x = int.parse(stdin.readLineSync()!);
  
  // Buscar y reemplazar

  int contador = 0;
  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] == x) {
      numeros[i] = 0;  // Reemplazar por 0
      contador++;       // Incrementar contador
    }
  }
  
  // Mostrar resultados
  
  print(" RESULTADOS ");
  print("El número $x apareció $contador veces");
  print("Vector modificado: $numeros");
  print("Total de reemplazos realizados: $contador");
}